-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
-- Date        : Tue Jun  2 10:25:42 2026
-- Host        : ECE-MCU2-09 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ alu_design_alu_0_0_sim_netlist.vhdl
-- Design      : alu_design_alu_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu is
  port (
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    i_dataa : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_datab : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_op : in STD_LOGIC_VECTOR ( 1 downto 0 );
    o_result : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute DATAW : integer;
  attribute DATAW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu : entity is 32;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu is
  signal \add_sub_0/GEN_ADD_SUB[12].fa/s0__0\ : STD_LOGIC;
  signal \add_sub_0/GEN_ADD_SUB[14].fa/s0__0\ : STD_LOGIC;
  signal \add_sub_0/GEN_ADD_SUB[17].fa/s0__0\ : STD_LOGIC;
  signal \add_sub_0/GEN_ADD_SUB[19].fa/s0__0\ : STD_LOGIC;
  signal \add_sub_0/GEN_ADD_SUB[1].fa/s0__0\ : STD_LOGIC;
  signal \add_sub_0/GEN_ADD_SUB[22].fa/s0__0\ : STD_LOGIC;
  signal \add_sub_0/GEN_ADD_SUB[24].fa/s0__0\ : STD_LOGIC;
  signal \add_sub_0/GEN_ADD_SUB[31].fa/s0__0\ : STD_LOGIC;
  signal \add_sub_0/GEN_ADD_SUB[4].fa/s0__0\ : STD_LOGIC;
  signal \add_sub_0/GEN_ADD_SUB[7].fa/s0__0\ : STD_LOGIC;
  signal \add_sub_0/GEN_ADD_SUB[9].fa/s0__0\ : STD_LOGIC;
  signal \add_sub_0/b010_out\ : STD_LOGIC;
  signal \add_sub_0/b012_out\ : STD_LOGIC;
  signal \add_sub_0/b014_out\ : STD_LOGIC;
  signal \add_sub_0/b018_out\ : STD_LOGIC;
  signal \add_sub_0/b020_out\ : STD_LOGIC;
  signal \add_sub_0/b022_out\ : STD_LOGIC;
  signal \add_sub_0/b024_out\ : STD_LOGIC;
  signal \add_sub_0/b028_out\ : STD_LOGIC;
  signal \add_sub_0/b02_out\ : STD_LOGIC;
  signal \add_sub_0/b030_out\ : STD_LOGIC;
  signal \add_sub_0/b032_out\ : STD_LOGIC;
  signal \add_sub_0/b034_out\ : STD_LOGIC;
  signal \add_sub_0/b038_out\ : STD_LOGIC;
  signal \add_sub_0/b040_out\ : STD_LOGIC;
  signal \add_sub_0/b044_out\ : STD_LOGIC;
  signal \add_sub_0/b04_out\ : STD_LOGIC;
  signal \add_sub_0/b058_out\ : STD_LOGIC;
  signal \add_sub_0/b08_out\ : STD_LOGIC;
  signal \add_sub_0/carry_10\ : STD_LOGIC;
  signal \add_sub_0/carry_11\ : STD_LOGIC;
  signal \add_sub_0/carry_12\ : STD_LOGIC;
  signal \add_sub_0/carry_13\ : STD_LOGIC;
  signal \add_sub_0/carry_14\ : STD_LOGIC;
  signal \add_sub_0/carry_15\ : STD_LOGIC;
  signal \add_sub_0/carry_16\ : STD_LOGIC;
  signal \add_sub_0/carry_17\ : STD_LOGIC;
  signal \add_sub_0/carry_18\ : STD_LOGIC;
  signal \add_sub_0/carry_19\ : STD_LOGIC;
  signal \add_sub_0/carry_2\ : STD_LOGIC;
  signal \add_sub_0/carry_20\ : STD_LOGIC;
  signal \add_sub_0/carry_21\ : STD_LOGIC;
  signal \add_sub_0/carry_22\ : STD_LOGIC;
  signal \add_sub_0/carry_23\ : STD_LOGIC;
  signal \add_sub_0/carry_24\ : STD_LOGIC;
  signal \add_sub_0/carry_25\ : STD_LOGIC;
  signal \add_sub_0/carry_26\ : STD_LOGIC;
  signal \add_sub_0/carry_27\ : STD_LOGIC;
  signal \add_sub_0/carry_28\ : STD_LOGIC;
  signal \add_sub_0/carry_29\ : STD_LOGIC;
  signal \add_sub_0/carry_3\ : STD_LOGIC;
  signal \add_sub_0/carry_30\ : STD_LOGIC;
  signal \add_sub_0/carry_4\ : STD_LOGIC;
  signal \add_sub_0/carry_5\ : STD_LOGIC;
  signal \add_sub_0/carry_6\ : STD_LOGIC;
  signal \add_sub_0/carry_7\ : STD_LOGIC;
  signal \add_sub_0/carry_8\ : STD_LOGIC;
  signal \add_sub_0/carry_9\ : STD_LOGIC;
  signal \cout00_out__13\ : STD_LOGIC;
  signal \cout00_out__18\ : STD_LOGIC;
  signal \cout00_out__3\ : STD_LOGIC;
  signal \cout00_out__8\ : STD_LOGIC;
  signal \cout0__13\ : STD_LOGIC;
  signal \cout0__18\ : STD_LOGIC;
  signal \cout0__3\ : STD_LOGIC;
  signal \cout0__8\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal r_a : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal r_b : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \r_op_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_op_reg_n_0_[1]\ : STD_LOGIC;
  signal \res0__0_n_100\ : STD_LOGIC;
  signal \res0__0_n_101\ : STD_LOGIC;
  signal \res0__0_n_102\ : STD_LOGIC;
  signal \res0__0_n_103\ : STD_LOGIC;
  signal \res0__0_n_104\ : STD_LOGIC;
  signal \res0__0_n_105\ : STD_LOGIC;
  signal \res0__0_n_58\ : STD_LOGIC;
  signal \res0__0_n_59\ : STD_LOGIC;
  signal \res0__0_n_60\ : STD_LOGIC;
  signal \res0__0_n_61\ : STD_LOGIC;
  signal \res0__0_n_62\ : STD_LOGIC;
  signal \res0__0_n_63\ : STD_LOGIC;
  signal \res0__0_n_64\ : STD_LOGIC;
  signal \res0__0_n_65\ : STD_LOGIC;
  signal \res0__0_n_66\ : STD_LOGIC;
  signal \res0__0_n_67\ : STD_LOGIC;
  signal \res0__0_n_68\ : STD_LOGIC;
  signal \res0__0_n_69\ : STD_LOGIC;
  signal \res0__0_n_70\ : STD_LOGIC;
  signal \res0__0_n_71\ : STD_LOGIC;
  signal \res0__0_n_72\ : STD_LOGIC;
  signal \res0__0_n_73\ : STD_LOGIC;
  signal \res0__0_n_74\ : STD_LOGIC;
  signal \res0__0_n_75\ : STD_LOGIC;
  signal \res0__0_n_76\ : STD_LOGIC;
  signal \res0__0_n_77\ : STD_LOGIC;
  signal \res0__0_n_78\ : STD_LOGIC;
  signal \res0__0_n_79\ : STD_LOGIC;
  signal \res0__0_n_80\ : STD_LOGIC;
  signal \res0__0_n_81\ : STD_LOGIC;
  signal \res0__0_n_82\ : STD_LOGIC;
  signal \res0__0_n_83\ : STD_LOGIC;
  signal \res0__0_n_84\ : STD_LOGIC;
  signal \res0__0_n_85\ : STD_LOGIC;
  signal \res0__0_n_86\ : STD_LOGIC;
  signal \res0__0_n_87\ : STD_LOGIC;
  signal \res0__0_n_88\ : STD_LOGIC;
  signal \res0__0_n_89\ : STD_LOGIC;
  signal \res0__0_n_90\ : STD_LOGIC;
  signal \res0__0_n_91\ : STD_LOGIC;
  signal \res0__0_n_92\ : STD_LOGIC;
  signal \res0__0_n_93\ : STD_LOGIC;
  signal \res0__0_n_94\ : STD_LOGIC;
  signal \res0__0_n_95\ : STD_LOGIC;
  signal \res0__0_n_96\ : STD_LOGIC;
  signal \res0__0_n_97\ : STD_LOGIC;
  signal \res0__0_n_98\ : STD_LOGIC;
  signal \res0__0_n_99\ : STD_LOGIC;
  signal \res0__1_i_10_n_0\ : STD_LOGIC;
  signal \res0__1_i_11_n_0\ : STD_LOGIC;
  signal \res0__1_i_12_n_0\ : STD_LOGIC;
  signal \res0__1_i_13_n_0\ : STD_LOGIC;
  signal \res0__1_i_14_n_0\ : STD_LOGIC;
  signal \res0__1_i_15_n_0\ : STD_LOGIC;
  signal \res0__1_i_1_n_0\ : STD_LOGIC;
  signal \res0__1_i_2_n_0\ : STD_LOGIC;
  signal \res0__1_i_3_n_0\ : STD_LOGIC;
  signal \res0__1_i_4_n_0\ : STD_LOGIC;
  signal \res0__1_i_5_n_0\ : STD_LOGIC;
  signal \res0__1_i_6_n_0\ : STD_LOGIC;
  signal \res0__1_i_7_n_0\ : STD_LOGIC;
  signal \res0__1_i_8_n_0\ : STD_LOGIC;
  signal \res0__1_i_9_n_0\ : STD_LOGIC;
  signal \res0__1_n_100\ : STD_LOGIC;
  signal \res0__1_n_101\ : STD_LOGIC;
  signal \res0__1_n_102\ : STD_LOGIC;
  signal \res0__1_n_103\ : STD_LOGIC;
  signal \res0__1_n_104\ : STD_LOGIC;
  signal \res0__1_n_105\ : STD_LOGIC;
  signal \res0__1_n_106\ : STD_LOGIC;
  signal \res0__1_n_107\ : STD_LOGIC;
  signal \res0__1_n_108\ : STD_LOGIC;
  signal \res0__1_n_109\ : STD_LOGIC;
  signal \res0__1_n_110\ : STD_LOGIC;
  signal \res0__1_n_111\ : STD_LOGIC;
  signal \res0__1_n_112\ : STD_LOGIC;
  signal \res0__1_n_113\ : STD_LOGIC;
  signal \res0__1_n_114\ : STD_LOGIC;
  signal \res0__1_n_115\ : STD_LOGIC;
  signal \res0__1_n_116\ : STD_LOGIC;
  signal \res0__1_n_117\ : STD_LOGIC;
  signal \res0__1_n_118\ : STD_LOGIC;
  signal \res0__1_n_119\ : STD_LOGIC;
  signal \res0__1_n_120\ : STD_LOGIC;
  signal \res0__1_n_121\ : STD_LOGIC;
  signal \res0__1_n_122\ : STD_LOGIC;
  signal \res0__1_n_123\ : STD_LOGIC;
  signal \res0__1_n_124\ : STD_LOGIC;
  signal \res0__1_n_125\ : STD_LOGIC;
  signal \res0__1_n_126\ : STD_LOGIC;
  signal \res0__1_n_127\ : STD_LOGIC;
  signal \res0__1_n_128\ : STD_LOGIC;
  signal \res0__1_n_129\ : STD_LOGIC;
  signal \res0__1_n_130\ : STD_LOGIC;
  signal \res0__1_n_131\ : STD_LOGIC;
  signal \res0__1_n_132\ : STD_LOGIC;
  signal \res0__1_n_133\ : STD_LOGIC;
  signal \res0__1_n_134\ : STD_LOGIC;
  signal \res0__1_n_135\ : STD_LOGIC;
  signal \res0__1_n_136\ : STD_LOGIC;
  signal \res0__1_n_137\ : STD_LOGIC;
  signal \res0__1_n_138\ : STD_LOGIC;
  signal \res0__1_n_139\ : STD_LOGIC;
  signal \res0__1_n_140\ : STD_LOGIC;
  signal \res0__1_n_141\ : STD_LOGIC;
  signal \res0__1_n_142\ : STD_LOGIC;
  signal \res0__1_n_143\ : STD_LOGIC;
  signal \res0__1_n_144\ : STD_LOGIC;
  signal \res0__1_n_145\ : STD_LOGIC;
  signal \res0__1_n_146\ : STD_LOGIC;
  signal \res0__1_n_147\ : STD_LOGIC;
  signal \res0__1_n_148\ : STD_LOGIC;
  signal \res0__1_n_149\ : STD_LOGIC;
  signal \res0__1_n_150\ : STD_LOGIC;
  signal \res0__1_n_151\ : STD_LOGIC;
  signal \res0__1_n_152\ : STD_LOGIC;
  signal \res0__1_n_153\ : STD_LOGIC;
  signal \res0__1_n_58\ : STD_LOGIC;
  signal \res0__1_n_59\ : STD_LOGIC;
  signal \res0__1_n_60\ : STD_LOGIC;
  signal \res0__1_n_61\ : STD_LOGIC;
  signal \res0__1_n_62\ : STD_LOGIC;
  signal \res0__1_n_63\ : STD_LOGIC;
  signal \res0__1_n_64\ : STD_LOGIC;
  signal \res0__1_n_65\ : STD_LOGIC;
  signal \res0__1_n_66\ : STD_LOGIC;
  signal \res0__1_n_67\ : STD_LOGIC;
  signal \res0__1_n_68\ : STD_LOGIC;
  signal \res0__1_n_69\ : STD_LOGIC;
  signal \res0__1_n_70\ : STD_LOGIC;
  signal \res0__1_n_71\ : STD_LOGIC;
  signal \res0__1_n_72\ : STD_LOGIC;
  signal \res0__1_n_73\ : STD_LOGIC;
  signal \res0__1_n_74\ : STD_LOGIC;
  signal \res0__1_n_75\ : STD_LOGIC;
  signal \res0__1_n_76\ : STD_LOGIC;
  signal \res0__1_n_77\ : STD_LOGIC;
  signal \res0__1_n_78\ : STD_LOGIC;
  signal \res0__1_n_79\ : STD_LOGIC;
  signal \res0__1_n_80\ : STD_LOGIC;
  signal \res0__1_n_81\ : STD_LOGIC;
  signal \res0__1_n_82\ : STD_LOGIC;
  signal \res0__1_n_83\ : STD_LOGIC;
  signal \res0__1_n_84\ : STD_LOGIC;
  signal \res0__1_n_85\ : STD_LOGIC;
  signal \res0__1_n_86\ : STD_LOGIC;
  signal \res0__1_n_87\ : STD_LOGIC;
  signal \res0__1_n_88\ : STD_LOGIC;
  signal \res0__1_n_89\ : STD_LOGIC;
  signal \res0__1_n_90\ : STD_LOGIC;
  signal \res0__1_n_91\ : STD_LOGIC;
  signal \res0__1_n_92\ : STD_LOGIC;
  signal \res0__1_n_93\ : STD_LOGIC;
  signal \res0__1_n_94\ : STD_LOGIC;
  signal \res0__1_n_95\ : STD_LOGIC;
  signal \res0__1_n_96\ : STD_LOGIC;
  signal \res0__1_n_97\ : STD_LOGIC;
  signal \res0__1_n_98\ : STD_LOGIC;
  signal \res0__1_n_99\ : STD_LOGIC;
  signal res0_i_10_n_0 : STD_LOGIC;
  signal res0_i_11_n_0 : STD_LOGIC;
  signal res0_i_12_n_0 : STD_LOGIC;
  signal res0_i_13_n_0 : STD_LOGIC;
  signal res0_i_14_n_0 : STD_LOGIC;
  signal res0_i_15_n_0 : STD_LOGIC;
  signal res0_i_16_n_0 : STD_LOGIC;
  signal res0_i_17_n_0 : STD_LOGIC;
  signal res0_i_1_n_0 : STD_LOGIC;
  signal res0_i_2_n_0 : STD_LOGIC;
  signal res0_i_3_n_0 : STD_LOGIC;
  signal res0_i_4_n_0 : STD_LOGIC;
  signal res0_i_5_n_0 : STD_LOGIC;
  signal res0_i_6_n_0 : STD_LOGIC;
  signal res0_i_7_n_0 : STD_LOGIC;
  signal res0_i_8_n_0 : STD_LOGIC;
  signal res0_i_9_n_0 : STD_LOGIC;
  signal res0_n_100 : STD_LOGIC;
  signal res0_n_101 : STD_LOGIC;
  signal res0_n_102 : STD_LOGIC;
  signal res0_n_103 : STD_LOGIC;
  signal res0_n_104 : STD_LOGIC;
  signal res0_n_105 : STD_LOGIC;
  signal res0_n_106 : STD_LOGIC;
  signal res0_n_107 : STD_LOGIC;
  signal res0_n_108 : STD_LOGIC;
  signal res0_n_109 : STD_LOGIC;
  signal res0_n_110 : STD_LOGIC;
  signal res0_n_111 : STD_LOGIC;
  signal res0_n_112 : STD_LOGIC;
  signal res0_n_113 : STD_LOGIC;
  signal res0_n_114 : STD_LOGIC;
  signal res0_n_115 : STD_LOGIC;
  signal res0_n_116 : STD_LOGIC;
  signal res0_n_117 : STD_LOGIC;
  signal res0_n_118 : STD_LOGIC;
  signal res0_n_119 : STD_LOGIC;
  signal res0_n_120 : STD_LOGIC;
  signal res0_n_121 : STD_LOGIC;
  signal res0_n_122 : STD_LOGIC;
  signal res0_n_123 : STD_LOGIC;
  signal res0_n_124 : STD_LOGIC;
  signal res0_n_125 : STD_LOGIC;
  signal res0_n_126 : STD_LOGIC;
  signal res0_n_127 : STD_LOGIC;
  signal res0_n_128 : STD_LOGIC;
  signal res0_n_129 : STD_LOGIC;
  signal res0_n_130 : STD_LOGIC;
  signal res0_n_131 : STD_LOGIC;
  signal res0_n_132 : STD_LOGIC;
  signal res0_n_133 : STD_LOGIC;
  signal res0_n_134 : STD_LOGIC;
  signal res0_n_135 : STD_LOGIC;
  signal res0_n_136 : STD_LOGIC;
  signal res0_n_137 : STD_LOGIC;
  signal res0_n_138 : STD_LOGIC;
  signal res0_n_139 : STD_LOGIC;
  signal res0_n_140 : STD_LOGIC;
  signal res0_n_141 : STD_LOGIC;
  signal res0_n_142 : STD_LOGIC;
  signal res0_n_143 : STD_LOGIC;
  signal res0_n_144 : STD_LOGIC;
  signal res0_n_145 : STD_LOGIC;
  signal res0_n_146 : STD_LOGIC;
  signal res0_n_147 : STD_LOGIC;
  signal res0_n_148 : STD_LOGIC;
  signal res0_n_149 : STD_LOGIC;
  signal res0_n_150 : STD_LOGIC;
  signal res0_n_151 : STD_LOGIC;
  signal res0_n_152 : STD_LOGIC;
  signal res0_n_153 : STD_LOGIC;
  signal res0_n_24 : STD_LOGIC;
  signal res0_n_25 : STD_LOGIC;
  signal res0_n_26 : STD_LOGIC;
  signal res0_n_27 : STD_LOGIC;
  signal res0_n_28 : STD_LOGIC;
  signal res0_n_29 : STD_LOGIC;
  signal res0_n_30 : STD_LOGIC;
  signal res0_n_31 : STD_LOGIC;
  signal res0_n_32 : STD_LOGIC;
  signal res0_n_33 : STD_LOGIC;
  signal res0_n_34 : STD_LOGIC;
  signal res0_n_35 : STD_LOGIC;
  signal res0_n_36 : STD_LOGIC;
  signal res0_n_37 : STD_LOGIC;
  signal res0_n_38 : STD_LOGIC;
  signal res0_n_39 : STD_LOGIC;
  signal res0_n_40 : STD_LOGIC;
  signal res0_n_41 : STD_LOGIC;
  signal res0_n_42 : STD_LOGIC;
  signal res0_n_43 : STD_LOGIC;
  signal res0_n_44 : STD_LOGIC;
  signal res0_n_45 : STD_LOGIC;
  signal res0_n_46 : STD_LOGIC;
  signal res0_n_47 : STD_LOGIC;
  signal res0_n_48 : STD_LOGIC;
  signal res0_n_49 : STD_LOGIC;
  signal res0_n_50 : STD_LOGIC;
  signal res0_n_51 : STD_LOGIC;
  signal res0_n_52 : STD_LOGIC;
  signal res0_n_53 : STD_LOGIC;
  signal res0_n_58 : STD_LOGIC;
  signal res0_n_59 : STD_LOGIC;
  signal res0_n_60 : STD_LOGIC;
  signal res0_n_61 : STD_LOGIC;
  signal res0_n_62 : STD_LOGIC;
  signal res0_n_63 : STD_LOGIC;
  signal res0_n_64 : STD_LOGIC;
  signal res0_n_65 : STD_LOGIC;
  signal res0_n_66 : STD_LOGIC;
  signal res0_n_67 : STD_LOGIC;
  signal res0_n_68 : STD_LOGIC;
  signal res0_n_69 : STD_LOGIC;
  signal res0_n_70 : STD_LOGIC;
  signal res0_n_71 : STD_LOGIC;
  signal res0_n_72 : STD_LOGIC;
  signal res0_n_73 : STD_LOGIC;
  signal res0_n_74 : STD_LOGIC;
  signal res0_n_75 : STD_LOGIC;
  signal res0_n_76 : STD_LOGIC;
  signal res0_n_77 : STD_LOGIC;
  signal res0_n_78 : STD_LOGIC;
  signal res0_n_79 : STD_LOGIC;
  signal res0_n_80 : STD_LOGIC;
  signal res0_n_81 : STD_LOGIC;
  signal res0_n_82 : STD_LOGIC;
  signal res0_n_83 : STD_LOGIC;
  signal res0_n_84 : STD_LOGIC;
  signal res0_n_85 : STD_LOGIC;
  signal res0_n_86 : STD_LOGIC;
  signal res0_n_87 : STD_LOGIC;
  signal res0_n_88 : STD_LOGIC;
  signal res0_n_89 : STD_LOGIC;
  signal res0_n_90 : STD_LOGIC;
  signal res0_n_91 : STD_LOGIC;
  signal res0_n_92 : STD_LOGIC;
  signal res0_n_93 : STD_LOGIC;
  signal res0_n_94 : STD_LOGIC;
  signal res0_n_95 : STD_LOGIC;
  signal res0_n_96 : STD_LOGIC;
  signal res0_n_97 : STD_LOGIC;
  signal res0_n_98 : STD_LOGIC;
  signal res0_n_99 : STD_LOGIC;
  signal \res[0]_i_1_n_0\ : STD_LOGIC;
  signal \res[10]_i_1_n_0\ : STD_LOGIC;
  signal \res[11]_i_1_n_0\ : STD_LOGIC;
  signal \res[12]_i_1_n_0\ : STD_LOGIC;
  signal \res[13]_i_1_n_0\ : STD_LOGIC;
  signal \res[14]_i_1_n_0\ : STD_LOGIC;
  signal \res[15]_i_1_n_0\ : STD_LOGIC;
  signal \res[16]_i_1_n_0\ : STD_LOGIC;
  signal \res[17]_i_1_n_0\ : STD_LOGIC;
  signal \res[18]_i_1_n_0\ : STD_LOGIC;
  signal \res[19]_i_1_n_0\ : STD_LOGIC;
  signal \res[1]_i_1_n_0\ : STD_LOGIC;
  signal \res[20]_i_1_n_0\ : STD_LOGIC;
  signal \res[21]_i_1_n_0\ : STD_LOGIC;
  signal \res[22]_i_1_n_0\ : STD_LOGIC;
  signal \res[23]_i_1_n_0\ : STD_LOGIC;
  signal \res[23]_i_3_n_0\ : STD_LOGIC;
  signal \res[23]_i_4_n_0\ : STD_LOGIC;
  signal \res[23]_i_5_n_0\ : STD_LOGIC;
  signal \res[23]_i_6_n_0\ : STD_LOGIC;
  signal \res[23]_i_7_n_0\ : STD_LOGIC;
  signal \res[23]_i_8_n_0\ : STD_LOGIC;
  signal \res[23]_i_9_n_0\ : STD_LOGIC;
  signal \res[24]_i_1_n_0\ : STD_LOGIC;
  signal \res[25]_i_1_n_0\ : STD_LOGIC;
  signal \res[26]_i_1_n_0\ : STD_LOGIC;
  signal \res[27]_i_1_n_0\ : STD_LOGIC;
  signal \res[28]_i_1_n_0\ : STD_LOGIC;
  signal \res[29]_i_1_n_0\ : STD_LOGIC;
  signal \res[2]_i_1_n_0\ : STD_LOGIC;
  signal \res[30]_i_1_n_0\ : STD_LOGIC;
  signal \res[31]_i_10_n_0\ : STD_LOGIC;
  signal \res[31]_i_11_n_0\ : STD_LOGIC;
  signal \res[31]_i_12_n_0\ : STD_LOGIC;
  signal \res[31]_i_13_n_0\ : STD_LOGIC;
  signal \res[31]_i_14_n_0\ : STD_LOGIC;
  signal \res[31]_i_2_n_0\ : STD_LOGIC;
  signal \res[31]_i_7_n_0\ : STD_LOGIC;
  signal \res[31]_i_8_n_0\ : STD_LOGIC;
  signal \res[31]_i_9_n_0\ : STD_LOGIC;
  signal \res[3]_i_1_n_0\ : STD_LOGIC;
  signal \res[4]_i_1_n_0\ : STD_LOGIC;
  signal \res[5]_i_1_n_0\ : STD_LOGIC;
  signal \res[6]_i_1_n_0\ : STD_LOGIC;
  signal \res[7]_i_1_n_0\ : STD_LOGIC;
  signal \res[8]_i_1_n_0\ : STD_LOGIC;
  signal \res[9]_i_1_n_0\ : STD_LOGIC;
  signal \res_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \res_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \res_reg[15]_i_2_n_10\ : STD_LOGIC;
  signal \res_reg[15]_i_2_n_11\ : STD_LOGIC;
  signal \res_reg[15]_i_2_n_12\ : STD_LOGIC;
  signal \res_reg[15]_i_2_n_13\ : STD_LOGIC;
  signal \res_reg[15]_i_2_n_14\ : STD_LOGIC;
  signal \res_reg[15]_i_2_n_15\ : STD_LOGIC;
  signal \res_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \res_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \res_reg[15]_i_2_n_4\ : STD_LOGIC;
  signal \res_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \res_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \res_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \res_reg[15]_i_2_n_8\ : STD_LOGIC;
  signal \res_reg[15]_i_2_n_9\ : STD_LOGIC;
  signal \res_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \res_reg[23]_i_2_n_1\ : STD_LOGIC;
  signal \res_reg[23]_i_2_n_10\ : STD_LOGIC;
  signal \res_reg[23]_i_2_n_11\ : STD_LOGIC;
  signal \res_reg[23]_i_2_n_12\ : STD_LOGIC;
  signal \res_reg[23]_i_2_n_13\ : STD_LOGIC;
  signal \res_reg[23]_i_2_n_14\ : STD_LOGIC;
  signal \res_reg[23]_i_2_n_15\ : STD_LOGIC;
  signal \res_reg[23]_i_2_n_2\ : STD_LOGIC;
  signal \res_reg[23]_i_2_n_3\ : STD_LOGIC;
  signal \res_reg[23]_i_2_n_4\ : STD_LOGIC;
  signal \res_reg[23]_i_2_n_5\ : STD_LOGIC;
  signal \res_reg[23]_i_2_n_6\ : STD_LOGIC;
  signal \res_reg[23]_i_2_n_7\ : STD_LOGIC;
  signal \res_reg[23]_i_2_n_8\ : STD_LOGIC;
  signal \res_reg[23]_i_2_n_9\ : STD_LOGIC;
  signal \res_reg[31]_i_3_n_1\ : STD_LOGIC;
  signal \res_reg[31]_i_3_n_10\ : STD_LOGIC;
  signal \res_reg[31]_i_3_n_11\ : STD_LOGIC;
  signal \res_reg[31]_i_3_n_12\ : STD_LOGIC;
  signal \res_reg[31]_i_3_n_13\ : STD_LOGIC;
  signal \res_reg[31]_i_3_n_14\ : STD_LOGIC;
  signal \res_reg[31]_i_3_n_15\ : STD_LOGIC;
  signal \res_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \res_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \res_reg[31]_i_3_n_4\ : STD_LOGIC;
  signal \res_reg[31]_i_3_n_5\ : STD_LOGIC;
  signal \res_reg[31]_i_3_n_6\ : STD_LOGIC;
  signal \res_reg[31]_i_3_n_7\ : STD_LOGIC;
  signal \res_reg[31]_i_3_n_8\ : STD_LOGIC;
  signal \res_reg[31]_i_3_n_9\ : STD_LOGIC;
  signal \res_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \res_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \res_reg[7]_i_2_n_10\ : STD_LOGIC;
  signal \res_reg[7]_i_2_n_11\ : STD_LOGIC;
  signal \res_reg[7]_i_2_n_12\ : STD_LOGIC;
  signal \res_reg[7]_i_2_n_13\ : STD_LOGIC;
  signal \res_reg[7]_i_2_n_14\ : STD_LOGIC;
  signal \res_reg[7]_i_2_n_15\ : STD_LOGIC;
  signal \res_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \res_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \res_reg[7]_i_2_n_4\ : STD_LOGIC;
  signal \res_reg[7]_i_2_n_5\ : STD_LOGIC;
  signal \res_reg[7]_i_2_n_6\ : STD_LOGIC;
  signal \res_reg[7]_i_2_n_7\ : STD_LOGIC;
  signal \res_reg[7]_i_2_n_8\ : STD_LOGIC;
  signal \res_reg[7]_i_2_n_9\ : STD_LOGIC;
  signal NLW_res0_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res0_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_res0_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res0_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res0_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_res0_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_res0_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_res0_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_res0_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_res0__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_res0__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_res0__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_res0__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_res0__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_res0__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_res0__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_res0__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_res0__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_res0__0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_res0__0_XOROUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_res0__1_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_res0__1_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_res0__1_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_res0__1_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_res0__1_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_res0__1_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_res0__1_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_res0__1_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_res0__1_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_res0__1_XOROUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_res_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of res0 : label is "yes";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of res0 : label is "{SYNTH-10 {cell *THIS*} {string 18x18 4}}";
  attribute KEEP_HIERARCHY of \res0__0\ : label is "yes";
  attribute METHODOLOGY_DRC_VIOS of \res0__0\ : label is "{SYNTH-10 {cell *THIS*} {string 18x16 4}}";
  attribute KEEP_HIERARCHY of \res0__1\ : label is "yes";
  attribute METHODOLOGY_DRC_VIOS of \res0__1\ : label is "{SYNTH-10 {cell *THIS*} {string 16x18 4}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \res0__1_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \res0__1_i_10\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \res0__1_i_11\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \res0__1_i_12\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \res0__1_i_13\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \res0__1_i_14\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \res0__1_i_15\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \res0__1_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \res0__1_i_3\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \res0__1_i_4\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \res0__1_i_5\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \res0__1_i_6\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \res0__1_i_7\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \res0__1_i_8\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \res0__1_i_9\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of res0_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of res0_i_10 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of res0_i_11 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of res0_i_12 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of res0_i_13 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of res0_i_14 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of res0_i_15 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of res0_i_16 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of res0_i_17 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of res0_i_2 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of res0_i_3 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of res0_i_4 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of res0_i_5 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of res0_i_6 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of res0_i_7 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of res0_i_8 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of res0_i_9 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \res[12]_i_10\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \res[12]_i_11\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \res[12]_i_12\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \res[12]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \res[12]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \res[12]_i_8\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \res[12]_i_9\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \res[14]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \res[14]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \res[17]_i_10\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \res[17]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \res[17]_i_4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \res[17]_i_8\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \res[17]_i_9\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \res[19]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \res[19]_i_4\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \res[1]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \res[22]_i_10\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \res[22]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \res[22]_i_4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \res[22]_i_8\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \res[22]_i_9\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \res[24]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \res[24]_i_4\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \res[26]_i_6\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \res[26]_i_7\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \res[26]_i_8\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \res[2]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \res[31]_i_4\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \res[31]_i_6\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \res[3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \res[5]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \res[7]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \res[7]_i_5\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \res[9]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \res[9]_i_4\ : label is "soft_lutpair8";
begin
\r_a_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_dataa(0),
      Q => r_a(0),
      R => p_0_in
    );
\r_a_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_dataa(10),
      Q => r_a(10),
      R => p_0_in
    );
\r_a_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_dataa(11),
      Q => r_a(11),
      R => p_0_in
    );
\r_a_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_dataa(12),
      Q => r_a(12),
      R => p_0_in
    );
\r_a_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_dataa(13),
      Q => r_a(13),
      R => p_0_in
    );
\r_a_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_dataa(14),
      Q => r_a(14),
      R => p_0_in
    );
\r_a_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_dataa(15),
      Q => r_a(15),
      R => p_0_in
    );
\r_a_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_dataa(16),
      Q => r_a(16),
      R => p_0_in
    );
\r_a_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_dataa(17),
      Q => r_a(17),
      R => p_0_in
    );
\r_a_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_dataa(18),
      Q => r_a(18),
      R => p_0_in
    );
\r_a_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_dataa(19),
      Q => r_a(19),
      R => p_0_in
    );
\r_a_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_dataa(1),
      Q => r_a(1),
      R => p_0_in
    );
\r_a_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_dataa(20),
      Q => r_a(20),
      R => p_0_in
    );
\r_a_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_dataa(21),
      Q => r_a(21),
      R => p_0_in
    );
\r_a_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_dataa(22),
      Q => r_a(22),
      R => p_0_in
    );
\r_a_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_dataa(23),
      Q => r_a(23),
      R => p_0_in
    );
\r_a_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_dataa(24),
      Q => r_a(24),
      R => p_0_in
    );
\r_a_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_dataa(25),
      Q => r_a(25),
      R => p_0_in
    );
\r_a_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_dataa(26),
      Q => r_a(26),
      R => p_0_in
    );
\r_a_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_dataa(27),
      Q => r_a(27),
      R => p_0_in
    );
\r_a_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_dataa(28),
      Q => r_a(28),
      R => p_0_in
    );
\r_a_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_dataa(29),
      Q => r_a(29),
      R => p_0_in
    );
\r_a_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_dataa(2),
      Q => r_a(2),
      R => p_0_in
    );
\r_a_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_dataa(30),
      Q => r_a(30),
      R => p_0_in
    );
\r_a_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_dataa(31),
      Q => r_a(31),
      R => p_0_in
    );
\r_a_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_dataa(3),
      Q => r_a(3),
      R => p_0_in
    );
\r_a_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_dataa(4),
      Q => r_a(4),
      R => p_0_in
    );
\r_a_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_dataa(5),
      Q => r_a(5),
      R => p_0_in
    );
\r_a_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_dataa(6),
      Q => r_a(6),
      R => p_0_in
    );
\r_a_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_dataa(7),
      Q => r_a(7),
      R => p_0_in
    );
\r_a_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_dataa(8),
      Q => r_a(8),
      R => p_0_in
    );
\r_a_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_dataa(9),
      Q => r_a(9),
      R => p_0_in
    );
\r_b_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_datab(0),
      Q => r_b(0),
      R => p_0_in
    );
\r_b_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_datab(10),
      Q => r_b(10),
      R => p_0_in
    );
\r_b_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_datab(11),
      Q => r_b(11),
      R => p_0_in
    );
\r_b_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_datab(12),
      Q => r_b(12),
      R => p_0_in
    );
\r_b_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_datab(13),
      Q => r_b(13),
      R => p_0_in
    );
\r_b_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_datab(14),
      Q => r_b(14),
      R => p_0_in
    );
\r_b_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_datab(15),
      Q => r_b(15),
      R => p_0_in
    );
\r_b_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_datab(16),
      Q => r_b(16),
      R => p_0_in
    );
\r_b_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_datab(17),
      Q => r_b(17),
      R => p_0_in
    );
\r_b_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_datab(18),
      Q => r_b(18),
      R => p_0_in
    );
\r_b_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_datab(19),
      Q => r_b(19),
      R => p_0_in
    );
\r_b_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_datab(1),
      Q => r_b(1),
      R => p_0_in
    );
\r_b_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_datab(20),
      Q => r_b(20),
      R => p_0_in
    );
\r_b_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_datab(21),
      Q => r_b(21),
      R => p_0_in
    );
\r_b_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_datab(22),
      Q => r_b(22),
      R => p_0_in
    );
\r_b_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_datab(23),
      Q => r_b(23),
      R => p_0_in
    );
\r_b_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_datab(24),
      Q => r_b(24),
      R => p_0_in
    );
\r_b_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_datab(25),
      Q => r_b(25),
      R => p_0_in
    );
\r_b_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_datab(26),
      Q => r_b(26),
      R => p_0_in
    );
\r_b_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_datab(27),
      Q => r_b(27),
      R => p_0_in
    );
\r_b_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_datab(28),
      Q => r_b(28),
      R => p_0_in
    );
\r_b_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_datab(29),
      Q => r_b(29),
      R => p_0_in
    );
\r_b_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_datab(2),
      Q => r_b(2),
      R => p_0_in
    );
\r_b_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_datab(30),
      Q => r_b(30),
      R => p_0_in
    );
\r_b_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_datab(31),
      Q => r_b(31),
      R => p_0_in
    );
\r_b_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_datab(3),
      Q => r_b(3),
      R => p_0_in
    );
\r_b_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_datab(4),
      Q => r_b(4),
      R => p_0_in
    );
\r_b_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_datab(5),
      Q => r_b(5),
      R => p_0_in
    );
\r_b_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_datab(6),
      Q => r_b(6),
      R => p_0_in
    );
\r_b_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_datab(7),
      Q => r_b(7),
      R => p_0_in
    );
\r_b_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_datab(8),
      Q => r_b(8),
      R => p_0_in
    );
\r_b_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_datab(9),
      Q => r_b(9),
      R => p_0_in
    );
\r_op_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_op(0),
      Q => \r_op_reg_n_0_[0]\,
      R => p_0_in
    );
\r_op_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_op(1),
      Q => \r_op_reg_n_0_[1]\,
      R => p_0_in
    );
res0: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BMULTSEL => "B",
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 0,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16) => res0_i_1_n_0,
      A(15) => res0_i_2_n_0,
      A(14) => res0_i_3_n_0,
      A(13) => res0_i_4_n_0,
      A(12) => res0_i_5_n_0,
      A(11) => res0_i_6_n_0,
      A(10) => res0_i_7_n_0,
      A(9) => res0_i_8_n_0,
      A(8) => res0_i_9_n_0,
      A(7) => res0_i_10_n_0,
      A(6) => res0_i_11_n_0,
      A(5) => res0_i_12_n_0,
      A(4) => res0_i_13_n_0,
      A(3) => res0_i_14_n_0,
      A(2) => res0_i_15_n_0,
      A(1) => res0_i_16_n_0,
      A(0) => res0_i_17_n_0,
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29) => res0_n_24,
      ACOUT(28) => res0_n_25,
      ACOUT(27) => res0_n_26,
      ACOUT(26) => res0_n_27,
      ACOUT(25) => res0_n_28,
      ACOUT(24) => res0_n_29,
      ACOUT(23) => res0_n_30,
      ACOUT(22) => res0_n_31,
      ACOUT(21) => res0_n_32,
      ACOUT(20) => res0_n_33,
      ACOUT(19) => res0_n_34,
      ACOUT(18) => res0_n_35,
      ACOUT(17) => res0_n_36,
      ACOUT(16) => res0_n_37,
      ACOUT(15) => res0_n_38,
      ACOUT(14) => res0_n_39,
      ACOUT(13) => res0_n_40,
      ACOUT(12) => res0_n_41,
      ACOUT(11) => res0_n_42,
      ACOUT(10) => res0_n_43,
      ACOUT(9) => res0_n_44,
      ACOUT(8) => res0_n_45,
      ACOUT(7) => res0_n_46,
      ACOUT(6) => res0_n_47,
      ACOUT(5) => res0_n_48,
      ACOUT(4) => res0_n_49,
      ACOUT(3) => res0_n_50,
      ACOUT(2) => res0_n_51,
      ACOUT(1) => res0_n_52,
      ACOUT(0) => res0_n_53,
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 0) => i_dataa(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_res0_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_res0_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_res0_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_res0_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000000101",
      OVERFLOW => NLW_res0_OVERFLOW_UNCONNECTED,
      P(47) => res0_n_58,
      P(46) => res0_n_59,
      P(45) => res0_n_60,
      P(44) => res0_n_61,
      P(43) => res0_n_62,
      P(42) => res0_n_63,
      P(41) => res0_n_64,
      P(40) => res0_n_65,
      P(39) => res0_n_66,
      P(38) => res0_n_67,
      P(37) => res0_n_68,
      P(36) => res0_n_69,
      P(35) => res0_n_70,
      P(34) => res0_n_71,
      P(33) => res0_n_72,
      P(32) => res0_n_73,
      P(31) => res0_n_74,
      P(30) => res0_n_75,
      P(29) => res0_n_76,
      P(28) => res0_n_77,
      P(27) => res0_n_78,
      P(26) => res0_n_79,
      P(25) => res0_n_80,
      P(24) => res0_n_81,
      P(23) => res0_n_82,
      P(22) => res0_n_83,
      P(21) => res0_n_84,
      P(20) => res0_n_85,
      P(19) => res0_n_86,
      P(18) => res0_n_87,
      P(17) => res0_n_88,
      P(16) => res0_n_89,
      P(15) => res0_n_90,
      P(14) => res0_n_91,
      P(13) => res0_n_92,
      P(12) => res0_n_93,
      P(11) => res0_n_94,
      P(10) => res0_n_95,
      P(9) => res0_n_96,
      P(8) => res0_n_97,
      P(7) => res0_n_98,
      P(6) => res0_n_99,
      P(5) => res0_n_100,
      P(4) => res0_n_101,
      P(3) => res0_n_102,
      P(2) => res0_n_103,
      P(1) => res0_n_104,
      P(0) => res0_n_105,
      PATTERNBDETECT => NLW_res0_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_res0_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => res0_n_106,
      PCOUT(46) => res0_n_107,
      PCOUT(45) => res0_n_108,
      PCOUT(44) => res0_n_109,
      PCOUT(43) => res0_n_110,
      PCOUT(42) => res0_n_111,
      PCOUT(41) => res0_n_112,
      PCOUT(40) => res0_n_113,
      PCOUT(39) => res0_n_114,
      PCOUT(38) => res0_n_115,
      PCOUT(37) => res0_n_116,
      PCOUT(36) => res0_n_117,
      PCOUT(35) => res0_n_118,
      PCOUT(34) => res0_n_119,
      PCOUT(33) => res0_n_120,
      PCOUT(32) => res0_n_121,
      PCOUT(31) => res0_n_122,
      PCOUT(30) => res0_n_123,
      PCOUT(29) => res0_n_124,
      PCOUT(28) => res0_n_125,
      PCOUT(27) => res0_n_126,
      PCOUT(26) => res0_n_127,
      PCOUT(25) => res0_n_128,
      PCOUT(24) => res0_n_129,
      PCOUT(23) => res0_n_130,
      PCOUT(22) => res0_n_131,
      PCOUT(21) => res0_n_132,
      PCOUT(20) => res0_n_133,
      PCOUT(19) => res0_n_134,
      PCOUT(18) => res0_n_135,
      PCOUT(17) => res0_n_136,
      PCOUT(16) => res0_n_137,
      PCOUT(15) => res0_n_138,
      PCOUT(14) => res0_n_139,
      PCOUT(13) => res0_n_140,
      PCOUT(12) => res0_n_141,
      PCOUT(11) => res0_n_142,
      PCOUT(10) => res0_n_143,
      PCOUT(9) => res0_n_144,
      PCOUT(8) => res0_n_145,
      PCOUT(7) => res0_n_146,
      PCOUT(6) => res0_n_147,
      PCOUT(5) => res0_n_148,
      PCOUT(4) => res0_n_149,
      PCOUT(3) => res0_n_150,
      PCOUT(2) => res0_n_151,
      PCOUT(1) => res0_n_152,
      PCOUT(0) => res0_n_153,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => p_0_in,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_res0_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_res0_XOROUT_UNCONNECTED(7 downto 0)
    );
\res0__0\: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "CASCADE",
      BCASCREG => 1,
      BMULTSEL => "B",
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 0,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 0) => B"000000000000000000000000000000",
      ACIN(29) => res0_n_24,
      ACIN(28) => res0_n_25,
      ACIN(27) => res0_n_26,
      ACIN(26) => res0_n_27,
      ACIN(25) => res0_n_28,
      ACIN(24) => res0_n_29,
      ACIN(23) => res0_n_30,
      ACIN(22) => res0_n_31,
      ACIN(21) => res0_n_32,
      ACIN(20) => res0_n_33,
      ACIN(19) => res0_n_34,
      ACIN(18) => res0_n_35,
      ACIN(17) => res0_n_36,
      ACIN(16) => res0_n_37,
      ACIN(15) => res0_n_38,
      ACIN(14) => res0_n_39,
      ACIN(13) => res0_n_40,
      ACIN(12) => res0_n_41,
      ACIN(11) => res0_n_42,
      ACIN(10) => res0_n_43,
      ACIN(9) => res0_n_44,
      ACIN(8) => res0_n_45,
      ACIN(7) => res0_n_46,
      ACIN(6) => res0_n_47,
      ACIN(5) => res0_n_48,
      ACIN(4) => res0_n_49,
      ACIN(3) => res0_n_50,
      ACIN(2) => res0_n_51,
      ACIN(1) => res0_n_52,
      ACIN(0) => res0_n_53,
      ACOUT(29 downto 0) => \NLW_res0__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 15) => B"000",
      B(14 downto 0) => i_dataa(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_res0__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_res0__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_res0__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_res0__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(8 downto 0) => B"001010101",
      OVERFLOW => \NLW_res0__0_OVERFLOW_UNCONNECTED\,
      P(47) => \res0__0_n_58\,
      P(46) => \res0__0_n_59\,
      P(45) => \res0__0_n_60\,
      P(44) => \res0__0_n_61\,
      P(43) => \res0__0_n_62\,
      P(42) => \res0__0_n_63\,
      P(41) => \res0__0_n_64\,
      P(40) => \res0__0_n_65\,
      P(39) => \res0__0_n_66\,
      P(38) => \res0__0_n_67\,
      P(37) => \res0__0_n_68\,
      P(36) => \res0__0_n_69\,
      P(35) => \res0__0_n_70\,
      P(34) => \res0__0_n_71\,
      P(33) => \res0__0_n_72\,
      P(32) => \res0__0_n_73\,
      P(31) => \res0__0_n_74\,
      P(30) => \res0__0_n_75\,
      P(29) => \res0__0_n_76\,
      P(28) => \res0__0_n_77\,
      P(27) => \res0__0_n_78\,
      P(26) => \res0__0_n_79\,
      P(25) => \res0__0_n_80\,
      P(24) => \res0__0_n_81\,
      P(23) => \res0__0_n_82\,
      P(22) => \res0__0_n_83\,
      P(21) => \res0__0_n_84\,
      P(20) => \res0__0_n_85\,
      P(19) => \res0__0_n_86\,
      P(18) => \res0__0_n_87\,
      P(17) => \res0__0_n_88\,
      P(16) => \res0__0_n_89\,
      P(15) => \res0__0_n_90\,
      P(14) => \res0__0_n_91\,
      P(13) => \res0__0_n_92\,
      P(12) => \res0__0_n_93\,
      P(11) => \res0__0_n_94\,
      P(10) => \res0__0_n_95\,
      P(9) => \res0__0_n_96\,
      P(8) => \res0__0_n_97\,
      P(7) => \res0__0_n_98\,
      P(6) => \res0__0_n_99\,
      P(5) => \res0__0_n_100\,
      P(4) => \res0__0_n_101\,
      P(3) => \res0__0_n_102\,
      P(2) => \res0__0_n_103\,
      P(1) => \res0__0_n_104\,
      P(0) => \res0__0_n_105\,
      PATTERNBDETECT => \NLW_res0__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_res0__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => res0_n_106,
      PCIN(46) => res0_n_107,
      PCIN(45) => res0_n_108,
      PCIN(44) => res0_n_109,
      PCIN(43) => res0_n_110,
      PCIN(42) => res0_n_111,
      PCIN(41) => res0_n_112,
      PCIN(40) => res0_n_113,
      PCIN(39) => res0_n_114,
      PCIN(38) => res0_n_115,
      PCIN(37) => res0_n_116,
      PCIN(36) => res0_n_117,
      PCIN(35) => res0_n_118,
      PCIN(34) => res0_n_119,
      PCIN(33) => res0_n_120,
      PCIN(32) => res0_n_121,
      PCIN(31) => res0_n_122,
      PCIN(30) => res0_n_123,
      PCIN(29) => res0_n_124,
      PCIN(28) => res0_n_125,
      PCIN(27) => res0_n_126,
      PCIN(26) => res0_n_127,
      PCIN(25) => res0_n_128,
      PCIN(24) => res0_n_129,
      PCIN(23) => res0_n_130,
      PCIN(22) => res0_n_131,
      PCIN(21) => res0_n_132,
      PCIN(20) => res0_n_133,
      PCIN(19) => res0_n_134,
      PCIN(18) => res0_n_135,
      PCIN(17) => res0_n_136,
      PCIN(16) => res0_n_137,
      PCIN(15) => res0_n_138,
      PCIN(14) => res0_n_139,
      PCIN(13) => res0_n_140,
      PCIN(12) => res0_n_141,
      PCIN(11) => res0_n_142,
      PCIN(10) => res0_n_143,
      PCIN(9) => res0_n_144,
      PCIN(8) => res0_n_145,
      PCIN(7) => res0_n_146,
      PCIN(6) => res0_n_147,
      PCIN(5) => res0_n_148,
      PCIN(4) => res0_n_149,
      PCIN(3) => res0_n_150,
      PCIN(2) => res0_n_151,
      PCIN(1) => res0_n_152,
      PCIN(0) => res0_n_153,
      PCOUT(47 downto 0) => \NLW_res0__0_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => p_0_in,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_res0__0_UNDERFLOW_UNCONNECTED\,
      XOROUT(7 downto 0) => \NLW_res0__0_XOROUT_UNCONNECTED\(7 downto 0)
    );
\res0__1\: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 0,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => i_dataa(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_res0__1_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 15) => B"000",
      B(14) => \res0__1_i_1_n_0\,
      B(13) => \res0__1_i_2_n_0\,
      B(12) => \res0__1_i_3_n_0\,
      B(11) => \res0__1_i_4_n_0\,
      B(10) => \res0__1_i_5_n_0\,
      B(9) => \res0__1_i_6_n_0\,
      B(8) => \res0__1_i_7_n_0\,
      B(7) => \res0__1_i_8_n_0\,
      B(6) => \res0__1_i_9_n_0\,
      B(5) => \res0__1_i_10_n_0\,
      B(4) => \res0__1_i_11_n_0\,
      B(3) => \res0__1_i_12_n_0\,
      B(2) => \res0__1_i_13_n_0\,
      B(1) => \res0__1_i_14_n_0\,
      B(0) => \res0__1_i_15_n_0\,
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_res0__1_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_res0__1_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_res0__1_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_res0__1_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(8 downto 0) => B"000000101",
      OVERFLOW => \NLW_res0__1_OVERFLOW_UNCONNECTED\,
      P(47) => \res0__1_n_58\,
      P(46) => \res0__1_n_59\,
      P(45) => \res0__1_n_60\,
      P(44) => \res0__1_n_61\,
      P(43) => \res0__1_n_62\,
      P(42) => \res0__1_n_63\,
      P(41) => \res0__1_n_64\,
      P(40) => \res0__1_n_65\,
      P(39) => \res0__1_n_66\,
      P(38) => \res0__1_n_67\,
      P(37) => \res0__1_n_68\,
      P(36) => \res0__1_n_69\,
      P(35) => \res0__1_n_70\,
      P(34) => \res0__1_n_71\,
      P(33) => \res0__1_n_72\,
      P(32) => \res0__1_n_73\,
      P(31) => \res0__1_n_74\,
      P(30) => \res0__1_n_75\,
      P(29) => \res0__1_n_76\,
      P(28) => \res0__1_n_77\,
      P(27) => \res0__1_n_78\,
      P(26) => \res0__1_n_79\,
      P(25) => \res0__1_n_80\,
      P(24) => \res0__1_n_81\,
      P(23) => \res0__1_n_82\,
      P(22) => \res0__1_n_83\,
      P(21) => \res0__1_n_84\,
      P(20) => \res0__1_n_85\,
      P(19) => \res0__1_n_86\,
      P(18) => \res0__1_n_87\,
      P(17) => \res0__1_n_88\,
      P(16) => \res0__1_n_89\,
      P(15) => \res0__1_n_90\,
      P(14) => \res0__1_n_91\,
      P(13) => \res0__1_n_92\,
      P(12) => \res0__1_n_93\,
      P(11) => \res0__1_n_94\,
      P(10) => \res0__1_n_95\,
      P(9) => \res0__1_n_96\,
      P(8) => \res0__1_n_97\,
      P(7) => \res0__1_n_98\,
      P(6) => \res0__1_n_99\,
      P(5) => \res0__1_n_100\,
      P(4) => \res0__1_n_101\,
      P(3) => \res0__1_n_102\,
      P(2) => \res0__1_n_103\,
      P(1) => \res0__1_n_104\,
      P(0) => \res0__1_n_105\,
      PATTERNBDETECT => \NLW_res0__1_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_res0__1_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => \res0__1_n_106\,
      PCOUT(46) => \res0__1_n_107\,
      PCOUT(45) => \res0__1_n_108\,
      PCOUT(44) => \res0__1_n_109\,
      PCOUT(43) => \res0__1_n_110\,
      PCOUT(42) => \res0__1_n_111\,
      PCOUT(41) => \res0__1_n_112\,
      PCOUT(40) => \res0__1_n_113\,
      PCOUT(39) => \res0__1_n_114\,
      PCOUT(38) => \res0__1_n_115\,
      PCOUT(37) => \res0__1_n_116\,
      PCOUT(36) => \res0__1_n_117\,
      PCOUT(35) => \res0__1_n_118\,
      PCOUT(34) => \res0__1_n_119\,
      PCOUT(33) => \res0__1_n_120\,
      PCOUT(32) => \res0__1_n_121\,
      PCOUT(31) => \res0__1_n_122\,
      PCOUT(30) => \res0__1_n_123\,
      PCOUT(29) => \res0__1_n_124\,
      PCOUT(28) => \res0__1_n_125\,
      PCOUT(27) => \res0__1_n_126\,
      PCOUT(26) => \res0__1_n_127\,
      PCOUT(25) => \res0__1_n_128\,
      PCOUT(24) => \res0__1_n_129\,
      PCOUT(23) => \res0__1_n_130\,
      PCOUT(22) => \res0__1_n_131\,
      PCOUT(21) => \res0__1_n_132\,
      PCOUT(20) => \res0__1_n_133\,
      PCOUT(19) => \res0__1_n_134\,
      PCOUT(18) => \res0__1_n_135\,
      PCOUT(17) => \res0__1_n_136\,
      PCOUT(16) => \res0__1_n_137\,
      PCOUT(15) => \res0__1_n_138\,
      PCOUT(14) => \res0__1_n_139\,
      PCOUT(13) => \res0__1_n_140\,
      PCOUT(12) => \res0__1_n_141\,
      PCOUT(11) => \res0__1_n_142\,
      PCOUT(10) => \res0__1_n_143\,
      PCOUT(9) => \res0__1_n_144\,
      PCOUT(8) => \res0__1_n_145\,
      PCOUT(7) => \res0__1_n_146\,
      PCOUT(6) => \res0__1_n_147\,
      PCOUT(5) => \res0__1_n_148\,
      PCOUT(4) => \res0__1_n_149\,
      PCOUT(3) => \res0__1_n_150\,
      PCOUT(2) => \res0__1_n_151\,
      PCOUT(1) => \res0__1_n_152\,
      PCOUT(0) => \res0__1_n_153\,
      RSTA => p_0_in,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_res0__1_UNDERFLOW_UNCONNECTED\,
      XOROUT(7 downto 0) => \NLW_res0__1_XOROUT_UNCONNECTED\(7 downto 0)
    );
\res0__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => r_a(31),
      I1 => r_b(31),
      I2 => \r_op_reg_n_0_[0]\,
      O => \res0__1_i_1_n_0\
    );
\res0__1_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => r_a(22),
      I1 => r_b(22),
      I2 => \r_op_reg_n_0_[0]\,
      O => \res0__1_i_10_n_0\
    );
\res0__1_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => r_a(21),
      I1 => r_b(21),
      I2 => \r_op_reg_n_0_[0]\,
      O => \res0__1_i_11_n_0\
    );
\res0__1_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => r_a(20),
      I1 => r_b(20),
      I2 => \r_op_reg_n_0_[0]\,
      O => \res0__1_i_12_n_0\
    );
\res0__1_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => r_a(19),
      I1 => r_b(19),
      I2 => \r_op_reg_n_0_[0]\,
      O => \res0__1_i_13_n_0\
    );
\res0__1_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => r_a(18),
      I1 => r_b(18),
      I2 => \r_op_reg_n_0_[0]\,
      O => \res0__1_i_14_n_0\
    );
\res0__1_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => r_a(17),
      I1 => r_b(17),
      I2 => \r_op_reg_n_0_[0]\,
      O => \res0__1_i_15_n_0\
    );
\res0__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => r_a(30),
      I1 => r_b(30),
      I2 => \r_op_reg_n_0_[0]\,
      O => \res0__1_i_2_n_0\
    );
\res0__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => r_a(29),
      I1 => r_b(29),
      I2 => \r_op_reg_n_0_[0]\,
      O => \res0__1_i_3_n_0\
    );
\res0__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => r_a(28),
      I1 => r_b(28),
      I2 => \r_op_reg_n_0_[0]\,
      O => \res0__1_i_4_n_0\
    );
\res0__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => r_a(27),
      I1 => r_b(27),
      I2 => \r_op_reg_n_0_[0]\,
      O => \res0__1_i_5_n_0\
    );
\res0__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => r_a(26),
      I1 => r_b(26),
      I2 => \r_op_reg_n_0_[0]\,
      O => \res0__1_i_6_n_0\
    );
\res0__1_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => r_a(25),
      I1 => r_b(25),
      I2 => \r_op_reg_n_0_[0]\,
      O => \res0__1_i_7_n_0\
    );
\res0__1_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => r_a(24),
      I1 => r_b(24),
      I2 => \r_op_reg_n_0_[0]\,
      O => \res0__1_i_8_n_0\
    );
\res0__1_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => r_a(23),
      I1 => r_b(23),
      I2 => \r_op_reg_n_0_[0]\,
      O => \res0__1_i_9_n_0\
    );
res0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => r_a(16),
      I1 => r_b(16),
      I2 => \r_op_reg_n_0_[0]\,
      O => res0_i_1_n_0
    );
res0_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => r_a(7),
      I1 => r_b(7),
      I2 => \r_op_reg_n_0_[0]\,
      O => res0_i_10_n_0
    );
res0_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => r_a(6),
      I1 => r_b(6),
      I2 => \r_op_reg_n_0_[0]\,
      O => res0_i_11_n_0
    );
res0_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => r_a(5),
      I1 => r_b(5),
      I2 => \r_op_reg_n_0_[0]\,
      O => res0_i_12_n_0
    );
res0_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => r_a(4),
      I1 => r_b(4),
      I2 => \r_op_reg_n_0_[0]\,
      O => res0_i_13_n_0
    );
res0_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => r_a(3),
      I1 => r_b(3),
      I2 => \r_op_reg_n_0_[0]\,
      O => res0_i_14_n_0
    );
res0_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => r_a(2),
      I1 => r_b(2),
      I2 => \r_op_reg_n_0_[0]\,
      O => res0_i_15_n_0
    );
res0_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => r_a(1),
      I1 => r_b(1),
      I2 => \r_op_reg_n_0_[0]\,
      O => res0_i_16_n_0
    );
res0_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => r_a(0),
      I1 => r_b(0),
      I2 => \r_op_reg_n_0_[0]\,
      O => res0_i_17_n_0
    );
res0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => r_a(15),
      I1 => r_b(15),
      I2 => \r_op_reg_n_0_[0]\,
      O => res0_i_2_n_0
    );
res0_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => r_a(14),
      I1 => r_b(14),
      I2 => \r_op_reg_n_0_[0]\,
      O => res0_i_3_n_0
    );
res0_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => r_a(13),
      I1 => r_b(13),
      I2 => \r_op_reg_n_0_[0]\,
      O => res0_i_4_n_0
    );
res0_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => r_a(12),
      I1 => r_b(12),
      I2 => \r_op_reg_n_0_[0]\,
      O => res0_i_5_n_0
    );
res0_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => r_a(11),
      I1 => r_b(11),
      I2 => \r_op_reg_n_0_[0]\,
      O => res0_i_6_n_0
    );
res0_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => r_a(10),
      I1 => r_b(10),
      I2 => \r_op_reg_n_0_[0]\,
      O => res0_i_7_n_0
    );
res0_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => r_a(9),
      I1 => r_b(9),
      I2 => \r_op_reg_n_0_[0]\,
      O => res0_i_8_n_0
    );
res0_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => r_a(8),
      I1 => r_b(8),
      I2 => \r_op_reg_n_0_[0]\,
      O => res0_i_9_n_0
    );
\res[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \res_reg[7]_i_2_n_15\,
      I1 => \r_op_reg_n_0_[1]\,
      I2 => r_a(0),
      I3 => r_b(0),
      O => \res[0]_i_1_n_0\
    );
\res[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88BB88B8BB8"
    )
        port map (
      I0 => \res_reg[15]_i_2_n_13\,
      I1 => \r_op_reg_n_0_[1]\,
      I2 => \add_sub_0/carry_10\,
      I3 => r_a(10),
      I4 => \r_op_reg_n_0_[0]\,
      I5 => r_b(10),
      O => \res[10]_i_1_n_0\
    );
\res[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2FFFFE800E8B200"
    )
        port map (
      I0 => \add_sub_0/carry_8\,
      I1 => r_b(8),
      I2 => r_a(8),
      I3 => \r_op_reg_n_0_[0]\,
      I4 => r_b(9),
      I5 => r_a(9),
      O => \add_sub_0/carry_10\
    );
\res[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88BB88B8BB8"
    )
        port map (
      I0 => \res_reg[15]_i_2_n_12\,
      I1 => \r_op_reg_n_0_[1]\,
      I2 => \add_sub_0/carry_11\,
      I3 => r_a(11),
      I4 => \r_op_reg_n_0_[0]\,
      I5 => r_b(11),
      O => \res[11]_i_1_n_0\
    );
\res[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888B8BBBBBB8B888"
    )
        port map (
      I0 => \res_reg[15]_i_2_n_11\,
      I1 => \r_op_reg_n_0_[1]\,
      I2 => r_a(11),
      I3 => \add_sub_0/b020_out\,
      I4 => \add_sub_0/carry_11\,
      I5 => \add_sub_0/GEN_ADD_SUB[12].fa/s0__0\,
      O => \res[12]_i_1_n_0\
    );
\res[12]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => r_b(4),
      I1 => \r_op_reg_n_0_[0]\,
      I2 => r_a(4),
      O => \add_sub_0/GEN_ADD_SUB[4].fa/s0__0\
    );
\res[12]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_op_reg_n_0_[0]\,
      I1 => r_b(3),
      O => \add_sub_0/b04_out\
    );
\res[12]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_op_reg_n_0_[0]\,
      I1 => r_b(2),
      O => \add_sub_0/b02_out\
    );
\res[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_op_reg_n_0_[0]\,
      I1 => r_b(11),
      O => \add_sub_0/b020_out\
    );
\res[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2FFFFE800E8B200"
    )
        port map (
      I0 => \add_sub_0/carry_9\,
      I1 => r_b(9),
      I2 => r_a(9),
      I3 => \r_op_reg_n_0_[0]\,
      I4 => r_b(10),
      I5 => r_a(10),
      O => \add_sub_0/carry_11\
    );
\res[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => r_b(12),
      I1 => \r_op_reg_n_0_[0]\,
      I2 => r_a(12),
      O => \add_sub_0/GEN_ADD_SUB[12].fa/s0__0\
    );
\res[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2FFFFE800E8B200"
    )
        port map (
      I0 => \add_sub_0/carry_7\,
      I1 => r_b(7),
      I2 => r_a(7),
      I3 => \r_op_reg_n_0_[0]\,
      I4 => r_b(8),
      I5 => r_a(8),
      O => \add_sub_0/carry_9\
    );
\res[12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEE0FEE00000"
    )
        port map (
      I0 => \cout00_out__3\,
      I1 => \cout0__3\,
      I2 => \add_sub_0/b08_out\,
      I3 => r_a(5),
      I4 => \add_sub_0/b010_out\,
      I5 => r_a(6),
      O => \add_sub_0/carry_7\
    );
\res[12]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A880A8808080"
    )
        port map (
      I0 => \add_sub_0/GEN_ADD_SUB[4].fa/s0__0\,
      I1 => r_a(3),
      I2 => \add_sub_0/b04_out\,
      I3 => r_a(2),
      I4 => \add_sub_0/b02_out\,
      I5 => \add_sub_0/carry_2\,
      O => \cout00_out__3\
    );
\res[12]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => r_a(4),
      I1 => r_b(4),
      I2 => \r_op_reg_n_0_[0]\,
      O => \cout0__3\
    );
\res[12]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_op_reg_n_0_[0]\,
      I1 => r_b(5),
      O => \add_sub_0/b08_out\
    );
\res[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88BB88B8BB8"
    )
        port map (
      I0 => \res_reg[15]_i_2_n_10\,
      I1 => \r_op_reg_n_0_[1]\,
      I2 => \add_sub_0/carry_13\,
      I3 => r_a(13),
      I4 => \r_op_reg_n_0_[0]\,
      I5 => r_b(13),
      O => \res[13]_i_1_n_0\
    );
\res[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888B8BBBBBB8B888"
    )
        port map (
      I0 => \res_reg[15]_i_2_n_9\,
      I1 => \r_op_reg_n_0_[1]\,
      I2 => r_a(13),
      I3 => \add_sub_0/b024_out\,
      I4 => \add_sub_0/carry_13\,
      I5 => \add_sub_0/GEN_ADD_SUB[14].fa/s0__0\,
      O => \res[14]_i_1_n_0\
    );
\res[14]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_op_reg_n_0_[0]\,
      I1 => r_b(13),
      O => \add_sub_0/b024_out\
    );
\res[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2FFFFE800E8B200"
    )
        port map (
      I0 => \add_sub_0/carry_11\,
      I1 => r_b(11),
      I2 => r_a(11),
      I3 => \r_op_reg_n_0_[0]\,
      I4 => r_b(12),
      I5 => r_a(12),
      O => \add_sub_0/carry_13\
    );
\res[14]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => r_b(14),
      I1 => \r_op_reg_n_0_[0]\,
      I2 => r_a(14),
      O => \add_sub_0/GEN_ADD_SUB[14].fa/s0__0\
    );
\res[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88BB88B8BB8"
    )
        port map (
      I0 => \res_reg[15]_i_2_n_8\,
      I1 => \r_op_reg_n_0_[1]\,
      I2 => \add_sub_0/carry_15\,
      I3 => r_a(15),
      I4 => \r_op_reg_n_0_[0]\,
      I5 => r_b(15),
      O => \res[15]_i_1_n_0\
    );
\res[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2FFFFE800E8B200"
    )
        port map (
      I0 => \add_sub_0/carry_13\,
      I1 => r_b(13),
      I2 => r_a(13),
      I3 => \r_op_reg_n_0_[0]\,
      I4 => r_b(14),
      I5 => r_a(14),
      O => \add_sub_0/carry_15\
    );
\res[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88BB88B8BB8"
    )
        port map (
      I0 => \res_reg[23]_i_2_n_15\,
      I1 => \r_op_reg_n_0_[1]\,
      I2 => \add_sub_0/carry_16\,
      I3 => r_a(16),
      I4 => \r_op_reg_n_0_[0]\,
      I5 => r_b(16),
      O => \res[16]_i_1_n_0\
    );
\res[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888B8BBBBBB8B888"
    )
        port map (
      I0 => \res_reg[23]_i_2_n_14\,
      I1 => \r_op_reg_n_0_[1]\,
      I2 => r_a(16),
      I3 => \add_sub_0/b030_out\,
      I4 => \add_sub_0/carry_16\,
      I5 => \add_sub_0/GEN_ADD_SUB[17].fa/s0__0\,
      O => \res[17]_i_1_n_0\
    );
\res[17]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_op_reg_n_0_[0]\,
      I1 => r_b(7),
      O => \add_sub_0/b012_out\
    );
\res[17]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_op_reg_n_0_[0]\,
      I1 => r_b(16),
      O => \add_sub_0/b030_out\
    );
\res[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2FFFFE800E8B200"
    )
        port map (
      I0 => \add_sub_0/carry_14\,
      I1 => r_b(14),
      I2 => r_a(14),
      I3 => \r_op_reg_n_0_[0]\,
      I4 => r_b(15),
      I5 => r_a(15),
      O => \add_sub_0/carry_16\
    );
\res[17]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => r_b(17),
      I1 => \r_op_reg_n_0_[0]\,
      I2 => r_a(17),
      O => \add_sub_0/GEN_ADD_SUB[17].fa/s0__0\
    );
\res[17]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2FFFFE800E8B200"
    )
        port map (
      I0 => \add_sub_0/carry_12\,
      I1 => r_b(12),
      I2 => r_a(12),
      I3 => \r_op_reg_n_0_[0]\,
      I4 => r_b(13),
      I5 => r_a(13),
      O => \add_sub_0/carry_14\
    );
\res[17]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEE0FEE00000"
    )
        port map (
      I0 => \cout00_out__8\,
      I1 => \cout0__8\,
      I2 => \add_sub_0/b018_out\,
      I3 => r_a(10),
      I4 => \add_sub_0/b020_out\,
      I5 => r_a(11),
      O => \add_sub_0/carry_12\
    );
\res[17]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A880A8808080"
    )
        port map (
      I0 => \add_sub_0/GEN_ADD_SUB[9].fa/s0__0\,
      I1 => r_a(8),
      I2 => \add_sub_0/b014_out\,
      I3 => r_a(7),
      I4 => \add_sub_0/b012_out\,
      I5 => \add_sub_0/carry_7\,
      O => \cout00_out__8\
    );
\res[17]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => r_a(9),
      I1 => r_b(9),
      I2 => \r_op_reg_n_0_[0]\,
      O => \cout0__8\
    );
\res[17]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_op_reg_n_0_[0]\,
      I1 => r_b(10),
      O => \add_sub_0/b018_out\
    );
\res[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88BB88B8BB8"
    )
        port map (
      I0 => \res_reg[23]_i_2_n_13\,
      I1 => \r_op_reg_n_0_[1]\,
      I2 => \add_sub_0/carry_18\,
      I3 => r_a(18),
      I4 => \r_op_reg_n_0_[0]\,
      I5 => r_b(18),
      O => \res[18]_i_1_n_0\
    );
\res[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888B8BBBBBB8B888"
    )
        port map (
      I0 => \res_reg[23]_i_2_n_12\,
      I1 => \r_op_reg_n_0_[1]\,
      I2 => r_a(18),
      I3 => \add_sub_0/b034_out\,
      I4 => \add_sub_0/carry_18\,
      I5 => \add_sub_0/GEN_ADD_SUB[19].fa/s0__0\,
      O => \res[19]_i_1_n_0\
    );
\res[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_op_reg_n_0_[0]\,
      I1 => r_b(18),
      O => \add_sub_0/b034_out\
    );
\res[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2FFFFE800E8B200"
    )
        port map (
      I0 => \add_sub_0/carry_16\,
      I1 => r_b(16),
      I2 => r_a(16),
      I3 => \r_op_reg_n_0_[0]\,
      I4 => r_b(17),
      I5 => r_a(17),
      O => \add_sub_0/carry_18\
    );
\res[19]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => r_b(19),
      I1 => \r_op_reg_n_0_[0]\,
      I2 => r_a(19),
      O => \add_sub_0/GEN_ADD_SUB[19].fa/s0__0\
    );
\res[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B888BBBB8BBB888"
    )
        port map (
      I0 => \res_reg[7]_i_2_n_14\,
      I1 => \r_op_reg_n_0_[1]\,
      I2 => r_a(0),
      I3 => r_b(0),
      I4 => \r_op_reg_n_0_[0]\,
      I5 => \add_sub_0/GEN_ADD_SUB[1].fa/s0__0\,
      O => \res[1]_i_1_n_0\
    );
\res[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => r_b(1),
      I1 => \r_op_reg_n_0_[0]\,
      I2 => r_a(1),
      O => \add_sub_0/GEN_ADD_SUB[1].fa/s0__0\
    );
\res[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88BB88B8BB8"
    )
        port map (
      I0 => \res_reg[23]_i_2_n_11\,
      I1 => \r_op_reg_n_0_[1]\,
      I2 => \add_sub_0/carry_20\,
      I3 => r_a(20),
      I4 => \r_op_reg_n_0_[0]\,
      I5 => r_b(20),
      O => \res[20]_i_1_n_0\
    );
\res[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2FFFFE800E8B200"
    )
        port map (
      I0 => \add_sub_0/carry_18\,
      I1 => r_b(18),
      I2 => r_a(18),
      I3 => \r_op_reg_n_0_[0]\,
      I4 => r_b(19),
      I5 => r_a(19),
      O => \add_sub_0/carry_20\
    );
\res[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88BB88B8BB8"
    )
        port map (
      I0 => \res_reg[23]_i_2_n_10\,
      I1 => \r_op_reg_n_0_[1]\,
      I2 => \add_sub_0/carry_21\,
      I3 => r_a(21),
      I4 => \r_op_reg_n_0_[0]\,
      I5 => r_b(21),
      O => \res[21]_i_1_n_0\
    );
\res[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888B8BBBBBB8B888"
    )
        port map (
      I0 => \res_reg[23]_i_2_n_9\,
      I1 => \r_op_reg_n_0_[1]\,
      I2 => r_a(21),
      I3 => \add_sub_0/b040_out\,
      I4 => \add_sub_0/carry_21\,
      I5 => \add_sub_0/GEN_ADD_SUB[22].fa/s0__0\,
      O => \res[22]_i_1_n_0\
    );
\res[22]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_op_reg_n_0_[0]\,
      I1 => r_b(12),
      O => \add_sub_0/b022_out\
    );
\res[22]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_op_reg_n_0_[0]\,
      I1 => r_b(21),
      O => \add_sub_0/b040_out\
    );
\res[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2FFFFE800E8B200"
    )
        port map (
      I0 => \add_sub_0/carry_19\,
      I1 => r_b(19),
      I2 => r_a(19),
      I3 => \r_op_reg_n_0_[0]\,
      I4 => r_b(20),
      I5 => r_a(20),
      O => \add_sub_0/carry_21\
    );
\res[22]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => r_b(22),
      I1 => \r_op_reg_n_0_[0]\,
      I2 => r_a(22),
      O => \add_sub_0/GEN_ADD_SUB[22].fa/s0__0\
    );
\res[22]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2FFFFE800E8B200"
    )
        port map (
      I0 => \add_sub_0/carry_17\,
      I1 => r_b(17),
      I2 => r_a(17),
      I3 => \r_op_reg_n_0_[0]\,
      I4 => r_b(18),
      I5 => r_a(18),
      O => \add_sub_0/carry_19\
    );
\res[22]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEE0FEE00000"
    )
        port map (
      I0 => \cout00_out__13\,
      I1 => \cout0__13\,
      I2 => \add_sub_0/b028_out\,
      I3 => r_a(15),
      I4 => \add_sub_0/b030_out\,
      I5 => r_a(16),
      O => \add_sub_0/carry_17\
    );
\res[22]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A880A8808080"
    )
        port map (
      I0 => \add_sub_0/GEN_ADD_SUB[14].fa/s0__0\,
      I1 => r_a(13),
      I2 => \add_sub_0/b024_out\,
      I3 => r_a(12),
      I4 => \add_sub_0/b022_out\,
      I5 => \add_sub_0/carry_12\,
      O => \cout00_out__13\
    );
\res[22]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => r_a(14),
      I1 => r_b(14),
      I2 => \r_op_reg_n_0_[0]\,
      O => \cout0__13\
    );
\res[22]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_op_reg_n_0_[0]\,
      I1 => r_b(15),
      O => \add_sub_0/b028_out\
    );
\res[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88BB88B8BB8"
    )
        port map (
      I0 => \res_reg[23]_i_2_n_8\,
      I1 => \r_op_reg_n_0_[1]\,
      I2 => \add_sub_0/carry_23\,
      I3 => r_a(23),
      I4 => \r_op_reg_n_0_[0]\,
      I5 => r_b(23),
      O => \res[23]_i_1_n_0\
    );
\res[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res0__1_n_99\,
      I1 => \res0__0_n_99\,
      O => \res[23]_i_3_n_0\
    );
\res[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res0__1_n_100\,
      I1 => \res0__0_n_100\,
      O => \res[23]_i_4_n_0\
    );
\res[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res0__1_n_101\,
      I1 => \res0__0_n_101\,
      O => \res[23]_i_5_n_0\
    );
\res[23]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res0__1_n_102\,
      I1 => \res0__0_n_102\,
      O => \res[23]_i_6_n_0\
    );
\res[23]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res0__1_n_103\,
      I1 => \res0__0_n_103\,
      O => \res[23]_i_7_n_0\
    );
\res[23]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res0__1_n_104\,
      I1 => \res0__0_n_104\,
      O => \res[23]_i_8_n_0\
    );
\res[23]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res0__1_n_105\,
      I1 => \res0__0_n_105\,
      O => \res[23]_i_9_n_0\
    );
\res[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888B8BBBBBB8B888"
    )
        port map (
      I0 => \res_reg[31]_i_3_n_15\,
      I1 => \r_op_reg_n_0_[1]\,
      I2 => r_a(23),
      I3 => \add_sub_0/b044_out\,
      I4 => \add_sub_0/carry_23\,
      I5 => \add_sub_0/GEN_ADD_SUB[24].fa/s0__0\,
      O => \res[24]_i_1_n_0\
    );
\res[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_op_reg_n_0_[0]\,
      I1 => r_b(23),
      O => \add_sub_0/b044_out\
    );
\res[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2FFFFE800E8B200"
    )
        port map (
      I0 => \add_sub_0/carry_21\,
      I1 => r_b(21),
      I2 => r_a(21),
      I3 => \r_op_reg_n_0_[0]\,
      I4 => r_b(22),
      I5 => r_a(22),
      O => \add_sub_0/carry_23\
    );
\res[24]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => r_b(24),
      I1 => \r_op_reg_n_0_[0]\,
      I2 => r_a(24),
      O => \add_sub_0/GEN_ADD_SUB[24].fa/s0__0\
    );
\res[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88BB88B8BB8"
    )
        port map (
      I0 => \res_reg[31]_i_3_n_14\,
      I1 => \r_op_reg_n_0_[1]\,
      I2 => \add_sub_0/carry_25\,
      I3 => r_a(25),
      I4 => \r_op_reg_n_0_[0]\,
      I5 => r_b(25),
      O => \res[25]_i_1_n_0\
    );
\res[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2FFFFE800E8B200"
    )
        port map (
      I0 => \add_sub_0/carry_23\,
      I1 => r_b(23),
      I2 => r_a(23),
      I3 => \r_op_reg_n_0_[0]\,
      I4 => r_b(24),
      I5 => r_a(24),
      O => \add_sub_0/carry_25\
    );
\res[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88BB88B8BB8"
    )
        port map (
      I0 => \res_reg[31]_i_3_n_13\,
      I1 => \r_op_reg_n_0_[1]\,
      I2 => \add_sub_0/carry_26\,
      I3 => r_a(26),
      I4 => \r_op_reg_n_0_[0]\,
      I5 => r_b(26),
      O => \res[26]_i_1_n_0\
    );
\res[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2FFFFE800E8B200"
    )
        port map (
      I0 => \add_sub_0/carry_24\,
      I1 => r_b(24),
      I2 => r_a(24),
      I3 => \r_op_reg_n_0_[0]\,
      I4 => r_b(25),
      I5 => r_a(25),
      O => \add_sub_0/carry_26\
    );
\res[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2FFFFE800E8B200"
    )
        port map (
      I0 => \add_sub_0/carry_22\,
      I1 => r_b(22),
      I2 => r_a(22),
      I3 => \r_op_reg_n_0_[0]\,
      I4 => r_b(23),
      I5 => r_a(23),
      O => \add_sub_0/carry_24\
    );
\res[26]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEE0FEE00000"
    )
        port map (
      I0 => \cout00_out__18\,
      I1 => \cout0__18\,
      I2 => \add_sub_0/b038_out\,
      I3 => r_a(20),
      I4 => \add_sub_0/b040_out\,
      I5 => r_a(21),
      O => \add_sub_0/carry_22\
    );
\res[26]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A880A8808080"
    )
        port map (
      I0 => \add_sub_0/GEN_ADD_SUB[19].fa/s0__0\,
      I1 => r_a(18),
      I2 => \add_sub_0/b034_out\,
      I3 => r_a(17),
      I4 => \add_sub_0/b032_out\,
      I5 => \add_sub_0/carry_17\,
      O => \cout00_out__18\
    );
\res[26]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => r_a(19),
      I1 => r_b(19),
      I2 => \r_op_reg_n_0_[0]\,
      O => \cout0__18\
    );
\res[26]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_op_reg_n_0_[0]\,
      I1 => r_b(20),
      O => \add_sub_0/b038_out\
    );
\res[26]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_op_reg_n_0_[0]\,
      I1 => r_b(17),
      O => \add_sub_0/b032_out\
    );
\res[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88BB88B8BB8"
    )
        port map (
      I0 => \res_reg[31]_i_3_n_12\,
      I1 => \r_op_reg_n_0_[1]\,
      I2 => \add_sub_0/carry_27\,
      I3 => r_a(27),
      I4 => \r_op_reg_n_0_[0]\,
      I5 => r_b(27),
      O => \res[27]_i_1_n_0\
    );
\res[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2FFFFE800E8B200"
    )
        port map (
      I0 => \add_sub_0/carry_25\,
      I1 => r_b(25),
      I2 => r_a(25),
      I3 => \r_op_reg_n_0_[0]\,
      I4 => r_b(26),
      I5 => r_a(26),
      O => \add_sub_0/carry_27\
    );
\res[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88BB88B8BB8"
    )
        port map (
      I0 => \res_reg[31]_i_3_n_11\,
      I1 => \r_op_reg_n_0_[1]\,
      I2 => \add_sub_0/carry_28\,
      I3 => r_a(28),
      I4 => \r_op_reg_n_0_[0]\,
      I5 => r_b(28),
      O => \res[28]_i_1_n_0\
    );
\res[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2FFFFE800E8B200"
    )
        port map (
      I0 => \add_sub_0/carry_26\,
      I1 => r_b(26),
      I2 => r_a(26),
      I3 => \r_op_reg_n_0_[0]\,
      I4 => r_b(27),
      I5 => r_a(27),
      O => \add_sub_0/carry_28\
    );
\res[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88BB88B8BB8"
    )
        port map (
      I0 => \res_reg[31]_i_3_n_10\,
      I1 => \r_op_reg_n_0_[1]\,
      I2 => \add_sub_0/carry_29\,
      I3 => r_a(29),
      I4 => \r_op_reg_n_0_[0]\,
      I5 => r_b(29),
      O => \res[29]_i_1_n_0\
    );
\res[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2FFFFE800E8B200"
    )
        port map (
      I0 => \add_sub_0/carry_27\,
      I1 => r_b(27),
      I2 => r_a(27),
      I3 => \r_op_reg_n_0_[0]\,
      I4 => r_b(28),
      I5 => r_a(28),
      O => \add_sub_0/carry_29\
    );
\res[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88BB88B8BB8"
    )
        port map (
      I0 => \res_reg[7]_i_2_n_13\,
      I1 => \r_op_reg_n_0_[1]\,
      I2 => \add_sub_0/carry_2\,
      I3 => r_a(2),
      I4 => \r_op_reg_n_0_[0]\,
      I5 => r_b(2),
      O => \res[2]_i_1_n_0\
    );
\res[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFF808D0"
    )
        port map (
      I0 => r_b(0),
      I1 => r_a(0),
      I2 => \r_op_reg_n_0_[0]\,
      I3 => r_b(1),
      I4 => r_a(1),
      O => \add_sub_0/carry_2\
    );
\res[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88BB88B8BB8"
    )
        port map (
      I0 => \res_reg[31]_i_3_n_9\,
      I1 => \r_op_reg_n_0_[1]\,
      I2 => \add_sub_0/carry_30\,
      I3 => r_a(30),
      I4 => \r_op_reg_n_0_[0]\,
      I5 => r_b(30),
      O => \res[30]_i_1_n_0\
    );
\res[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rstn,
      O => p_0_in
    );
\res[31]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res0__1_n_94\,
      I1 => \res0__0_n_94\,
      O => \res[31]_i_10_n_0\
    );
\res[31]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res0__1_n_95\,
      I1 => \res0__0_n_95\,
      O => \res[31]_i_11_n_0\
    );
\res[31]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res0__1_n_96\,
      I1 => \res0__0_n_96\,
      O => \res[31]_i_12_n_0\
    );
\res[31]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res0__1_n_97\,
      I1 => \res0__0_n_97\,
      O => \res[31]_i_13_n_0\
    );
\res[31]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res0__1_n_98\,
      I1 => \res0__0_n_98\,
      O => \res[31]_i_14_n_0\
    );
\res[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888B8BBBBBB8B888"
    )
        port map (
      I0 => \res_reg[31]_i_3_n_8\,
      I1 => \r_op_reg_n_0_[1]\,
      I2 => r_a(30),
      I3 => \add_sub_0/b058_out\,
      I4 => \add_sub_0/carry_30\,
      I5 => \add_sub_0/GEN_ADD_SUB[31].fa/s0__0\,
      O => \res[31]_i_2_n_0\
    );
\res[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_op_reg_n_0_[0]\,
      I1 => r_b(30),
      O => \add_sub_0/b058_out\
    );
\res[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2FFFFE800E8B200"
    )
        port map (
      I0 => \add_sub_0/carry_28\,
      I1 => r_b(28),
      I2 => r_a(28),
      I3 => \r_op_reg_n_0_[0]\,
      I4 => r_b(29),
      I5 => r_a(29),
      O => \add_sub_0/carry_30\
    );
\res[31]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => r_b(31),
      I1 => \r_op_reg_n_0_[0]\,
      I2 => r_a(31),
      O => \add_sub_0/GEN_ADD_SUB[31].fa/s0__0\
    );
\res[31]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res0__1_n_91\,
      I1 => \res0__0_n_91\,
      O => \res[31]_i_7_n_0\
    );
\res[31]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res0__1_n_92\,
      I1 => \res0__0_n_92\,
      O => \res[31]_i_8_n_0\
    );
\res[31]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res0__1_n_93\,
      I1 => \res0__0_n_93\,
      O => \res[31]_i_9_n_0\
    );
\res[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88BB88B8BB8"
    )
        port map (
      I0 => \res_reg[7]_i_2_n_12\,
      I1 => \r_op_reg_n_0_[1]\,
      I2 => \add_sub_0/carry_3\,
      I3 => r_a(3),
      I4 => \r_op_reg_n_0_[0]\,
      I5 => r_b(3),
      O => \res[3]_i_1_n_0\
    );
\res[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BE28"
    )
        port map (
      I0 => \add_sub_0/carry_2\,
      I1 => \r_op_reg_n_0_[0]\,
      I2 => r_b(2),
      I3 => r_a(2),
      O => \add_sub_0/carry_3\
    );
\res[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88BB88B8BB8"
    )
        port map (
      I0 => \res_reg[7]_i_2_n_11\,
      I1 => \r_op_reg_n_0_[1]\,
      I2 => \add_sub_0/carry_4\,
      I3 => r_a(4),
      I4 => \r_op_reg_n_0_[0]\,
      I5 => r_b(4),
      O => \res[4]_i_1_n_0\
    );
\res[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2FFFFE800E8B200"
    )
        port map (
      I0 => \add_sub_0/carry_2\,
      I1 => r_b(2),
      I2 => r_a(2),
      I3 => \r_op_reg_n_0_[0]\,
      I4 => r_b(3),
      I5 => r_a(3),
      O => \add_sub_0/carry_4\
    );
\res[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88BB88B8BB8"
    )
        port map (
      I0 => \res_reg[7]_i_2_n_10\,
      I1 => \r_op_reg_n_0_[1]\,
      I2 => \add_sub_0/carry_5\,
      I3 => r_a(5),
      I4 => \r_op_reg_n_0_[0]\,
      I5 => r_b(5),
      O => \res[5]_i_1_n_0\
    );
\res[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BE28"
    )
        port map (
      I0 => \add_sub_0/carry_4\,
      I1 => \r_op_reg_n_0_[0]\,
      I2 => r_b(4),
      I3 => r_a(4),
      O => \add_sub_0/carry_5\
    );
\res[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88BB88B8BB8"
    )
        port map (
      I0 => \res_reg[7]_i_2_n_9\,
      I1 => \r_op_reg_n_0_[1]\,
      I2 => \add_sub_0/carry_6\,
      I3 => r_a(6),
      I4 => \r_op_reg_n_0_[0]\,
      I5 => r_b(6),
      O => \res[6]_i_1_n_0\
    );
\res[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888B8BBBBBB8B888"
    )
        port map (
      I0 => \res_reg[7]_i_2_n_8\,
      I1 => \r_op_reg_n_0_[1]\,
      I2 => r_a(6),
      I3 => \add_sub_0/b010_out\,
      I4 => \add_sub_0/carry_6\,
      I5 => \add_sub_0/GEN_ADD_SUB[7].fa/s0__0\,
      O => \res[7]_i_1_n_0\
    );
\res[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_op_reg_n_0_[0]\,
      I1 => r_b(6),
      O => \add_sub_0/b010_out\
    );
\res[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2FFFFE800E8B200"
    )
        port map (
      I0 => \add_sub_0/carry_4\,
      I1 => r_b(4),
      I2 => r_a(4),
      I3 => \r_op_reg_n_0_[0]\,
      I4 => r_b(5),
      I5 => r_a(5),
      O => \add_sub_0/carry_6\
    );
\res[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => r_b(7),
      I1 => \r_op_reg_n_0_[0]\,
      I2 => r_a(7),
      O => \add_sub_0/GEN_ADD_SUB[7].fa/s0__0\
    );
\res[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88BB88B8BB8"
    )
        port map (
      I0 => \res_reg[15]_i_2_n_15\,
      I1 => \r_op_reg_n_0_[1]\,
      I2 => \add_sub_0/carry_8\,
      I3 => r_a(8),
      I4 => \r_op_reg_n_0_[0]\,
      I5 => r_b(8),
      O => \res[8]_i_1_n_0\
    );
\res[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888B8BBBBBB8B888"
    )
        port map (
      I0 => \res_reg[15]_i_2_n_14\,
      I1 => \r_op_reg_n_0_[1]\,
      I2 => r_a(8),
      I3 => \add_sub_0/b014_out\,
      I4 => \add_sub_0/carry_8\,
      I5 => \add_sub_0/GEN_ADD_SUB[9].fa/s0__0\,
      O => \res[9]_i_1_n_0\
    );
\res[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_op_reg_n_0_[0]\,
      I1 => r_b(8),
      O => \add_sub_0/b014_out\
    );
\res[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2FFFFE800E8B200"
    )
        port map (
      I0 => \add_sub_0/carry_6\,
      I1 => r_b(6),
      I2 => r_a(6),
      I3 => \r_op_reg_n_0_[0]\,
      I4 => r_b(7),
      I5 => r_a(7),
      O => \add_sub_0/carry_8\
    );
\res[9]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => r_b(9),
      I1 => \r_op_reg_n_0_[0]\,
      I2 => r_a(9),
      O => \add_sub_0/GEN_ADD_SUB[9].fa/s0__0\
    );
\res_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \res[0]_i_1_n_0\,
      Q => o_result(0),
      R => p_0_in
    );
\res_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \res[10]_i_1_n_0\,
      Q => o_result(10),
      R => p_0_in
    );
\res_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \res[11]_i_1_n_0\,
      Q => o_result(11),
      R => p_0_in
    );
\res_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \res[12]_i_1_n_0\,
      Q => o_result(12),
      R => p_0_in
    );
\res_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \res[13]_i_1_n_0\,
      Q => o_result(13),
      R => p_0_in
    );
\res_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \res[14]_i_1_n_0\,
      Q => o_result(14),
      R => p_0_in
    );
\res_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \res[15]_i_1_n_0\,
      Q => o_result(15),
      R => p_0_in
    );
\res_reg[15]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \res_reg[7]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \res_reg[15]_i_2_n_0\,
      CO(6) => \res_reg[15]_i_2_n_1\,
      CO(5) => \res_reg[15]_i_2_n_2\,
      CO(4) => \res_reg[15]_i_2_n_3\,
      CO(3) => \res_reg[15]_i_2_n_4\,
      CO(2) => \res_reg[15]_i_2_n_5\,
      CO(1) => \res_reg[15]_i_2_n_6\,
      CO(0) => \res_reg[15]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \res_reg[15]_i_2_n_8\,
      O(6) => \res_reg[15]_i_2_n_9\,
      O(5) => \res_reg[15]_i_2_n_10\,
      O(4) => \res_reg[15]_i_2_n_11\,
      O(3) => \res_reg[15]_i_2_n_12\,
      O(2) => \res_reg[15]_i_2_n_13\,
      O(1) => \res_reg[15]_i_2_n_14\,
      O(0) => \res_reg[15]_i_2_n_15\,
      S(7) => res0_n_90,
      S(6) => res0_n_91,
      S(5) => res0_n_92,
      S(4) => res0_n_93,
      S(3) => res0_n_94,
      S(2) => res0_n_95,
      S(1) => res0_n_96,
      S(0) => res0_n_97
    );
\res_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \res[16]_i_1_n_0\,
      Q => o_result(16),
      R => p_0_in
    );
\res_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \res[17]_i_1_n_0\,
      Q => o_result(17),
      R => p_0_in
    );
\res_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \res[18]_i_1_n_0\,
      Q => o_result(18),
      R => p_0_in
    );
\res_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \res[19]_i_1_n_0\,
      Q => o_result(19),
      R => p_0_in
    );
\res_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \res[1]_i_1_n_0\,
      Q => o_result(1),
      R => p_0_in
    );
\res_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \res[20]_i_1_n_0\,
      Q => o_result(20),
      R => p_0_in
    );
\res_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \res[21]_i_1_n_0\,
      Q => o_result(21),
      R => p_0_in
    );
\res_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \res[22]_i_1_n_0\,
      Q => o_result(22),
      R => p_0_in
    );
\res_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \res[23]_i_1_n_0\,
      Q => o_result(23),
      R => p_0_in
    );
\res_reg[23]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \res_reg[15]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \res_reg[23]_i_2_n_0\,
      CO(6) => \res_reg[23]_i_2_n_1\,
      CO(5) => \res_reg[23]_i_2_n_2\,
      CO(4) => \res_reg[23]_i_2_n_3\,
      CO(3) => \res_reg[23]_i_2_n_4\,
      CO(2) => \res_reg[23]_i_2_n_5\,
      CO(1) => \res_reg[23]_i_2_n_6\,
      CO(0) => \res_reg[23]_i_2_n_7\,
      DI(7) => \res0__1_n_99\,
      DI(6) => \res0__1_n_100\,
      DI(5) => \res0__1_n_101\,
      DI(4) => \res0__1_n_102\,
      DI(3) => \res0__1_n_103\,
      DI(2) => \res0__1_n_104\,
      DI(1) => \res0__1_n_105\,
      DI(0) => '0',
      O(7) => \res_reg[23]_i_2_n_8\,
      O(6) => \res_reg[23]_i_2_n_9\,
      O(5) => \res_reg[23]_i_2_n_10\,
      O(4) => \res_reg[23]_i_2_n_11\,
      O(3) => \res_reg[23]_i_2_n_12\,
      O(2) => \res_reg[23]_i_2_n_13\,
      O(1) => \res_reg[23]_i_2_n_14\,
      O(0) => \res_reg[23]_i_2_n_15\,
      S(7) => \res[23]_i_3_n_0\,
      S(6) => \res[23]_i_4_n_0\,
      S(5) => \res[23]_i_5_n_0\,
      S(4) => \res[23]_i_6_n_0\,
      S(3) => \res[23]_i_7_n_0\,
      S(2) => \res[23]_i_8_n_0\,
      S(1) => \res[23]_i_9_n_0\,
      S(0) => res0_n_89
    );
\res_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \res[24]_i_1_n_0\,
      Q => o_result(24),
      R => p_0_in
    );
\res_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \res[25]_i_1_n_0\,
      Q => o_result(25),
      R => p_0_in
    );
\res_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \res[26]_i_1_n_0\,
      Q => o_result(26),
      R => p_0_in
    );
\res_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \res[27]_i_1_n_0\,
      Q => o_result(27),
      R => p_0_in
    );
\res_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \res[28]_i_1_n_0\,
      Q => o_result(28),
      R => p_0_in
    );
\res_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \res[29]_i_1_n_0\,
      Q => o_result(29),
      R => p_0_in
    );
\res_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \res[2]_i_1_n_0\,
      Q => o_result(2),
      R => p_0_in
    );
\res_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \res[30]_i_1_n_0\,
      Q => o_result(30),
      R => p_0_in
    );
\res_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \res[31]_i_2_n_0\,
      Q => o_result(31),
      R => p_0_in
    );
\res_reg[31]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => \res_reg[23]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_res_reg[31]_i_3_CO_UNCONNECTED\(7),
      CO(6) => \res_reg[31]_i_3_n_1\,
      CO(5) => \res_reg[31]_i_3_n_2\,
      CO(4) => \res_reg[31]_i_3_n_3\,
      CO(3) => \res_reg[31]_i_3_n_4\,
      CO(2) => \res_reg[31]_i_3_n_5\,
      CO(1) => \res_reg[31]_i_3_n_6\,
      CO(0) => \res_reg[31]_i_3_n_7\,
      DI(7) => '0',
      DI(6) => \res0__1_n_92\,
      DI(5) => \res0__1_n_93\,
      DI(4) => \res0__1_n_94\,
      DI(3) => \res0__1_n_95\,
      DI(2) => \res0__1_n_96\,
      DI(1) => \res0__1_n_97\,
      DI(0) => \res0__1_n_98\,
      O(7) => \res_reg[31]_i_3_n_8\,
      O(6) => \res_reg[31]_i_3_n_9\,
      O(5) => \res_reg[31]_i_3_n_10\,
      O(4) => \res_reg[31]_i_3_n_11\,
      O(3) => \res_reg[31]_i_3_n_12\,
      O(2) => \res_reg[31]_i_3_n_13\,
      O(1) => \res_reg[31]_i_3_n_14\,
      O(0) => \res_reg[31]_i_3_n_15\,
      S(7) => \res[31]_i_7_n_0\,
      S(6) => \res[31]_i_8_n_0\,
      S(5) => \res[31]_i_9_n_0\,
      S(4) => \res[31]_i_10_n_0\,
      S(3) => \res[31]_i_11_n_0\,
      S(2) => \res[31]_i_12_n_0\,
      S(1) => \res[31]_i_13_n_0\,
      S(0) => \res[31]_i_14_n_0\
    );
\res_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \res[3]_i_1_n_0\,
      Q => o_result(3),
      R => p_0_in
    );
\res_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \res[4]_i_1_n_0\,
      Q => o_result(4),
      R => p_0_in
    );
\res_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \res[5]_i_1_n_0\,
      Q => o_result(5),
      R => p_0_in
    );
\res_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \res[6]_i_1_n_0\,
      Q => o_result(6),
      R => p_0_in
    );
\res_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \res[7]_i_1_n_0\,
      Q => o_result(7),
      R => p_0_in
    );
\res_reg[7]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \res_reg[7]_i_2_n_0\,
      CO(6) => \res_reg[7]_i_2_n_1\,
      CO(5) => \res_reg[7]_i_2_n_2\,
      CO(4) => \res_reg[7]_i_2_n_3\,
      CO(3) => \res_reg[7]_i_2_n_4\,
      CO(2) => \res_reg[7]_i_2_n_5\,
      CO(1) => \res_reg[7]_i_2_n_6\,
      CO(0) => \res_reg[7]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \res_reg[7]_i_2_n_8\,
      O(6) => \res_reg[7]_i_2_n_9\,
      O(5) => \res_reg[7]_i_2_n_10\,
      O(4) => \res_reg[7]_i_2_n_11\,
      O(3) => \res_reg[7]_i_2_n_12\,
      O(2) => \res_reg[7]_i_2_n_13\,
      O(1) => \res_reg[7]_i_2_n_14\,
      O(0) => \res_reg[7]_i_2_n_15\,
      S(7) => res0_n_98,
      S(6) => res0_n_99,
      S(5) => res0_n_100,
      S(4) => res0_n_101,
      S(3) => res0_n_102,
      S(2) => res0_n_103,
      S(1) => res0_n_104,
      S(0) => res0_n_105
    );
\res_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \res[8]_i_1_n_0\,
      Q => o_result(8),
      R => p_0_in
    );
\res_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \res[9]_i_1_n_0\,
      Q => o_result(9),
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    i_dataa : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_datab : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_op : in STD_LOGIC_VECTOR ( 1 downto 0 );
    o_result : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "alu_design_alu_0_0,alu,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "alu,Vivado 2024.2.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute DATAW : integer;
  attribute DATAW of inst : label is 32;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN alu_design_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rstn : signal is "xilinx.com:signal:reset:1.0 rstn RST";
  attribute X_INTERFACE_MODE of rstn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rstn : signal is "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu
     port map (
      clk => clk,
      i_dataa(31 downto 0) => i_dataa(31 downto 0),
      i_datab(31 downto 0) => i_datab(31 downto 0),
      i_op(1 downto 0) => i_op(1 downto 0),
      o_result(31 downto 0) => o_result(31 downto 0),
      rstn => rstn
    );
end STRUCTURE;
