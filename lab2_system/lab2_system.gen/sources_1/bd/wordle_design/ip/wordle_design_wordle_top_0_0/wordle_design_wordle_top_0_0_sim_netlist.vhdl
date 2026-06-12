-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
-- Date        : Fri Jun 12 12:05:34 2026
-- Host        : ECE-MCU2-21 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/g55wang/lab2_system/lab2_system.gen/sources_1/bd/wordle_design/ip/wordle_design_wordle_top_0_0/wordle_design_wordle_top_0_0_sim_netlist.vhdl
-- Design      : wordle_design_wordle_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity wordle_design_wordle_top_0_0_wordle_fsm is
  port (
    o_ready : out STD_LOGIC;
    rstn_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_state_reg[0]_0\ : out STD_LOGIC;
    \r_guess_count_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_guess_word_reg[9]_0\ : out STD_LOGIC;
    \r_guess_word_reg[15]_0\ : out STD_LOGIC;
    \r_guess_word_reg[1]_0\ : out STD_LOGIC;
    \r_guess_word_reg[31]_0\ : out STD_LOGIC_VECTOR ( 29 downto 0 );
    data_reg : out STD_LOGIC;
    \r_guess_word_reg[14]_0\ : out STD_LOGIC;
    \r_guess_word_reg[31]_1\ : out STD_LOGIC;
    \r_guess_word_reg[7]_0\ : out STD_LOGIC;
    o_result : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    i_guess_id : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rstn : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_result_reg[3][1]_0\ : in STD_LOGIC;
    \r_result_reg[3][1]_1\ : in STD_LOGIC;
    \r_result_reg[2][1]_0\ : in STD_LOGIC;
    \r_result_reg[2][1]_1\ : in STD_LOGIC;
    \r_result_reg[3][1]_2\ : in STD_LOGIC;
    \r_result_reg[3][1]_3\ : in STD_LOGIC;
    \r_result_reg[0][0]_0\ : in STD_LOGIC;
    \r_result_reg[2][1]_2\ : in STD_LOGIC;
    \r_result_reg[0][1]_0\ : in STD_LOGIC;
    DOUTADOUT : in STD_LOGIC_VECTOR ( 18 downto 0 );
    \r_result_reg[2][1]_3\ : in STD_LOGIC;
    \r_result_reg[2][1]_4\ : in STD_LOGIC;
    \r_result_reg[0][1]_1\ : in STD_LOGIC;
    \r_result[1][1]_i_2\ : in STD_LOGIC;
    \r_result[0][1]_i_4\ : in STD_LOGIC;
    i_guess_word : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \r_result_reg[1][1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_result_reg[2][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_result_reg[3][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of wordle_design_wordle_top_0_0_wordle_fsm : entity is "wordle_fsm";
end wordle_design_wordle_top_0_0_wordle_fsm;

architecture STRUCTURE of wordle_design_wordle_top_0_0_wordle_fsm is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data_reg_i_2_n_0 : STD_LOGIC;
  signal data_reg_i_3_n_0 : STD_LOGIC;
  signal data_reg_i_4_n_0 : STD_LOGIC;
  signal \guess_letter[2]\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal r_game_status : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \r_guess_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_guess_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_guess_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \^r_guess_count_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^r_guess_word_reg[14]_0\ : STD_LOGIC;
  signal \^r_guess_word_reg[15]_0\ : STD_LOGIC;
  signal \^r_guess_word_reg[1]_0\ : STD_LOGIC;
  signal \^r_guess_word_reg[31]_0\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \^r_guess_word_reg[9]_0\ : STD_LOGIC;
  signal r_last_guess_id : STD_LOGIC;
  signal \r_last_guess_id_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_last_guess_id_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_last_guess_id_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_last_guess_id_reg_n_0_[3]\ : STD_LOGIC;
  signal r_ready_i_2_n_0 : STD_LOGIC;
  signal r_ready_i_3_n_0 : STD_LOGIC;
  signal r_ready_i_4_n_0 : STD_LOGIC;
  signal r_ready_i_5_n_0 : STD_LOGIC;
  signal r_ready_i_6_n_0 : STD_LOGIC;
  signal \r_result[0][1]_i_1_n_0\ : STD_LOGIC;
  signal \r_result[0][1]_i_2_n_0\ : STD_LOGIC;
  signal \r_result[0][1]_i_3_n_0\ : STD_LOGIC;
  signal \r_result[0][1]_i_5_n_0\ : STD_LOGIC;
  signal \r_result[0][1]_i_6_n_0\ : STD_LOGIC;
  signal \r_result[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \r_result[1][1]_i_11_n_0\ : STD_LOGIC;
  signal \r_result[1][1]_i_13_n_0\ : STD_LOGIC;
  signal \r_result[1][1]_i_8_n_0\ : STD_LOGIC;
  signal \r_result[2][1]_i_10_n_0\ : STD_LOGIC;
  signal \r_result[2][1]_i_1_n_0\ : STD_LOGIC;
  signal \r_result[2][1]_i_23_n_0\ : STD_LOGIC;
  signal \r_result[2][1]_i_24_n_0\ : STD_LOGIC;
  signal \r_result[2][1]_i_29_n_0\ : STD_LOGIC;
  signal \r_result[2][1]_i_2_n_0\ : STD_LOGIC;
  signal \r_result[2][1]_i_3_n_0\ : STD_LOGIC;
  signal \r_result[2][1]_i_6_n_0\ : STD_LOGIC;
  signal \r_result[2][1]_i_7_n_0\ : STD_LOGIC;
  signal \r_result[3][1]_i_11_n_0\ : STD_LOGIC;
  signal \r_result[3][1]_i_12_n_0\ : STD_LOGIC;
  signal \r_result[3][1]_i_13_n_0\ : STD_LOGIC;
  signal \r_result[3][1]_i_14_n_0\ : STD_LOGIC;
  signal \r_result[3][1]_i_15_n_0\ : STD_LOGIC;
  signal \r_result[3][1]_i_16_n_0\ : STD_LOGIC;
  signal \r_result[3][1]_i_17_n_0\ : STD_LOGIC;
  signal \r_result[3][1]_i_18_n_0\ : STD_LOGIC;
  signal \r_result[3][1]_i_1_n_0\ : STD_LOGIC;
  signal \r_result[3][1]_i_2_n_0\ : STD_LOGIC;
  signal \r_result[3][1]_i_5_n_0\ : STD_LOGIC;
  signal \r_result[3][1]_i_6_n_0\ : STD_LOGIC;
  signal \r_result[3][1]_i_7_n_0\ : STD_LOGIC;
  signal \r_result[3][1]_i_8_n_0\ : STD_LOGIC;
  signal \r_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \^rstn_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of data_reg_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_guess_count[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_guess_count[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_guess_count[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of r_ready_i_3 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_result[0][1]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_result[1][0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_result[2][1]_i_19\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_result[2][1]_i_22\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_result[3][1]_i_6\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_result[3][1]_i_8\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_state[0]_i_1\ : label is "soft_lutpair4";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  \r_guess_count_reg[3]_0\(3 downto 0) <= \^r_guess_count_reg[3]_0\(3 downto 0);
  \r_guess_word_reg[14]_0\ <= \^r_guess_word_reg[14]_0\;
  \r_guess_word_reg[15]_0\ <= \^r_guess_word_reg[15]_0\;
  \r_guess_word_reg[1]_0\ <= \^r_guess_word_reg[1]_0\;
  \r_guess_word_reg[31]_0\(29 downto 0) <= \^r_guess_word_reg[31]_0\(29 downto 0);
  \r_guess_word_reg[9]_0\ <= \^r_guess_word_reg[9]_0\;
  rstn_0 <= \^rstn_0\;
data_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111F00001F1F0F0F"
    )
        port map (
      I0 => \r_state_reg_n_0_[0]\,
      I1 => data_reg_i_2_n_0,
      I2 => data_reg_i_3_n_0,
      I3 => data_reg_i_4_n_0,
      I4 => r_ready_i_5_n_0,
      I5 => r_ready_i_4_n_0,
      O => \r_state_reg[0]_0\
    );
data_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => data_reg_i_2_n_0
    );
data_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \^r_guess_count_reg[3]_0\(2),
      I1 => \^r_guess_count_reg[3]_0\(3),
      I2 => \r_state_reg_n_0_[0]\,
      I3 => \^r_guess_count_reg[3]_0\(0),
      I4 => \^r_guess_count_reg[3]_0\(1),
      I5 => data_reg_i_2_n_0,
      O => data_reg_i_3_n_0
    );
data_reg_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \r_last_guess_id_reg_n_0_[2]\,
      I1 => \r_last_guess_id_reg_n_0_[3]\,
      I2 => \r_last_guess_id_reg_n_0_[1]\,
      I3 => \r_last_guess_id_reg_n_0_[0]\,
      O => data_reg_i_4_n_0
    );
\r_game_status[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_ready_i_3_n_0,
      O => r_game_status(1)
    );
\r_game_status_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \r_state_reg_n_0_[0]\,
      D => D(0),
      Q => \^q\(0),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_game_status_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \r_state_reg_n_0_[0]\,
      D => r_game_status(1),
      Q => \^q\(1),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_guess_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^r_guess_count_reg[3]_0\(0),
      O => p_0_in(0)
    );
\r_guess_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^r_guess_count_reg[3]_0\(0),
      I1 => \^r_guess_count_reg[3]_0\(1),
      O => \r_guess_count[1]_i_1_n_0\
    );
\r_guess_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^r_guess_count_reg[3]_0\(2),
      I1 => \^r_guess_count_reg[3]_0\(1),
      I2 => \^r_guess_count_reg[3]_0\(0),
      O => \r_guess_count[2]_i_1_n_0\
    );
\r_guess_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^r_guess_count_reg[3]_0\(3),
      I1 => \^r_guess_count_reg[3]_0\(2),
      I2 => \^r_guess_count_reg[3]_0\(0),
      I3 => \^r_guess_count_reg[3]_0\(1),
      O => \r_guess_count[3]_i_1_n_0\
    );
\r_guess_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \r_state_reg_n_0_[0]\,
      D => p_0_in(0),
      Q => \^r_guess_count_reg[3]_0\(0),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_guess_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \r_state_reg_n_0_[0]\,
      D => \r_guess_count[1]_i_1_n_0\,
      Q => \^r_guess_count_reg[3]_0\(1),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_guess_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \r_state_reg_n_0_[0]\,
      D => \r_guess_count[2]_i_1_n_0\,
      Q => \^r_guess_count_reg[3]_0\(2),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_guess_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \r_state_reg_n_0_[0]\,
      D => \r_guess_count[3]_i_1_n_0\,
      Q => \^r_guess_count_reg[3]_0\(3),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_guess_word[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => r_ready_i_4_n_0,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \r_state_reg_n_0_[0]\,
      O => r_last_guess_id
    );
\r_guess_word_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_last_guess_id,
      D => i_guess_word(0),
      Q => \^r_guess_word_reg[31]_0\(0),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_guess_word_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_last_guess_id,
      D => i_guess_word(10),
      Q => \^r_guess_word_reg[31]_0\(10),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_guess_word_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_last_guess_id,
      D => i_guess_word(11),
      Q => \^r_guess_word_reg[31]_0\(11),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_guess_word_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_last_guess_id,
      D => i_guess_word(12),
      Q => \^r_guess_word_reg[31]_0\(12),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_guess_word_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_last_guess_id,
      D => i_guess_word(13),
      Q => \^r_guess_word_reg[31]_0\(13),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_guess_word_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_last_guess_id,
      D => i_guess_word(14),
      Q => \guess_letter[2]\(6),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_guess_word_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_last_guess_id,
      D => i_guess_word(15),
      Q => \guess_letter[2]\(7),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_guess_word_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_last_guess_id,
      D => i_guess_word(16),
      Q => \^r_guess_word_reg[31]_0\(14),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_guess_word_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_last_guess_id,
      D => i_guess_word(17),
      Q => \^r_guess_word_reg[31]_0\(15),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_guess_word_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_last_guess_id,
      D => i_guess_word(18),
      Q => \^r_guess_word_reg[31]_0\(16),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_guess_word_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_last_guess_id,
      D => i_guess_word(19),
      Q => \^r_guess_word_reg[31]_0\(17),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_guess_word_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_last_guess_id,
      D => i_guess_word(1),
      Q => \^r_guess_word_reg[31]_0\(1),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_guess_word_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_last_guess_id,
      D => i_guess_word(20),
      Q => \^r_guess_word_reg[31]_0\(18),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_guess_word_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_last_guess_id,
      D => i_guess_word(21),
      Q => \^r_guess_word_reg[31]_0\(19),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_guess_word_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_last_guess_id,
      D => i_guess_word(22),
      Q => \^r_guess_word_reg[31]_0\(20),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_guess_word_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_last_guess_id,
      D => i_guess_word(23),
      Q => \^r_guess_word_reg[31]_0\(21),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_guess_word_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_last_guess_id,
      D => i_guess_word(24),
      Q => \^r_guess_word_reg[31]_0\(22),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_guess_word_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_last_guess_id,
      D => i_guess_word(25),
      Q => \^r_guess_word_reg[31]_0\(23),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_guess_word_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_last_guess_id,
      D => i_guess_word(26),
      Q => \^r_guess_word_reg[31]_0\(24),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_guess_word_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_last_guess_id,
      D => i_guess_word(27),
      Q => \^r_guess_word_reg[31]_0\(25),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_guess_word_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_last_guess_id,
      D => i_guess_word(28),
      Q => \^r_guess_word_reg[31]_0\(26),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_guess_word_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_last_guess_id,
      D => i_guess_word(29),
      Q => \^r_guess_word_reg[31]_0\(27),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_guess_word_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_last_guess_id,
      D => i_guess_word(2),
      Q => \^r_guess_word_reg[31]_0\(2),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_guess_word_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_last_guess_id,
      D => i_guess_word(30),
      Q => \^r_guess_word_reg[31]_0\(28),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_guess_word_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_last_guess_id,
      D => i_guess_word(31),
      Q => \^r_guess_word_reg[31]_0\(29),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_guess_word_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_last_guess_id,
      D => i_guess_word(3),
      Q => \^r_guess_word_reg[31]_0\(3),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_guess_word_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_last_guess_id,
      D => i_guess_word(4),
      Q => \^r_guess_word_reg[31]_0\(4),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_guess_word_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_last_guess_id,
      D => i_guess_word(5),
      Q => \^r_guess_word_reg[31]_0\(5),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_guess_word_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_last_guess_id,
      D => i_guess_word(6),
      Q => \^r_guess_word_reg[31]_0\(6),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_guess_word_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_last_guess_id,
      D => i_guess_word(7),
      Q => \^r_guess_word_reg[31]_0\(7),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_guess_word_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_last_guess_id,
      D => i_guess_word(8),
      Q => \^r_guess_word_reg[31]_0\(8),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_guess_word_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_last_guess_id,
      D => i_guess_word(9),
      Q => \^r_guess_word_reg[31]_0\(9),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_last_guess_id_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_last_guess_id,
      D => i_guess_id(0),
      Q => \r_last_guess_id_reg_n_0_[0]\,
      R => \r_result[3][1]_i_1_n_0\
    );
\r_last_guess_id_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_last_guess_id,
      D => i_guess_id(1),
      Q => \r_last_guess_id_reg_n_0_[1]\,
      R => \r_result[3][1]_i_1_n_0\
    );
\r_last_guess_id_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_last_guess_id,
      D => i_guess_id(2),
      Q => \r_last_guess_id_reg_n_0_[2]\,
      R => \r_result[3][1]_i_1_n_0\
    );
\r_last_guess_id_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_last_guess_id,
      D => i_guess_id(3),
      Q => \r_last_guess_id_reg_n_0_[3]\,
      R => \r_result[3][1]_i_1_n_0\
    );
r_ready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rstn,
      O => \^rstn_0\
    );
r_ready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => r_ready_i_3_n_0,
      I1 => \r_state_reg_n_0_[0]\,
      I2 => r_ready_i_4_n_0,
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => r_ready_i_5_n_0,
      O => r_ready_i_2_n_0
    );
r_ready_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000155"
    )
        port map (
      I0 => D(0),
      I1 => \^r_guess_count_reg[3]_0\(1),
      I2 => \^r_guess_count_reg[3]_0\(0),
      I3 => \^r_guess_count_reg[3]_0\(2),
      I4 => \^r_guess_count_reg[3]_0\(3),
      O => r_ready_i_3_n_0
    );
r_ready_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => r_ready_i_6_n_0,
      I1 => \r_last_guess_id_reg_n_0_[3]\,
      I2 => i_guess_id(3),
      O => r_ready_i_4_n_0
    );
r_ready_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => i_guess_id(2),
      I1 => i_guess_id(0),
      I2 => i_guess_id(3),
      I3 => i_guess_id(1),
      O => r_ready_i_5_n_0
    );
r_ready_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB2B0000FFFFBB2B"
    )
        port map (
      I0 => \r_last_guess_id_reg_n_0_[1]\,
      I1 => i_guess_id(1),
      I2 => i_guess_id(0),
      I3 => \r_last_guess_id_reg_n_0_[0]\,
      I4 => \r_last_guess_id_reg_n_0_[2]\,
      I5 => i_guess_id(2),
      O => r_ready_i_6_n_0
    );
r_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => r_ready_i_2_n_0,
      Q => o_ready,
      R => \^rstn_0\
    );
\r_result[0][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000010FF"
    )
        port map (
      I0 => \r_result[0][1]_i_2_n_0\,
      I1 => \r_result[0][1]_i_3_n_0\,
      I2 => \^r_guess_word_reg[15]_0\,
      I3 => \r_result_reg[0][1]_0\,
      I4 => \r_result_reg[0][0]_0\,
      O => \r_result[0][1]_i_1_n_0\
    );
\r_result[0][1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^r_guess_word_reg[31]_0\(6),
      I1 => DOUTADOUT(10),
      I2 => \^r_guess_word_reg[31]_0\(7),
      I3 => DOUTADOUT(11),
      O => \r_result[0][1]_i_2_n_0\
    );
\r_result[0][1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBEFFFFBE"
    )
        port map (
      I0 => \r_result[0][1]_i_5_n_0\,
      I1 => \^r_guess_word_reg[31]_0\(5),
      I2 => DOUTADOUT(10),
      I3 => \^r_guess_word_reg[31]_0\(3),
      I4 => DOUTADOUT(8),
      I5 => \r_result[0][1]_i_6_n_0\,
      O => \r_result[0][1]_i_3_n_0\
    );
\r_result[0][1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^r_guess_word_reg[31]_0\(4),
      I1 => DOUTADOUT(9),
      I2 => \^r_guess_word_reg[31]_0\(2),
      I3 => DOUTADOUT(7),
      O => \r_result[0][1]_i_5_n_0\
    );
\r_result[0][1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^r_guess_word_reg[31]_0\(1),
      I1 => DOUTADOUT(6),
      I2 => \^r_guess_word_reg[31]_0\(0),
      I3 => DOUTADOUT(5),
      O => \r_result[0][1]_i_6_n_0\
    );
\r_result[1][0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^r_guess_word_reg[15]_0\,
      O => \r_result[1][0]_i_1_n_0\
    );
\r_result[1][1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^r_guess_word_reg[31]_0\(9),
      I1 => DOUTADOUT(6),
      I2 => \^r_guess_word_reg[31]_0\(10),
      I3 => DOUTADOUT(7),
      I4 => DOUTADOUT(5),
      I5 => \^r_guess_word_reg[31]_0\(8),
      O => \r_result[1][1]_i_11_n_0\
    );
\r_result[1][1]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^r_guess_word_reg[31]_0\(12),
      I1 => DOUTADOUT(16),
      I2 => \^r_guess_word_reg[31]_0\(10),
      I3 => DOUTADOUT(14),
      O => \r_result[1][1]_i_13_n_0\
    );
\r_result[1][1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBEFFFFBE"
    )
        port map (
      I0 => \^r_guess_word_reg[14]_0\,
      I1 => \^r_guess_word_reg[31]_0\(9),
      I2 => DOUTADOUT(13),
      I3 => \^r_guess_word_reg[31]_0\(8),
      I4 => DOUTADOUT(12),
      I5 => \r_result[1][1]_i_8_n_0\,
      O => \^r_guess_word_reg[9]_0\
    );
\r_result[1][1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF6FF6"
    )
        port map (
      I0 => \guess_letter[2]\(7),
      I1 => DOUTADOUT(11),
      I2 => DOUTADOUT(10),
      I3 => \guess_letter[2]\(6),
      I4 => \r_result[1][1]_i_11_n_0\,
      I5 => \r_result_reg[0][1]_1\,
      O => \^r_guess_word_reg[15]_0\
    );
\r_result[1][1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \guess_letter[2]\(6),
      I1 => DOUTADOUT(10),
      I2 => DOUTADOUT(11),
      I3 => \guess_letter[2]\(7),
      O => \^r_guess_word_reg[14]_0\
    );
\r_result[1][1]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6FF6"
    )
        port map (
      I0 => DOUTADOUT(15),
      I1 => \^r_guess_word_reg[31]_0\(11),
      I2 => \^r_guess_word_reg[31]_0\(13),
      I3 => DOUTADOUT(10),
      I4 => \r_result[1][1]_i_13_n_0\,
      O => \r_result[1][1]_i_8_n_0\
    );
\r_result[2][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F200F200FF00F200"
    )
        port map (
      I0 => \r_result[2][1]_i_2_n_0\,
      I1 => \r_result[2][1]_i_3_n_0\,
      I2 => \r_result_reg[2][1]_1\,
      I3 => \r_result_reg[2][1]_0\,
      I4 => \r_result_reg[3][1]_1\,
      I5 => \r_result[2][1]_i_6_n_0\,
      O => \r_result[2][1]_i_1_n_0\
    );
\r_result[2][1]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^r_guess_word_reg[31]_0\(20),
      I1 => DOUTADOUT(10),
      I2 => \^r_guess_word_reg[31]_0\(21),
      I3 => DOUTADOUT(11),
      O => \r_result[2][1]_i_10_n_0\
    );
\r_result[2][1]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFE"
    )
        port map (
      I0 => \r_result[1][1]_i_2\,
      I1 => \r_result[2][1]_i_29_n_0\,
      I2 => DOUTADOUT(10),
      I3 => \guess_letter[2]\(6),
      I4 => \guess_letter[2]\(7),
      O => data_reg
    );
\r_result[2][1]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BE"
    )
        port map (
      I0 => \^r_guess_word_reg[31]_0\(7),
      I1 => \^r_guess_word_reg[31]_0\(6),
      I2 => DOUTADOUT(10),
      O => \r_guess_word_reg[7]_0\
    );
\r_result[2][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0F0F0F0E0F0E0F0"
    )
        port map (
      I0 => \r_result[2][1]_i_7_n_0\,
      I1 => \r_result_reg[0][0]_0\,
      I2 => \^r_guess_word_reg[15]_0\,
      I3 => \r_result_reg[2][1]_2\,
      I4 => \^r_guess_word_reg[1]_0\,
      I5 => \r_result_reg[2][1]_0\,
      O => \r_result[2][1]_i_2_n_0\
    );
\r_result[2][1]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BE"
    )
        port map (
      I0 => \^r_guess_word_reg[31]_0\(29),
      I1 => \^r_guess_word_reg[31]_0\(28),
      I2 => DOUTADOUT(10),
      O => \r_guess_word_reg[31]_1\
    );
\r_result[2][1]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^r_guess_word_reg[31]_0\(3),
      I1 => DOUTADOUT(15),
      I2 => \^r_guess_word_reg[31]_0\(0),
      I3 => DOUTADOUT(12),
      O => \r_result[2][1]_i_23_n_0\
    );
\r_result[2][1]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^r_guess_word_reg[31]_0\(4),
      I1 => DOUTADOUT(16),
      I2 => \^r_guess_word_reg[31]_0\(2),
      I3 => DOUTADOUT(14),
      O => \r_result[2][1]_i_24_n_0\
    );
\r_result[2][1]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^r_guess_word_reg[31]_0\(12),
      I1 => DOUTADOUT(18),
      I2 => \^r_guess_word_reg[31]_0\(13),
      I3 => DOUTADOUT(10),
      I4 => DOUTADOUT(17),
      I5 => \^r_guess_word_reg[31]_0\(11),
      O => \r_result[2][1]_i_29_n_0\
    );
\r_result[2][1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBEFFFFBE"
    )
        port map (
      I0 => \r_result[2][1]_i_10_n_0\,
      I1 => DOUTADOUT(5),
      I2 => \^r_guess_word_reg[31]_0\(14),
      I3 => DOUTADOUT(6),
      I4 => \^r_guess_word_reg[31]_0\(15),
      I5 => \r_result_reg[2][1]_3\,
      O => \r_result[2][1]_i_3_n_0\
    );
\r_result[2][1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBEFFFFBE"
    )
        port map (
      I0 => \r_result[2][1]_i_10_n_0\,
      I1 => DOUTADOUT(0),
      I2 => \^r_guess_word_reg[31]_0\(14),
      I3 => DOUTADOUT(1),
      I4 => \^r_guess_word_reg[31]_0\(15),
      I5 => \r_result_reg[2][1]_4\,
      O => \r_result[2][1]_i_6_n_0\
    );
\r_result[2][1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFE"
    )
        port map (
      I0 => \r_result[0][1]_i_2_n_0\,
      I1 => \r_result[0][1]_i_6_n_0\,
      I2 => DOUTADOUT(8),
      I3 => \^r_guess_word_reg[31]_0\(3),
      I4 => \r_result[0][1]_i_4\,
      I5 => \r_result[0][1]_i_5_n_0\,
      O => \r_result[2][1]_i_7_n_0\
    );
\r_result[2][1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFE"
    )
        port map (
      I0 => \r_result[2][1]_i_23_n_0\,
      I1 => \r_result[0][1]_i_4\,
      I2 => \^r_guess_word_reg[31]_0\(1),
      I3 => DOUTADOUT(13),
      I4 => \r_result[2][1]_i_24_n_0\,
      I5 => \r_result[0][1]_i_2_n_0\,
      O => \^r_guess_word_reg[1]_0\
    );
\r_result[3][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5400FFFF"
    )
        port map (
      I0 => \r_state_reg_n_0_[0]\,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => r_ready_i_5_n_0,
      I4 => rstn,
      O => \r_result[3][1]_i_1_n_0\
    );
\r_result[3][1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBEFFFFBE"
    )
        port map (
      I0 => \r_result[3][1]_i_6_n_0\,
      I1 => \^r_guess_word_reg[31]_0\(22),
      I2 => DOUTADOUT(0),
      I3 => \^r_guess_word_reg[31]_0\(23),
      I4 => DOUTADOUT(1),
      I5 => \r_result[3][1]_i_15_n_0\,
      O => \r_result[3][1]_i_11_n_0\
    );
\r_result[3][1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^r_guess_word_reg[31]_0\(25),
      I1 => DOUTADOUT(8),
      I2 => DOUTADOUT(9),
      I3 => \^r_guess_word_reg[31]_0\(26),
      I4 => DOUTADOUT(10),
      I5 => \^r_guess_word_reg[31]_0\(27),
      O => \r_result[3][1]_i_12_n_0\
    );
\r_result[3][1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^r_guess_word_reg[31]_0\(22),
      I1 => DOUTADOUT(5),
      I2 => DOUTADOUT(7),
      I3 => \^r_guess_word_reg[31]_0\(24),
      I4 => DOUTADOUT(6),
      I5 => \^r_guess_word_reg[31]_0\(23),
      O => \r_result[3][1]_i_13_n_0\
    );
\r_result[3][1]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF6FF6"
    )
        port map (
      I0 => DOUTADOUT(13),
      I1 => \^r_guess_word_reg[31]_0\(23),
      I2 => DOUTADOUT(14),
      I3 => \^r_guess_word_reg[31]_0\(24),
      I4 => \r_result[3][1]_i_16_n_0\,
      I5 => \r_result[3][1]_i_17_n_0\,
      O => \r_result[3][1]_i_14_n_0\
    );
\r_result[3][1]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6FF6"
    )
        port map (
      I0 => DOUTADOUT(3),
      I1 => \^r_guess_word_reg[31]_0\(25),
      I2 => DOUTADOUT(10),
      I3 => \^r_guess_word_reg[31]_0\(27),
      I4 => \r_result[3][1]_i_18_n_0\,
      O => \r_result[3][1]_i_15_n_0\
    );
\r_result[3][1]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^r_guess_word_reg[31]_0\(25),
      I1 => DOUTADOUT(15),
      I2 => \^r_guess_word_reg[31]_0\(22),
      I3 => DOUTADOUT(12),
      O => \r_result[3][1]_i_16_n_0\
    );
\r_result[3][1]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^r_guess_word_reg[31]_0\(27),
      I1 => DOUTADOUT(10),
      I2 => \^r_guess_word_reg[31]_0\(26),
      I3 => DOUTADOUT(16),
      O => \r_result[3][1]_i_17_n_0\
    );
\r_result[3][1]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^r_guess_word_reg[31]_0\(26),
      I1 => DOUTADOUT(4),
      I2 => \^r_guess_word_reg[31]_0\(24),
      I3 => DOUTADOUT(2),
      O => \r_result[3][1]_i_18_n_0\
    );
\r_result[3][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AA080808AA08AA"
    )
        port map (
      I0 => \r_result_reg[3][1]_0\,
      I1 => \r_result_reg[3][1]_1\,
      I2 => \r_result[3][1]_i_5_n_0\,
      I3 => \r_result[3][1]_i_6_n_0\,
      I4 => \r_result[3][1]_i_7_n_0\,
      I5 => \r_result[3][1]_i_8_n_0\,
      O => \r_result[3][1]_i_2_n_0\
    );
\r_result[3][1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAABABAAABA"
    )
        port map (
      I0 => \r_result[3][1]_i_11_n_0\,
      I1 => \r_result[2][1]_i_6_n_0\,
      I2 => \r_result_reg[2][1]_0\,
      I3 => \r_result[2][1]_i_2_n_0\,
      I4 => \r_result[2][1]_i_3_n_0\,
      I5 => \r_result_reg[2][1]_1\,
      O => \r_result[3][1]_i_5_n_0\
    );
\r_result[3][1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^r_guess_word_reg[31]_0\(28),
      I1 => DOUTADOUT(10),
      I2 => \^r_guess_word_reg[31]_0\(29),
      I3 => DOUTADOUT(11),
      O => \r_result[3][1]_i_6_n_0\
    );
\r_result[3][1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AA8A"
    )
        port map (
      I0 => \r_result[2][1]_i_2_n_0\,
      I1 => \r_result[2][1]_i_3_n_0\,
      I2 => \r_result_reg[2][1]_0\,
      I3 => \r_result_reg[2][1]_1\,
      I4 => \r_result[3][1]_i_12_n_0\,
      I5 => \r_result[3][1]_i_13_n_0\,
      O => \r_result[3][1]_i_7_n_0\
    );
\r_result[3][1]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF10"
    )
        port map (
      I0 => \^r_guess_word_reg[9]_0\,
      I1 => \r_result_reg[3][1]_2\,
      I2 => \^r_guess_word_reg[15]_0\,
      I3 => \r_result[3][1]_i_14_n_0\,
      I4 => \r_result_reg[3][1]_3\,
      O => \r_result[3][1]_i_8_n_0\
    );
\r_result_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \r_state_reg_n_0_[0]\,
      D => \r_result_reg[0][0]_0\,
      Q => o_result(0),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_result_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \r_state_reg_n_0_[0]\,
      D => \r_result[0][1]_i_1_n_0\,
      Q => o_result(1),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_result_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \r_state_reg_n_0_[0]\,
      D => \r_result[1][0]_i_1_n_0\,
      Q => o_result(2),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_result_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \r_state_reg_n_0_[0]\,
      D => \r_result_reg[1][1]_0\(0),
      Q => o_result(3),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_result_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \r_state_reg_n_0_[0]\,
      D => \r_result_reg[2][0]_0\(0),
      Q => o_result(4),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_result_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \r_state_reg_n_0_[0]\,
      D => \r_result[2][1]_i_1_n_0\,
      Q => o_result(5),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_result_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \r_state_reg_n_0_[0]\,
      D => \r_result_reg[3][0]_0\(0),
      Q => o_result(6),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_result_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \r_state_reg_n_0_[0]\,
      D => \r_result[3][1]_i_2_n_0\,
      Q => o_result(7),
      R => \r_result[3][1]_i_1_n_0\
    );
\r_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \r_state_reg_n_0_[0]\,
      I1 => r_ready_i_4_n_0,
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => \r_state[0]_i_1_n_0\
    );
\r_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_state[0]_i_1_n_0\,
      Q => \r_state_reg_n_0_[0]\,
      R => \^rstn_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity wordle_design_wordle_top_0_0_wordle_rom is
  port (
    DOUTADOUT : out STD_LOGIC_VECTOR ( 18 downto 0 );
    data_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_reg_1 : out STD_LOGIC;
    data_reg_2 : out STD_LOGIC;
    data_reg_3 : out STD_LOGIC;
    data_reg_4 : out STD_LOGIC;
    data_reg_5 : out STD_LOGIC;
    data_reg_6 : out STD_LOGIC;
    data_reg_7 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_guess_word_reg[19]\ : out STD_LOGIC;
    data_reg_8 : out STD_LOGIC;
    \r_guess_word_reg[19]_0\ : out STD_LOGIC;
    data_reg_9 : out STD_LOGIC;
    data_reg_10 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_guess_word_reg[7]\ : out STD_LOGIC;
    data_reg_11 : out STD_LOGIC;
    data_reg_12 : out STD_LOGIC;
    \r_guess_word_reg[9]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    data_reg_13 : in STD_LOGIC;
    data_reg_14 : in STD_LOGIC;
    i_ref_word_idx : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \r_result_reg[1][1]\ : in STD_LOGIC;
    \r_result_reg[1][1]_0\ : in STD_LOGIC;
    \r_game_status_reg[0]\ : in STD_LOGIC;
    \r_game_status_reg[0]_0\ : in STD_LOGIC_VECTOR ( 29 downto 0 );
    \r_result_reg[2][1]\ : in STD_LOGIC;
    \r_result_reg[1][1]_1\ : in STD_LOGIC;
    \r_result[2][1]_i_2\ : in STD_LOGIC;
    \r_result[2][1]_i_2_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of wordle_design_wordle_top_0_0_wordle_rom : entity is "wordle_rom";
end wordle_design_wordle_top_0_0_wordle_rom;

architecture STRUCTURE of wordle_design_wordle_top_0_0_wordle_rom is
  signal \^doutadout\ : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \^data_reg_1\ : STD_LOGIC;
  signal \^data_reg_3\ : STD_LOGIC;
  signal \^data_reg_4\ : STD_LOGIC;
  signal \^data_reg_5\ : STD_LOGIC;
  signal \^data_reg_6\ : STD_LOGIC;
  signal \r_result[0][0]_i_2_n_0\ : STD_LOGIC;
  signal \r_result[0][0]_i_3_n_0\ : STD_LOGIC;
  signal \r_result[1][1]_i_10_n_0\ : STD_LOGIC;
  signal \r_result[1][1]_i_5_n_0\ : STD_LOGIC;
  signal \r_result[1][1]_i_9_n_0\ : STD_LOGIC;
  signal \r_result[2][1]_i_12_n_0\ : STD_LOGIC;
  signal \r_result[2][1]_i_13_n_0\ : STD_LOGIC;
  signal \r_result[2][1]_i_15_n_0\ : STD_LOGIC;
  signal \r_result[2][1]_i_16_n_0\ : STD_LOGIC;
  signal \r_result[2][1]_i_20_n_0\ : STD_LOGIC;
  signal \r_result[2][1]_i_21_n_0\ : STD_LOGIC;
  signal \r_result[2][1]_i_25_n_0\ : STD_LOGIC;
  signal \r_result[2][1]_i_26_n_0\ : STD_LOGIC;
  signal \r_result[2][1]_i_27_n_0\ : STD_LOGIC;
  signal \r_result[2][1]_i_30_n_0\ : STD_LOGIC;
  signal \r_result[3][1]_i_10_n_0\ : STD_LOGIC;
  signal \r_result[3][1]_i_9_n_0\ : STD_LOGIC;
  signal \ref_letter[0]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_data_reg_CASOUTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_data_reg_CASOUTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_data_reg_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_data_reg_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_data_reg_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_data_reg_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_data_reg_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_data_reg_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_data_reg_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 22 );
  signal NLW_data_reg_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_data_reg_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_data_reg_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_data_reg_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_data_reg_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of data_reg : label is "p0_d22";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of data_reg : label is "";
  attribute RDADDR_COLLISION_HWCONFIG : string;
  attribute RDADDR_COLLISION_HWCONFIG of data_reg : label is "PERFORMANCE";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of data_reg : label is 22528;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of data_reg : label is "wordle_top/rom_inst/data_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of data_reg : label is "NONE";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of data_reg : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of data_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of data_reg : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of data_reg : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of data_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of data_reg : label is 21;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_game_status[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_result[0][1]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_result[1][1]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_result[3][0]_i_1\ : label is "soft_lutpair7";
begin
  DOUTADOUT(18 downto 0) <= \^doutadout\(18 downto 0);
  data_reg_1 <= \^data_reg_1\;
  data_reg_3 <= \^data_reg_3\;
  data_reg_4 <= \^data_reg_4\;
  data_reg_5 <= \^data_reg_5\;
  data_reg_6 <= \^data_reg_6\;
data_reg: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 1,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"002895940034F5CB002704B70027742D0006F64E0006C5F9002016450026B52D",
      INIT_01 => X"0020152E002E96C5002815CB0027443200101650002695C700101670001C546B",
      INIT_02 => X"000415CB001016AC001A95A5002744220018F5F00018542E0016564E0026C534",
      INIT_03 => X"0018F665000CF5EC0026C5F4000D558C0014558C002654AB0018F58C000895C5",
      INIT_04 => X"002125E4002895D4002755C70026F6540006C4300010F6C50024F432002054B0",
      INIT_05 => X"00109485000895C7000D564C0010F4380004164E002755CB0028564D000C5685",
      INIT_06 => X"00045647002817090020564B001015940026C4B7001016C5000D2439000724B7",
      INIT_07 => X"001954450006C6A5001AF6C5000D24B40021569400277422001325EE00061665",
      INIT_08 => X"0026343200245430000EF6EE001156680026F5840027752D0020164B00065485",
      INIT_09 => X"00285674002EF6C50004F673000415C4002654B000274439001AF605000E158C",
      INIT_0A => X"0004958B001F56740006F674001A16AC000E95B0001B54C600285432000E1668",
      INIT_0B => X"0019564B00201532001A16850006F668000415650027553400292430000C5432",
      INIT_0C => X"0026B4B70028F6050018F6050006F565002C55D4002EF64B000EC6A70019546B",
      INIT_0D => X"002E84B40008966B000685240024F5ED0020158D0014F565000816A20004C5E3",
      INIT_0E => X"000CF5840028F5840010543000141485002956460020146500255668002684A4",
      INIT_0F => X"00055668000E1642002C94B7000C158C002355340004F5C5000D56650008F693",
      INIT_10 => X"0010958C0024F58C000615C5003216F000049565000A350F000D24270004C4A4",
      INIT_11 => X"000F25300006F6440032F6EC000CC5E7002654A400092427001654AE00068437",
      INIT_12 => X"0010F605002E54A40026342E002815A500089668002815830006F52C0020F665",
      INIT_13 => X"00312439002454AB0026C43900081685000E16050012E4680006F5EC0005558C",
      INIT_14 => X"000C54AC000E16EB0004F5A20026342D0014F52E000CF42D0006C4B70026F430",
      INIT_15 => X"002496650032542E002655D4001815A20010164D002E5594000454B0002EF64D",
      INIT_16 => X"00081654002684A4000CF6EC00299605000854AD0026F58F0027042D0006158C",
      INIT_17 => X"000815C7001A9673002775F4002704A40026F42B0026E6A2001816680029252D",
      INIT_18 => X"000E95840011558B002454A6001895C5000EE4370014F5940011558C0004F594",
      INIT_19 => X"0018F5ED002695CB000C95CB0024F5E6002E958C002925F4000F252400055673",
      INIT_1A => X"000B64AE0024F6C50008F46B0006F48500109645001A54B40029546B00052427",
      INIT_1B => X"000AE6D90010F5CB001017450024542D002054B2000816680014152C000454A6",
      INIT_1C => X"00245424000924B70010558400109673002E96450004164B000E94450006F5A2",
      INIT_1D => X"000E152E000D2430001C5432000CC439000896C5002955C5000C558C002E853A",
      INIT_1E => X"002156680010146B002895C7002774340004C422000D5673000616680018152E",
      INIT_1F => X"000614E50018F5C70026853000045674002855D4000E15C70028160500277439",
      INIT_20 => X"001056EE000E55840020C5F4003495C7002E16AC0006F5F0002615240026B530",
      INIT_21 => X"000F252E001016740028F52C001955C70010152C0020C5F7001CF66500292530",
      INIT_22 => X"000C16EE000A44E50026F46B002C9661000B85340026B524000D569A00270439",
      INIT_23 => X"0020C5E4002706A400072422000C1465002C552E001A559400155565001D5565",
      INIT_24 => X"0004158C0020946B000B4468001495D80008546B0026342E0008942C002016EE",
      INIT_25 => X"00068530001015C70026C52D002EF64400261585000454AE001A15650008164E",
      INIT_26 => X"002C568F0028F6B2001054AC000854A400345674000D25340028152C0028166B",
      INIT_27 => X"000F26A2000454320021564C00069685002895A5001855C4001816C5000C1745",
      INIT_28 => X"0010164B002855C40004C6A5001F04AE0024F5B00004152C0008F7450028542D",
      INIT_29 => X"0005546B0004C6A20005252D00241745002746AE002415CB0011566B000CF64B",
      INIT_2A => X"000CF42C000C152C000CF5C4000CC4B80010F5EB0004558C0014175A0006F64B",
      INIT_2B => X"0006F5EB00255674002B24E5002E55840004F5F400119605000615D4001654B0",
      INIT_2C => X"0024F6B40028158B000CC6A20026542C000EF5E6001015C40020F67400289485",
      INIT_2D => X"00289585001695CB002095850018956500041485001416050024F5F400269685",
      INIT_2E => X"0034F5ED0019558C0026F5850005575A001245850027042E00105434000C9674",
      INIT_2F => X"0032164E002E1644002E14E50026E530000CC4A5001854260026948500201673",
      INIT_30 => X"002745F0000224B4002686B4002CF685001AF46B000F24220004542E0026F432",
      INIT_31 => X"00215652002EF6450028F5EB000C958D0004958C00041668002E158B0020C42E",
      INIT_32 => X"0016958C000855AF002775270026C5F7000D54AC000855D40010F584000686A7",
      INIT_33 => X"00089465002744B00004F5C4003255900010164500061654000F558C0020C434",
      INIT_34 => X"002455D4000F5674000926AD00109565002E96740020542C000C14850026146B",
      INIT_35 => X"0010F5F0000E16850026E430002886A4002E8530001ED4AE0020F5EC000E16F0",
      INIT_36 => X"0020C6A70008F585001E24B9000226B4000894B40006F5CB000EF6450007558C",
      INIT_37 => X"0004164200041644000CF6440026C5E70009558C002155B0002E54B0002694EE",
      INIT_38 => X"000EC6A5002776AD000C9645002016C50010F5F40028F5EC0002E685002E152C",
      INIT_39 => X"0007242D000954AC0034564F000E9644000E15340016E4B7000EF586002925E4",
      INIT_3A => X"002CF52400181465000D55CB002F2534000235050006F52E000415C7002054AB",
      INIT_3B => X"002E542E0007564C0006F5A500061674002E14D40024152E0018F4240010F46B",
      INIT_3C => X"00189594000496440006C5F400045424000615B0001155B00014F668002154C6",
      INIT_3D => X"002EF5E60028946B001815A5002746A4002E15D40010542C0016E4300026842D",
      INIT_3E => X"002884370026C5F00004969400285714002C9485000524A40028F58C0018F5EB",
      INIT_3F => X"002495F40029242D000CC4B700270432000816EE000656450006F619003216B0",
      INIT_40 => X"0028F5C500245674000555820018146B0004F5EB001B56740009546B00255585",
      INIT_41 => X"002C54B2001ED53400181745000555B0002E55C4002EF64E0018F6B20026152C",
      INIT_42 => X"002454AC0020F5650008542C000A164E000556590004F64E0026558C000854D9",
      INIT_43 => X"0010558D000C9585002455C4001C152C000D55C400052439000855D9000CC6B8",
      INIT_44 => X"000725F00028F5F4001A94C6002015D4000C56730004146B000CC437000C1645",
      INIT_45 => X"002685EF001955B0000CF6AC000D55A500101585002E8430002E95CB0010F674",
      INIT_46 => X"002685E50026F6EE002705F40009253000249485001016680020546B000E1670",
      INIT_47 => X"001496C50020F6B2002636A40014146B0026C6AD00295445001895CB0020C439",
      INIT_48 => X"0028F645000955CB000F25F7001896C5000D24A5002694D4001A95D4002694E8",
      INIT_49 => X"001C5674001816740006F6EC002125F000261594000817450018F5F40028558C",
      INIT_4A => X"0004F5CB00269745000C156500105590002E842D0004C4B7000754C600061565",
      INIT_4B => X"0010F64E00105424000925F0002C552C001A5673000F5590000556740028F64E",
      INIT_4C => X"0004F5ED0018542B0016E534002924AB00274427000EF424000EF5C5000C1674",
      INIT_4D => X"0029752E000725220006C530000F2439001D55A2002C567400169673000CC427",
      INIT_4E => X"000AD53400261685002E558C000725F70008F4C60026C430000F25340004F584",
      INIT_4F => X"0006C42D002854AD002685F00002C5340004168500041468001056440004F485",
      INIT_50 => X"002656EE0004F499000615A50018F674000EC6B40004542D0021558C000CC430",
      INIT_51 => X"00092437000495C400181644001656140026C6A700269645002704340016E5F7",
      INIT_52 => X"003216EE002E95C50004964C00185424001095D40032558C0018F6C5001AF42E",
      INIT_53 => X"001C54A4000E15A50026E427002616EE002E16680014564B0026C42D000CC5F7",
      INIT_54 => X"001A95C40027052E0018F4D4000616C5002975340023553A0006F42C00249465",
      INIT_55 => X"002616C5000524B700245599002414E5002155900004C4A1001A958B0006F438",
      INIT_56 => X"000C5594002E156500265434000756420020C5F00026F6B2002415D40016946B",
      INIT_57 => X"002E1534001AF5F4001016EB002E16EC00041673000F24B90006852E00195645",
      INIT_58 => X"0006C4240029566B0026C5240004166B00041645002685F7000B3619002E5645",
      INIT_59 => X"0024966B0008966300270534001054D4002E158C000616450005564C002AE48F",
      INIT_5A => X"000364B20029564E0034F5C50026C6B20026C427002495C7002E9605000F9445",
      INIT_5B => X"001854D4002E15C50024F485000C55C4001815C4002E16500018F42E00261673",
      INIT_5C => X"002496C5000C966800061644002926A50005558B0006F645001A5584001B5665",
      INIT_5D => X"00041665001895B000274532001155D4000555CB001A55F70006843000201654",
      INIT_5E => X"000686AD002E5432002C1659002C15B000089565002414650008F6EE0006F434",
      INIT_5F => X"001855D4001CF6850026B52E001555B0001096C5002355300021252D000CC4A4",
      INIT_60 => X"001854300016E5F4001C15A50008F5ED0004F6EC000C56A40010F66500169685",
      INIT_61 => X"000A4534000E94D40004F6450018164B001856D9001A164B002E85F00004F434",
      INIT_62 => X"001AF5F2000555F9001C946B002EF586001816A4000454340028146B002744B7",
      INIT_63 => X"001054320024152400181524002E8532000E15EC0020F6B4002815B0000894A4",
      INIT_64 => X"0024552E000C95C500149594000EC5ED000CF64D002774300006843400101688",
      INIT_65 => X"001EF7450018F6440011564C0027558B002E9594000C964D001654AC0006C5E7",
      INIT_66 => X"0009567400049433000E1745000E16C50006F5B0001B56850026C42200145674",
      INIT_67 => X"0026C6A5000684320004C5F4002E164E002E96680032F5650006C437000CF5F4",
      INIT_68 => X"0024F52C002E5614000455C40006F526001854B2001344680010F6EC0026C4A4",
      INIT_69 => X"001454B2000415850008F6850026542D00081645001CF46B0008148F0010F5C5",
      INIT_6A => X"000555C70016172F0026F52C000EC5F7000C54A4000926A2001895A5002654AE",
      INIT_6B => X"002655C4001894D40018946B002C55C4001054A40004158B001A152D000F5668",
      INIT_6C => X"000496850026C434000E54320024F42D00095605000E96C5000C16850006C6A2",
      INIT_6D => X"00055650000455940006158B00055642002014E50028852E000CC5F0000C164D",
      INIT_6E => X"000A16650020F6450010F5A50032146B002745F7002686AE0009566B001954E5",
      INIT_6F => X"001896700028F67300275646000955B00024F605002744AD0028F6B4000685F0",
      INIT_70 => X"002775E2002896450010F5E6001195AE002095C5000CC434000C95C40008F6C5",
      INIT_71 => X"000324680020146B0006F5C50028F6850008F5C5000416EC001B5668002746A2",
      INIT_72 => X"00149445000756450026C530002F2430000CF52C002C9665000C958C0005564E",
      INIT_73 => X"001A152C002E1485001154C60025552E002EF5650018F426002054AC0006158D",
      INIT_74 => X"0020542B0024156500189674002E565400085565001A166B0020F46B000555D4",
      INIT_75 => X"001E7585000C975A0026E5F7002495850018F46B0026342200212439000CC534",
      INIT_76 => X"000365F7002E55D4000955C7000455D4001A1485002654AD002706B2002924A5",
      INIT_77 => X"001555CB0004C5E20004F52C001EB4390004C6B200049485001A55C400041534",
      INIT_78 => X"002E164D000815B000075445002415C70006F605000CC53000241685003215CB",
      INIT_79 => X"001A95C5001155C70024F46B002685F4002744B40010F5850006C5F000101685",
      INIT_7A => X"002016450026B52D000494C6000F24B7002E16C50010F5E4000EF5C700115654",
      INIT_7B => X"00101670001C546B002895940034F5CB002704B70027742D0006F64E0006C5F9",
      INIT_7C => X"0016564E0026C5340020152E002E96C5002815CB0027443200101650002695C7",
      INIT_7D => X"0018F58C000895C5000415CB001016AC001A95A5002744220018F5F00018542E",
      INIT_7E => X"0024F432002054B00018F665000CF5EC0026C5F4000D558C0014558C002654AB",
      INIT_7F => X"0028564D000C5685002125E4002895D4002755C70026F6540006C4300010F6C5",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(14 downto 5) => i_ref_word_idx(9 downto 0),
      ADDRARDADDR(4 downto 0) => B"00000",
      ADDRBWRADDR(14 downto 0) => B"111111111111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 0) => NLW_data_reg_CASDOUTA_UNCONNECTED(31 downto 0),
      CASDOUTB(31 downto 0) => NLW_data_reg_CASDOUTB_UNCONNECTED(31 downto 0),
      CASDOUTPA(3 downto 0) => NLW_data_reg_CASDOUTPA_UNCONNECTED(3 downto 0),
      CASDOUTPB(3 downto 0) => NLW_data_reg_CASDOUTPB_UNCONNECTED(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => NLW_data_reg_CASOUTDBITERR_UNCONNECTED,
      CASOUTSBITERR => NLW_data_reg_CASOUTSBITERR_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DBITERR => NLW_data_reg_DBITERR_UNCONNECTED,
      DINADIN(31 downto 0) => B"00000000001111111111111111111111",
      DINBDIN(31 downto 0) => B"11111111111111111111111111111111",
      DINPADINP(3 downto 0) => B"0000",
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31 downto 22) => NLW_data_reg_DOUTADOUT_UNCONNECTED(31 downto 22),
      DOUTADOUT(21 downto 20) => \^doutadout\(18 downto 17),
      DOUTADOUT(19 downto 17) => \ref_letter[0]\(2 downto 0),
      DOUTADOUT(16 downto 0) => \^doutadout\(16 downto 0),
      DOUTBDOUT(31 downto 0) => NLW_data_reg_DOUTBDOUT_UNCONNECTED(31 downto 0),
      DOUTPADOUTP(3 downto 0) => NLW_data_reg_DOUTPADOUTP_UNCONNECTED(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => NLW_data_reg_DOUTPBDOUTP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_data_reg_ECCPARITY_UNCONNECTED(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => '1',
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_data_reg_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => data_reg_13,
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => data_reg_14,
      RSTREGB => '0',
      SBITERR => NLW_data_reg_SBITERR_UNCONNECTED,
      SLEEP => '0',
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\r_game_status[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \^data_reg_6\,
      I1 => \^data_reg_3\,
      I2 => \^data_reg_1\,
      I3 => \r_game_status_reg[0]\,
      O => D(0)
    );
\r_result[0][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009009"
    )
        port map (
      I0 => \^doutadout\(11),
      I1 => \r_game_status_reg[0]_0\(7),
      I2 => \^doutadout\(10),
      I3 => \r_game_status_reg[0]_0\(6),
      I4 => \r_result[0][0]_i_2_n_0\,
      I5 => \r_result[0][0]_i_3_n_0\,
      O => \^data_reg_3\
    );
\r_result[0][0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^doutadout\(0),
      I1 => \r_game_status_reg[0]_0\(0),
      I2 => \r_game_status_reg[0]_0\(2),
      I3 => \^doutadout\(2),
      I4 => \r_game_status_reg[0]_0\(1),
      I5 => \^doutadout\(1),
      O => \r_result[0][0]_i_2_n_0\
    );
\r_result[0][0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^doutadout\(3),
      I1 => \r_game_status_reg[0]_0\(3),
      I2 => \^doutadout\(10),
      I3 => \r_game_status_reg[0]_0\(5),
      I4 => \r_game_status_reg[0]_0\(4),
      I5 => \^doutadout\(4),
      O => \r_result[0][0]_i_3_n_0\
    );
\r_result[0][1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0DD"
    )
        port map (
      I0 => \^data_reg_6\,
      I1 => \r_result[2][1]_i_12_n_0\,
      I2 => \r_result_reg[1][1]_0\,
      I3 => \^data_reg_1\,
      O => data_reg_7
    );
\r_result[1][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFABFF00"
    )
        port map (
      I0 => \^data_reg_4\,
      I1 => \r_result_reg[1][1]\,
      I2 => \^data_reg_5\,
      I3 => \r_result[1][1]_i_5_n_0\,
      I4 => \r_game_status_reg[0]\,
      O => \r_guess_word_reg[9]\(0)
    );
\r_result[1][1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^doutadout\(3),
      I1 => \r_game_status_reg[0]_0\(11),
      I2 => \r_game_status_reg[0]_0\(12),
      I3 => \^doutadout\(4),
      I4 => \r_game_status_reg[0]_0\(13),
      I5 => \^doutadout\(10),
      O => \r_result[1][1]_i_10_n_0\
    );
\r_result[1][1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^doutadout\(8),
      I1 => \r_game_status_reg[0]_0\(11),
      I2 => \r_game_status_reg[0]_0\(12),
      I3 => \^doutadout\(9),
      I4 => \r_game_status_reg[0]_0\(13),
      I5 => \^doutadout\(10),
      O => data_reg_9
    );
\r_result[1][1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \^data_reg_3\,
      I1 => \r_result[2][1]_i_12_n_0\,
      I2 => \^data_reg_6\,
      I3 => \r_result_reg[2][1]\,
      O => \^data_reg_4\
    );
\r_result[1][1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1011FFFF"
    )
        port map (
      I0 => \^data_reg_3\,
      I1 => \r_result_reg[1][1]_0\,
      I2 => \r_result[2][1]_i_12_n_0\,
      I3 => \^data_reg_6\,
      I4 => \^data_reg_1\,
      O => \^data_reg_5\
    );
\r_result[1][1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \r_game_status_reg[0]\,
      I1 => \r_result_reg[1][1]_1\,
      I2 => \r_result[1][1]_i_9_n_0\,
      I3 => \r_result[1][1]_i_10_n_0\,
      I4 => \^data_reg_3\,
      O => \r_result[1][1]_i_5_n_0\
    );
\r_result[1][1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^doutadout\(0),
      I1 => \r_game_status_reg[0]_0\(8),
      I2 => \r_game_status_reg[0]_0\(10),
      I3 => \^doutadout\(2),
      I4 => \r_game_status_reg[0]_0\(9),
      I5 => \^doutadout\(1),
      O => \r_result[1][1]_i_9_n_0\
    );
\r_result[2][0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_reg_1\,
      O => data_reg_0(0)
    );
\r_result[2][1]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6FF6"
    )
        port map (
      I0 => \r_game_status_reg[0]_0\(17),
      I1 => \^doutadout\(8),
      I2 => \^doutadout\(10),
      I3 => \r_game_status_reg[0]_0\(19),
      I4 => \r_result[2][1]_i_25_n_0\,
      O => \r_guess_word_reg[19]\
    );
\r_result[2][1]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFE"
    )
        port map (
      I0 => \r_result[2][1]_i_21_n_0\,
      I1 => \r_result[2][1]_i_20_n_0\,
      I2 => \^doutadout\(10),
      I3 => \r_game_status_reg[0]_0\(6),
      I4 => \r_game_status_reg[0]_0\(7),
      O => \r_result[2][1]_i_12_n_0\
    );
\r_result[2][1]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFE"
    )
        port map (
      I0 => \r_result[2][1]_i_26_n_0\,
      I1 => \r_result[2][1]_i_27_n_0\,
      I2 => \^doutadout\(10),
      I3 => \r_game_status_reg[0]_0\(20),
      I4 => \r_game_status_reg[0]_0\(21),
      O => \r_result[2][1]_i_13_n_0\
    );
\r_result[2][1]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^doutadout\(12),
      I1 => \r_game_status_reg[0]_0\(14),
      I2 => \r_game_status_reg[0]_0\(15),
      I3 => \^doutadout\(13),
      I4 => \r_game_status_reg[0]_0\(16),
      I5 => \^doutadout\(14),
      O => \r_result[2][1]_i_15_n_0\
    );
\r_result[2][1]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^doutadout\(15),
      I1 => \r_game_status_reg[0]_0\(17),
      I2 => \r_game_status_reg[0]_0\(18),
      I3 => \^doutadout\(16),
      I4 => \^doutadout\(10),
      I5 => \r_game_status_reg[0]_0\(19),
      O => \r_result[2][1]_i_16_n_0\
    );
\r_result[2][1]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6FF6"
    )
        port map (
      I0 => \r_game_status_reg[0]_0\(17),
      I1 => \^doutadout\(3),
      I2 => \^doutadout\(10),
      I3 => \r_game_status_reg[0]_0\(19),
      I4 => \r_result[2][1]_i_30_n_0\,
      O => \r_guess_word_reg[19]_0\
    );
\r_result[2][1]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^doutadout\(10),
      I1 => \r_game_status_reg[0]_0\(5),
      O => data_reg_11
    );
\r_result[2][1]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^doutadout\(17),
      I1 => \r_game_status_reg[0]_0\(3),
      I2 => \r_game_status_reg[0]_0\(4),
      I3 => \^doutadout\(18),
      I4 => \^doutadout\(10),
      I5 => \r_game_status_reg[0]_0\(5),
      O => \r_result[2][1]_i_20_n_0\
    );
\r_result[2][1]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \ref_letter[0]\(0),
      I1 => \r_game_status_reg[0]_0\(0),
      I2 => \r_game_status_reg[0]_0\(1),
      I3 => \ref_letter[0]\(1),
      I4 => \r_game_status_reg[0]_0\(2),
      I5 => \ref_letter[0]\(2),
      O => \r_result[2][1]_i_21_n_0\
    );
\r_result[2][1]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^doutadout\(7),
      I1 => \r_game_status_reg[0]_0\(16),
      I2 => \^doutadout\(9),
      I3 => \r_game_status_reg[0]_0\(18),
      O => \r_result[2][1]_i_25_n_0\
    );
\r_result[2][1]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \ref_letter[0]\(0),
      I1 => \r_game_status_reg[0]_0\(14),
      I2 => \r_game_status_reg[0]_0\(15),
      I3 => \ref_letter[0]\(1),
      I4 => \r_game_status_reg[0]_0\(16),
      I5 => \ref_letter[0]\(2),
      O => \r_result[2][1]_i_26_n_0\
    );
\r_result[2][1]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^doutadout\(17),
      I1 => \r_game_status_reg[0]_0\(17),
      I2 => \r_game_status_reg[0]_0\(18),
      I3 => \^doutadout\(18),
      I4 => \^doutadout\(10),
      I5 => \r_game_status_reg[0]_0\(19),
      O => \r_result[2][1]_i_27_n_0\
    );
\r_result[2][1]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \ref_letter[0]\(0),
      I1 => \r_game_status_reg[0]_0\(8),
      I2 => \r_game_status_reg[0]_0\(9),
      I3 => \ref_letter[0]\(1),
      I4 => \r_game_status_reg[0]_0\(10),
      I5 => \ref_letter[0]\(2),
      O => data_reg_12
    );
\r_result[2][1]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^doutadout\(2),
      I1 => \r_game_status_reg[0]_0\(16),
      I2 => \^doutadout\(4),
      I3 => \r_game_status_reg[0]_0\(18),
      O => \r_result[2][1]_i_30_n_0\
    );
\r_result[2][1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E000E0000000E0"
    )
        port map (
      I0 => \^data_reg_3\,
      I1 => \r_result[2][1]_i_12_n_0\,
      I2 => \^data_reg_6\,
      I3 => \r_result[2][1]_i_13_n_0\,
      I4 => \r_game_status_reg[0]\,
      I5 => \r_result_reg[2][1]\,
      O => data_reg_8
    );
\r_result[2][1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF6FF6"
    )
        port map (
      I0 => \^doutadout\(11),
      I1 => \r_game_status_reg[0]_0\(21),
      I2 => \^doutadout\(10),
      I3 => \r_game_status_reg[0]_0\(20),
      I4 => \r_result[2][1]_i_15_n_0\,
      I5 => \r_result[2][1]_i_16_n_0\,
      O => \^data_reg_1\
    );
\r_result[2][1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFEFEFEFEFF"
    )
        port map (
      I0 => \r_result[2][1]_i_2\,
      I1 => \r_result[2][1]_i_20_n_0\,
      I2 => \r_result[2][1]_i_21_n_0\,
      I3 => \r_result[2][1]_i_2_0\,
      I4 => \r_result[3][1]_i_10_n_0\,
      I5 => \r_result[3][1]_i_9_n_0\,
      O => \r_guess_word_reg[7]\
    );
\r_result[3][0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_reg_6\,
      O => data_reg_10(0)
    );
\r_result[3][1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^doutadout\(10),
      I1 => \r_game_status_reg[0]_0\(27),
      I2 => \r_game_status_reg[0]_0\(26),
      I3 => \^doutadout\(18),
      I4 => \^doutadout\(17),
      I5 => \r_game_status_reg[0]_0\(25),
      O => \r_result[3][1]_i_10_n_0\
    );
\r_result[3][1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFE"
    )
        port map (
      I0 => \r_result[3][1]_i_9_n_0\,
      I1 => \r_result[3][1]_i_10_n_0\,
      I2 => \^doutadout\(10),
      I3 => \r_game_status_reg[0]_0\(28),
      I4 => \r_game_status_reg[0]_0\(29),
      O => \^data_reg_6\
    );
\r_result[3][1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44455555"
    )
        port map (
      I0 => \^data_reg_3\,
      I1 => \^data_reg_4\,
      I2 => \r_result_reg[1][1]\,
      I3 => \^data_reg_5\,
      I4 => \r_result[1][1]_i_5_n_0\,
      O => data_reg_2
    );
\r_result[3][1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \ref_letter[0]\(0),
      I1 => \r_game_status_reg[0]_0\(22),
      I2 => \r_game_status_reg[0]_0\(23),
      I3 => \ref_letter[0]\(1),
      I4 => \r_game_status_reg[0]_0\(24),
      I5 => \ref_letter[0]\(2),
      O => \r_result[3][1]_i_9_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity wordle_design_wordle_top_0_0_wordle_top is
  port (
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    i_ref_word_idx : in STD_LOGIC_VECTOR ( 9 downto 0 );
    i_guess_word : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_guess_id : in STD_LOGIC_VECTOR ( 3 downto 0 );
    o_ready : out STD_LOGIC;
    o_result : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_guess_count : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_game_status : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ADDR_WIDTH : integer;
  attribute ADDR_WIDTH of wordle_design_wordle_top_0_0_wordle_top : entity is 10;
  attribute DICT_SIZE : integer;
  attribute DICT_SIZE of wordle_design_wordle_top_0_0_wordle_top : entity is 1024;
  attribute GUESS_CNTW : integer;
  attribute GUESS_CNTW of wordle_design_wordle_top_0_0_wordle_top : entity is 4;
  attribute MAX_GUESSES : integer;
  attribute MAX_GUESSES of wordle_design_wordle_top_0_0_wordle_top : entity is 6;
  attribute NUM_LETTERS : integer;
  attribute NUM_LETTERS of wordle_design_wordle_top_0_0_wordle_top : entity is 4;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of wordle_design_wordle_top_0_0_wordle_top : entity is "wordle_top";
  attribute RSLT_WIDTH : integer;
  attribute RSLT_WIDTH of wordle_design_wordle_top_0_0_wordle_top : entity is 8;
  attribute WORD_WIDTH : integer;
  attribute WORD_WIDTH of wordle_design_wordle_top_0_0_wordle_top : entity is 32;
end wordle_design_wordle_top_0_0_wordle_top;

architecture STRUCTURE of wordle_design_wordle_top_0_0_wordle_top is
  signal fsm_inst_n_1 : STD_LOGIC;
  signal fsm_inst_n_10 : STD_LOGIC;
  signal fsm_inst_n_11 : STD_LOGIC;
  signal fsm_inst_n_34 : STD_LOGIC;
  signal fsm_inst_n_35 : STD_LOGIC;
  signal fsm_inst_n_36 : STD_LOGIC;
  signal fsm_inst_n_37 : STD_LOGIC;
  signal fsm_inst_n_38 : STD_LOGIC;
  signal fsm_inst_n_39 : STD_LOGIC;
  signal fsm_inst_n_4 : STD_LOGIC;
  signal fsm_inst_n_40 : STD_LOGIC;
  signal fsm_inst_n_41 : STD_LOGIC;
  signal fsm_inst_n_42 : STD_LOGIC;
  signal fsm_inst_n_43 : STD_LOGIC;
  signal fsm_inst_n_44 : STD_LOGIC;
  signal fsm_inst_n_45 : STD_LOGIC;
  signal fsm_inst_n_9 : STD_LOGIC;
  signal \guess_letter[0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \guess_letter[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \guess_letter[2]\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal r_game_status : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ref_letter[0]\ : STD_LOGIC_VECTOR ( 4 downto 3 );
  signal \ref_letter[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ref_letter[2]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal rom_inst_n_14 : STD_LOGIC;
  signal rom_inst_n_15 : STD_LOGIC;
  signal rom_inst_n_16 : STD_LOGIC;
  signal rom_inst_n_17 : STD_LOGIC;
  signal rom_inst_n_18 : STD_LOGIC;
  signal rom_inst_n_19 : STD_LOGIC;
  signal rom_inst_n_20 : STD_LOGIC;
  signal rom_inst_n_21 : STD_LOGIC;
  signal rom_inst_n_22 : STD_LOGIC;
  signal rom_inst_n_23 : STD_LOGIC;
  signal rom_inst_n_24 : STD_LOGIC;
  signal rom_inst_n_25 : STD_LOGIC;
  signal rom_inst_n_26 : STD_LOGIC;
  signal rom_inst_n_28 : STD_LOGIC;
  signal rom_inst_n_29 : STD_LOGIC;
  signal rom_inst_n_30 : STD_LOGIC;
  signal rom_inst_n_31 : STD_LOGIC;
  signal rom_inst_n_32 : STD_LOGIC;
  signal rom_inst_n_33 : STD_LOGIC;
  signal rom_inst_n_34 : STD_LOGIC;
  signal rom_inst_n_35 : STD_LOGIC;
  signal rom_inst_n_36 : STD_LOGIC;
begin
fsm_inst: entity work.wordle_design_wordle_top_0_0_wordle_fsm
     port map (
      D(0) => r_game_status(0),
      DOUTADOUT(18 downto 17) => \ref_letter[0]\(4 downto 3),
      DOUTADOUT(16 downto 12) => \ref_letter[1]\(4 downto 0),
      DOUTADOUT(11) => \ref_letter[1]\(7),
      DOUTADOUT(10) => \ref_letter[1]\(5),
      DOUTADOUT(9 downto 5) => \ref_letter[2]\(4 downto 0),
      DOUTADOUT(4) => rom_inst_n_14,
      DOUTADOUT(3) => rom_inst_n_15,
      DOUTADOUT(2) => rom_inst_n_16,
      DOUTADOUT(1) => rom_inst_n_17,
      DOUTADOUT(0) => rom_inst_n_18,
      Q(1 downto 0) => o_game_status(1 downto 0),
      clk => clk,
      data_reg => fsm_inst_n_42,
      i_guess_id(3 downto 0) => i_guess_id(3 downto 0),
      i_guess_word(31 downto 0) => i_guess_word(31 downto 0),
      o_ready => o_ready,
      o_result(7 downto 0) => o_result(7 downto 0),
      \r_guess_count_reg[3]_0\(3 downto 0) => o_guess_count(3 downto 0),
      \r_guess_word_reg[14]_0\ => fsm_inst_n_43,
      \r_guess_word_reg[15]_0\ => fsm_inst_n_10,
      \r_guess_word_reg[1]_0\ => fsm_inst_n_11,
      \r_guess_word_reg[31]_0\(29 downto 22) => \guess_letter[0]\(7 downto 0),
      \r_guess_word_reg[31]_0\(21 downto 14) => \guess_letter[1]\(7 downto 0),
      \r_guess_word_reg[31]_0\(13 downto 8) => \guess_letter[2]\(5 downto 0),
      \r_guess_word_reg[31]_0\(7) => fsm_inst_n_34,
      \r_guess_word_reg[31]_0\(6) => fsm_inst_n_35,
      \r_guess_word_reg[31]_0\(5) => fsm_inst_n_36,
      \r_guess_word_reg[31]_0\(4) => fsm_inst_n_37,
      \r_guess_word_reg[31]_0\(3) => fsm_inst_n_38,
      \r_guess_word_reg[31]_0\(2) => fsm_inst_n_39,
      \r_guess_word_reg[31]_0\(1) => fsm_inst_n_40,
      \r_guess_word_reg[31]_0\(0) => fsm_inst_n_41,
      \r_guess_word_reg[31]_1\ => fsm_inst_n_44,
      \r_guess_word_reg[7]_0\ => fsm_inst_n_45,
      \r_guess_word_reg[9]_0\ => fsm_inst_n_9,
      \r_result[0][1]_i_4\ => rom_inst_n_34,
      \r_result[1][1]_i_2\ => rom_inst_n_35,
      \r_result_reg[0][0]_0\ => rom_inst_n_22,
      \r_result_reg[0][1]_0\ => rom_inst_n_26,
      \r_result_reg[0][1]_1\ => rom_inst_n_31,
      \r_result_reg[1][1]_0\(0) => rom_inst_n_36,
      \r_result_reg[2][0]_0\(0) => rom_inst_n_19,
      \r_result_reg[2][1]_0\ => rom_inst_n_20,
      \r_result_reg[2][1]_1\ => rom_inst_n_29,
      \r_result_reg[2][1]_2\ => rom_inst_n_33,
      \r_result_reg[2][1]_3\ => rom_inst_n_28,
      \r_result_reg[2][1]_4\ => rom_inst_n_30,
      \r_result_reg[3][0]_0\(0) => rom_inst_n_32,
      \r_result_reg[3][1]_0\ => rom_inst_n_25,
      \r_result_reg[3][1]_1\ => rom_inst_n_21,
      \r_result_reg[3][1]_2\ => rom_inst_n_23,
      \r_result_reg[3][1]_3\ => rom_inst_n_24,
      \r_state_reg[0]_0\ => fsm_inst_n_4,
      rstn => rstn,
      rstn_0 => fsm_inst_n_1
    );
rom_inst: entity work.wordle_design_wordle_top_0_0_wordle_rom
     port map (
      D(0) => r_game_status(0),
      DOUTADOUT(18 downto 17) => \ref_letter[0]\(4 downto 3),
      DOUTADOUT(16 downto 12) => \ref_letter[1]\(4 downto 0),
      DOUTADOUT(11) => \ref_letter[1]\(7),
      DOUTADOUT(10) => \ref_letter[1]\(5),
      DOUTADOUT(9 downto 5) => \ref_letter[2]\(4 downto 0),
      DOUTADOUT(4) => rom_inst_n_14,
      DOUTADOUT(3) => rom_inst_n_15,
      DOUTADOUT(2) => rom_inst_n_16,
      DOUTADOUT(1) => rom_inst_n_17,
      DOUTADOUT(0) => rom_inst_n_18,
      clk => clk,
      data_reg_0(0) => rom_inst_n_19,
      data_reg_1 => rom_inst_n_20,
      data_reg_10(0) => rom_inst_n_32,
      data_reg_11 => rom_inst_n_34,
      data_reg_12 => rom_inst_n_35,
      data_reg_13 => fsm_inst_n_4,
      data_reg_14 => fsm_inst_n_1,
      data_reg_2 => rom_inst_n_21,
      data_reg_3 => rom_inst_n_22,
      data_reg_4 => rom_inst_n_23,
      data_reg_5 => rom_inst_n_24,
      data_reg_6 => rom_inst_n_25,
      data_reg_7 => rom_inst_n_26,
      data_reg_8 => rom_inst_n_29,
      data_reg_9 => rom_inst_n_31,
      i_ref_word_idx(9 downto 0) => i_ref_word_idx(9 downto 0),
      \r_game_status_reg[0]\ => fsm_inst_n_10,
      \r_game_status_reg[0]_0\(29 downto 22) => \guess_letter[0]\(7 downto 0),
      \r_game_status_reg[0]_0\(21 downto 14) => \guess_letter[1]\(7 downto 0),
      \r_game_status_reg[0]_0\(13 downto 8) => \guess_letter[2]\(5 downto 0),
      \r_game_status_reg[0]_0\(7) => fsm_inst_n_34,
      \r_game_status_reg[0]_0\(6) => fsm_inst_n_35,
      \r_game_status_reg[0]_0\(5) => fsm_inst_n_36,
      \r_game_status_reg[0]_0\(4) => fsm_inst_n_37,
      \r_game_status_reg[0]_0\(3) => fsm_inst_n_38,
      \r_game_status_reg[0]_0\(2) => fsm_inst_n_39,
      \r_game_status_reg[0]_0\(1) => fsm_inst_n_40,
      \r_game_status_reg[0]_0\(0) => fsm_inst_n_41,
      \r_guess_word_reg[19]\ => rom_inst_n_28,
      \r_guess_word_reg[19]_0\ => rom_inst_n_30,
      \r_guess_word_reg[7]\ => rom_inst_n_33,
      \r_guess_word_reg[9]\(0) => rom_inst_n_36,
      \r_result[2][1]_i_2\ => fsm_inst_n_45,
      \r_result[2][1]_i_2_0\ => fsm_inst_n_44,
      \r_result_reg[1][1]\ => fsm_inst_n_9,
      \r_result_reg[1][1]_0\ => fsm_inst_n_11,
      \r_result_reg[1][1]_1\ => fsm_inst_n_43,
      \r_result_reg[2][1]\ => fsm_inst_n_42
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity wordle_design_wordle_top_0_0 is
  port (
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    i_ref_word_idx : in STD_LOGIC_VECTOR ( 9 downto 0 );
    i_guess_word : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_guess_id : in STD_LOGIC_VECTOR ( 3 downto 0 );
    o_ready : out STD_LOGIC;
    o_result : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_guess_count : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_game_status : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of wordle_design_wordle_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of wordle_design_wordle_top_0_0 : entity is "wordle_design_wordle_top_0_0,wordle_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of wordle_design_wordle_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of wordle_design_wordle_top_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of wordle_design_wordle_top_0_0 : entity is "wordle_top,Vivado 2024.2.2";
end wordle_design_wordle_top_0_0;

architecture STRUCTURE of wordle_design_wordle_top_0_0 is
  attribute ADDR_WIDTH : integer;
  attribute ADDR_WIDTH of inst : label is 10;
  attribute DICT_SIZE : integer;
  attribute DICT_SIZE of inst : label is 1024;
  attribute GUESS_CNTW : integer;
  attribute GUESS_CNTW of inst : label is 4;
  attribute MAX_GUESSES : integer;
  attribute MAX_GUESSES of inst : label is 6;
  attribute NUM_LETTERS : integer;
  attribute NUM_LETTERS of inst : label is 4;
  attribute RSLT_WIDTH : integer;
  attribute RSLT_WIDTH of inst : label is 8;
  attribute WORD_WIDTH : integer;
  attribute WORD_WIDTH of inst : label is 32;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN wordle_design_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rstn : signal is "xilinx.com:signal:reset:1.0 rstn RST";
  attribute X_INTERFACE_MODE of rstn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rstn : signal is "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.wordle_design_wordle_top_0_0_wordle_top
     port map (
      clk => clk,
      i_guess_id(3 downto 0) => i_guess_id(3 downto 0),
      i_guess_word(31 downto 0) => i_guess_word(31 downto 0),
      i_ref_word_idx(9 downto 0) => i_ref_word_idx(9 downto 0),
      o_game_status(1 downto 0) => o_game_status(1 downto 0),
      o_guess_count(3 downto 0) => o_guess_count(3 downto 0),
      o_ready => o_ready,
      o_result(7 downto 0) => o_result(7 downto 0),
      rstn => rstn
    );
end STRUCTURE;
