// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
// Date        : Tue Jun  2 10:25:42 2026
// Host        : ECE-MCU2-09 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top alu_design_alu_0_1 -prefix
//               alu_design_alu_0_1_ alu_design_alu_0_0_sim_netlist.v
// Design      : alu_design_alu_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* DATAW = "32" *) 
module alu_design_alu_0_1_alu
   (clk,
    rstn,
    i_dataa,
    i_datab,
    i_op,
    o_result);
  input clk;
  input rstn;
  input [31:0]i_dataa;
  input [31:0]i_datab;
  input [1:0]i_op;
  output [31:0]o_result;

  wire \add_sub_0/GEN_ADD_SUB[12].fa/s0__0 ;
  wire \add_sub_0/GEN_ADD_SUB[14].fa/s0__0 ;
  wire \add_sub_0/GEN_ADD_SUB[17].fa/s0__0 ;
  wire \add_sub_0/GEN_ADD_SUB[19].fa/s0__0 ;
  wire \add_sub_0/GEN_ADD_SUB[1].fa/s0__0 ;
  wire \add_sub_0/GEN_ADD_SUB[22].fa/s0__0 ;
  wire \add_sub_0/GEN_ADD_SUB[24].fa/s0__0 ;
  wire \add_sub_0/GEN_ADD_SUB[31].fa/s0__0 ;
  wire \add_sub_0/GEN_ADD_SUB[4].fa/s0__0 ;
  wire \add_sub_0/GEN_ADD_SUB[7].fa/s0__0 ;
  wire \add_sub_0/GEN_ADD_SUB[9].fa/s0__0 ;
  wire \add_sub_0/b010_out ;
  wire \add_sub_0/b012_out ;
  wire \add_sub_0/b014_out ;
  wire \add_sub_0/b018_out ;
  wire \add_sub_0/b020_out ;
  wire \add_sub_0/b022_out ;
  wire \add_sub_0/b024_out ;
  wire \add_sub_0/b028_out ;
  wire \add_sub_0/b02_out ;
  wire \add_sub_0/b030_out ;
  wire \add_sub_0/b032_out ;
  wire \add_sub_0/b034_out ;
  wire \add_sub_0/b038_out ;
  wire \add_sub_0/b040_out ;
  wire \add_sub_0/b044_out ;
  wire \add_sub_0/b04_out ;
  wire \add_sub_0/b058_out ;
  wire \add_sub_0/b08_out ;
  wire \add_sub_0/carry_10 ;
  wire \add_sub_0/carry_11 ;
  wire \add_sub_0/carry_12 ;
  wire \add_sub_0/carry_13 ;
  wire \add_sub_0/carry_14 ;
  wire \add_sub_0/carry_15 ;
  wire \add_sub_0/carry_16 ;
  wire \add_sub_0/carry_17 ;
  wire \add_sub_0/carry_18 ;
  wire \add_sub_0/carry_19 ;
  wire \add_sub_0/carry_2 ;
  wire \add_sub_0/carry_20 ;
  wire \add_sub_0/carry_21 ;
  wire \add_sub_0/carry_22 ;
  wire \add_sub_0/carry_23 ;
  wire \add_sub_0/carry_24 ;
  wire \add_sub_0/carry_25 ;
  wire \add_sub_0/carry_26 ;
  wire \add_sub_0/carry_27 ;
  wire \add_sub_0/carry_28 ;
  wire \add_sub_0/carry_29 ;
  wire \add_sub_0/carry_3 ;
  wire \add_sub_0/carry_30 ;
  wire \add_sub_0/carry_4 ;
  wire \add_sub_0/carry_5 ;
  wire \add_sub_0/carry_6 ;
  wire \add_sub_0/carry_7 ;
  wire \add_sub_0/carry_8 ;
  wire \add_sub_0/carry_9 ;
  wire clk;
  wire cout00_out__13;
  wire cout00_out__18;
  wire cout00_out__3;
  wire cout00_out__8;
  wire cout0__13;
  wire cout0__18;
  wire cout0__3;
  wire cout0__8;
  wire [31:0]i_dataa;
  wire [31:0]i_datab;
  wire [1:0]i_op;
  wire [31:0]o_result;
  wire p_0_in;
  wire [31:0]r_a;
  wire [31:0]r_b;
  wire \r_op_reg_n_0_[0] ;
  wire \r_op_reg_n_0_[1] ;
  wire res0__0_n_100;
  wire res0__0_n_101;
  wire res0__0_n_102;
  wire res0__0_n_103;
  wire res0__0_n_104;
  wire res0__0_n_105;
  wire res0__0_n_58;
  wire res0__0_n_59;
  wire res0__0_n_60;
  wire res0__0_n_61;
  wire res0__0_n_62;
  wire res0__0_n_63;
  wire res0__0_n_64;
  wire res0__0_n_65;
  wire res0__0_n_66;
  wire res0__0_n_67;
  wire res0__0_n_68;
  wire res0__0_n_69;
  wire res0__0_n_70;
  wire res0__0_n_71;
  wire res0__0_n_72;
  wire res0__0_n_73;
  wire res0__0_n_74;
  wire res0__0_n_75;
  wire res0__0_n_76;
  wire res0__0_n_77;
  wire res0__0_n_78;
  wire res0__0_n_79;
  wire res0__0_n_80;
  wire res0__0_n_81;
  wire res0__0_n_82;
  wire res0__0_n_83;
  wire res0__0_n_84;
  wire res0__0_n_85;
  wire res0__0_n_86;
  wire res0__0_n_87;
  wire res0__0_n_88;
  wire res0__0_n_89;
  wire res0__0_n_90;
  wire res0__0_n_91;
  wire res0__0_n_92;
  wire res0__0_n_93;
  wire res0__0_n_94;
  wire res0__0_n_95;
  wire res0__0_n_96;
  wire res0__0_n_97;
  wire res0__0_n_98;
  wire res0__0_n_99;
  wire res0__1_i_10_n_0;
  wire res0__1_i_11_n_0;
  wire res0__1_i_12_n_0;
  wire res0__1_i_13_n_0;
  wire res0__1_i_14_n_0;
  wire res0__1_i_15_n_0;
  wire res0__1_i_1_n_0;
  wire res0__1_i_2_n_0;
  wire res0__1_i_3_n_0;
  wire res0__1_i_4_n_0;
  wire res0__1_i_5_n_0;
  wire res0__1_i_6_n_0;
  wire res0__1_i_7_n_0;
  wire res0__1_i_8_n_0;
  wire res0__1_i_9_n_0;
  wire res0__1_n_100;
  wire res0__1_n_101;
  wire res0__1_n_102;
  wire res0__1_n_103;
  wire res0__1_n_104;
  wire res0__1_n_105;
  wire res0__1_n_106;
  wire res0__1_n_107;
  wire res0__1_n_108;
  wire res0__1_n_109;
  wire res0__1_n_110;
  wire res0__1_n_111;
  wire res0__1_n_112;
  wire res0__1_n_113;
  wire res0__1_n_114;
  wire res0__1_n_115;
  wire res0__1_n_116;
  wire res0__1_n_117;
  wire res0__1_n_118;
  wire res0__1_n_119;
  wire res0__1_n_120;
  wire res0__1_n_121;
  wire res0__1_n_122;
  wire res0__1_n_123;
  wire res0__1_n_124;
  wire res0__1_n_125;
  wire res0__1_n_126;
  wire res0__1_n_127;
  wire res0__1_n_128;
  wire res0__1_n_129;
  wire res0__1_n_130;
  wire res0__1_n_131;
  wire res0__1_n_132;
  wire res0__1_n_133;
  wire res0__1_n_134;
  wire res0__1_n_135;
  wire res0__1_n_136;
  wire res0__1_n_137;
  wire res0__1_n_138;
  wire res0__1_n_139;
  wire res0__1_n_140;
  wire res0__1_n_141;
  wire res0__1_n_142;
  wire res0__1_n_143;
  wire res0__1_n_144;
  wire res0__1_n_145;
  wire res0__1_n_146;
  wire res0__1_n_147;
  wire res0__1_n_148;
  wire res0__1_n_149;
  wire res0__1_n_150;
  wire res0__1_n_151;
  wire res0__1_n_152;
  wire res0__1_n_153;
  wire res0__1_n_58;
  wire res0__1_n_59;
  wire res0__1_n_60;
  wire res0__1_n_61;
  wire res0__1_n_62;
  wire res0__1_n_63;
  wire res0__1_n_64;
  wire res0__1_n_65;
  wire res0__1_n_66;
  wire res0__1_n_67;
  wire res0__1_n_68;
  wire res0__1_n_69;
  wire res0__1_n_70;
  wire res0__1_n_71;
  wire res0__1_n_72;
  wire res0__1_n_73;
  wire res0__1_n_74;
  wire res0__1_n_75;
  wire res0__1_n_76;
  wire res0__1_n_77;
  wire res0__1_n_78;
  wire res0__1_n_79;
  wire res0__1_n_80;
  wire res0__1_n_81;
  wire res0__1_n_82;
  wire res0__1_n_83;
  wire res0__1_n_84;
  wire res0__1_n_85;
  wire res0__1_n_86;
  wire res0__1_n_87;
  wire res0__1_n_88;
  wire res0__1_n_89;
  wire res0__1_n_90;
  wire res0__1_n_91;
  wire res0__1_n_92;
  wire res0__1_n_93;
  wire res0__1_n_94;
  wire res0__1_n_95;
  wire res0__1_n_96;
  wire res0__1_n_97;
  wire res0__1_n_98;
  wire res0__1_n_99;
  wire res0_i_10_n_0;
  wire res0_i_11_n_0;
  wire res0_i_12_n_0;
  wire res0_i_13_n_0;
  wire res0_i_14_n_0;
  wire res0_i_15_n_0;
  wire res0_i_16_n_0;
  wire res0_i_17_n_0;
  wire res0_i_1_n_0;
  wire res0_i_2_n_0;
  wire res0_i_3_n_0;
  wire res0_i_4_n_0;
  wire res0_i_5_n_0;
  wire res0_i_6_n_0;
  wire res0_i_7_n_0;
  wire res0_i_8_n_0;
  wire res0_i_9_n_0;
  wire res0_n_100;
  wire res0_n_101;
  wire res0_n_102;
  wire res0_n_103;
  wire res0_n_104;
  wire res0_n_105;
  wire res0_n_106;
  wire res0_n_107;
  wire res0_n_108;
  wire res0_n_109;
  wire res0_n_110;
  wire res0_n_111;
  wire res0_n_112;
  wire res0_n_113;
  wire res0_n_114;
  wire res0_n_115;
  wire res0_n_116;
  wire res0_n_117;
  wire res0_n_118;
  wire res0_n_119;
  wire res0_n_120;
  wire res0_n_121;
  wire res0_n_122;
  wire res0_n_123;
  wire res0_n_124;
  wire res0_n_125;
  wire res0_n_126;
  wire res0_n_127;
  wire res0_n_128;
  wire res0_n_129;
  wire res0_n_130;
  wire res0_n_131;
  wire res0_n_132;
  wire res0_n_133;
  wire res0_n_134;
  wire res0_n_135;
  wire res0_n_136;
  wire res0_n_137;
  wire res0_n_138;
  wire res0_n_139;
  wire res0_n_140;
  wire res0_n_141;
  wire res0_n_142;
  wire res0_n_143;
  wire res0_n_144;
  wire res0_n_145;
  wire res0_n_146;
  wire res0_n_147;
  wire res0_n_148;
  wire res0_n_149;
  wire res0_n_150;
  wire res0_n_151;
  wire res0_n_152;
  wire res0_n_153;
  wire res0_n_24;
  wire res0_n_25;
  wire res0_n_26;
  wire res0_n_27;
  wire res0_n_28;
  wire res0_n_29;
  wire res0_n_30;
  wire res0_n_31;
  wire res0_n_32;
  wire res0_n_33;
  wire res0_n_34;
  wire res0_n_35;
  wire res0_n_36;
  wire res0_n_37;
  wire res0_n_38;
  wire res0_n_39;
  wire res0_n_40;
  wire res0_n_41;
  wire res0_n_42;
  wire res0_n_43;
  wire res0_n_44;
  wire res0_n_45;
  wire res0_n_46;
  wire res0_n_47;
  wire res0_n_48;
  wire res0_n_49;
  wire res0_n_50;
  wire res0_n_51;
  wire res0_n_52;
  wire res0_n_53;
  wire res0_n_58;
  wire res0_n_59;
  wire res0_n_60;
  wire res0_n_61;
  wire res0_n_62;
  wire res0_n_63;
  wire res0_n_64;
  wire res0_n_65;
  wire res0_n_66;
  wire res0_n_67;
  wire res0_n_68;
  wire res0_n_69;
  wire res0_n_70;
  wire res0_n_71;
  wire res0_n_72;
  wire res0_n_73;
  wire res0_n_74;
  wire res0_n_75;
  wire res0_n_76;
  wire res0_n_77;
  wire res0_n_78;
  wire res0_n_79;
  wire res0_n_80;
  wire res0_n_81;
  wire res0_n_82;
  wire res0_n_83;
  wire res0_n_84;
  wire res0_n_85;
  wire res0_n_86;
  wire res0_n_87;
  wire res0_n_88;
  wire res0_n_89;
  wire res0_n_90;
  wire res0_n_91;
  wire res0_n_92;
  wire res0_n_93;
  wire res0_n_94;
  wire res0_n_95;
  wire res0_n_96;
  wire res0_n_97;
  wire res0_n_98;
  wire res0_n_99;
  wire \res[0]_i_1_n_0 ;
  wire \res[10]_i_1_n_0 ;
  wire \res[11]_i_1_n_0 ;
  wire \res[12]_i_1_n_0 ;
  wire \res[13]_i_1_n_0 ;
  wire \res[14]_i_1_n_0 ;
  wire \res[15]_i_1_n_0 ;
  wire \res[16]_i_1_n_0 ;
  wire \res[17]_i_1_n_0 ;
  wire \res[18]_i_1_n_0 ;
  wire \res[19]_i_1_n_0 ;
  wire \res[1]_i_1_n_0 ;
  wire \res[20]_i_1_n_0 ;
  wire \res[21]_i_1_n_0 ;
  wire \res[22]_i_1_n_0 ;
  wire \res[23]_i_1_n_0 ;
  wire \res[23]_i_3_n_0 ;
  wire \res[23]_i_4_n_0 ;
  wire \res[23]_i_5_n_0 ;
  wire \res[23]_i_6_n_0 ;
  wire \res[23]_i_7_n_0 ;
  wire \res[23]_i_8_n_0 ;
  wire \res[23]_i_9_n_0 ;
  wire \res[24]_i_1_n_0 ;
  wire \res[25]_i_1_n_0 ;
  wire \res[26]_i_1_n_0 ;
  wire \res[27]_i_1_n_0 ;
  wire \res[28]_i_1_n_0 ;
  wire \res[29]_i_1_n_0 ;
  wire \res[2]_i_1_n_0 ;
  wire \res[30]_i_1_n_0 ;
  wire \res[31]_i_10_n_0 ;
  wire \res[31]_i_11_n_0 ;
  wire \res[31]_i_12_n_0 ;
  wire \res[31]_i_13_n_0 ;
  wire \res[31]_i_14_n_0 ;
  wire \res[31]_i_2_n_0 ;
  wire \res[31]_i_7_n_0 ;
  wire \res[31]_i_8_n_0 ;
  wire \res[31]_i_9_n_0 ;
  wire \res[3]_i_1_n_0 ;
  wire \res[4]_i_1_n_0 ;
  wire \res[5]_i_1_n_0 ;
  wire \res[6]_i_1_n_0 ;
  wire \res[7]_i_1_n_0 ;
  wire \res[8]_i_1_n_0 ;
  wire \res[9]_i_1_n_0 ;
  wire \res_reg[15]_i_2_n_0 ;
  wire \res_reg[15]_i_2_n_1 ;
  wire \res_reg[15]_i_2_n_10 ;
  wire \res_reg[15]_i_2_n_11 ;
  wire \res_reg[15]_i_2_n_12 ;
  wire \res_reg[15]_i_2_n_13 ;
  wire \res_reg[15]_i_2_n_14 ;
  wire \res_reg[15]_i_2_n_15 ;
  wire \res_reg[15]_i_2_n_2 ;
  wire \res_reg[15]_i_2_n_3 ;
  wire \res_reg[15]_i_2_n_4 ;
  wire \res_reg[15]_i_2_n_5 ;
  wire \res_reg[15]_i_2_n_6 ;
  wire \res_reg[15]_i_2_n_7 ;
  wire \res_reg[15]_i_2_n_8 ;
  wire \res_reg[15]_i_2_n_9 ;
  wire \res_reg[23]_i_2_n_0 ;
  wire \res_reg[23]_i_2_n_1 ;
  wire \res_reg[23]_i_2_n_10 ;
  wire \res_reg[23]_i_2_n_11 ;
  wire \res_reg[23]_i_2_n_12 ;
  wire \res_reg[23]_i_2_n_13 ;
  wire \res_reg[23]_i_2_n_14 ;
  wire \res_reg[23]_i_2_n_15 ;
  wire \res_reg[23]_i_2_n_2 ;
  wire \res_reg[23]_i_2_n_3 ;
  wire \res_reg[23]_i_2_n_4 ;
  wire \res_reg[23]_i_2_n_5 ;
  wire \res_reg[23]_i_2_n_6 ;
  wire \res_reg[23]_i_2_n_7 ;
  wire \res_reg[23]_i_2_n_8 ;
  wire \res_reg[23]_i_2_n_9 ;
  wire \res_reg[31]_i_3_n_1 ;
  wire \res_reg[31]_i_3_n_10 ;
  wire \res_reg[31]_i_3_n_11 ;
  wire \res_reg[31]_i_3_n_12 ;
  wire \res_reg[31]_i_3_n_13 ;
  wire \res_reg[31]_i_3_n_14 ;
  wire \res_reg[31]_i_3_n_15 ;
  wire \res_reg[31]_i_3_n_2 ;
  wire \res_reg[31]_i_3_n_3 ;
  wire \res_reg[31]_i_3_n_4 ;
  wire \res_reg[31]_i_3_n_5 ;
  wire \res_reg[31]_i_3_n_6 ;
  wire \res_reg[31]_i_3_n_7 ;
  wire \res_reg[31]_i_3_n_8 ;
  wire \res_reg[31]_i_3_n_9 ;
  wire \res_reg[7]_i_2_n_0 ;
  wire \res_reg[7]_i_2_n_1 ;
  wire \res_reg[7]_i_2_n_10 ;
  wire \res_reg[7]_i_2_n_11 ;
  wire \res_reg[7]_i_2_n_12 ;
  wire \res_reg[7]_i_2_n_13 ;
  wire \res_reg[7]_i_2_n_14 ;
  wire \res_reg[7]_i_2_n_15 ;
  wire \res_reg[7]_i_2_n_2 ;
  wire \res_reg[7]_i_2_n_3 ;
  wire \res_reg[7]_i_2_n_4 ;
  wire \res_reg[7]_i_2_n_5 ;
  wire \res_reg[7]_i_2_n_6 ;
  wire \res_reg[7]_i_2_n_7 ;
  wire \res_reg[7]_i_2_n_8 ;
  wire \res_reg[7]_i_2_n_9 ;
  wire rstn;
  wire NLW_res0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_res0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_res0_OVERFLOW_UNCONNECTED;
  wire NLW_res0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_res0_PATTERNDETECT_UNCONNECTED;
  wire NLW_res0_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_res0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_res0_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_res0_XOROUT_UNCONNECTED;
  wire NLW_res0__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_res0__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_res0__0_OVERFLOW_UNCONNECTED;
  wire NLW_res0__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_res0__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_res0__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_res0__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_res0__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_res0__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_res0__0_PCOUT_UNCONNECTED;
  wire [7:0]NLW_res0__0_XOROUT_UNCONNECTED;
  wire NLW_res0__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_res0__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_res0__1_OVERFLOW_UNCONNECTED;
  wire NLW_res0__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_res0__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_res0__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_res0__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_res0__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_res0__1_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_res0__1_XOROUT_UNCONNECTED;
  wire [7:7]\NLW_res_reg[31]_i_3_CO_UNCONNECTED ;

  FDRE \r_a_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(i_dataa[0]),
        .Q(r_a[0]),
        .R(p_0_in));
  FDRE \r_a_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(i_dataa[10]),
        .Q(r_a[10]),
        .R(p_0_in));
  FDRE \r_a_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(i_dataa[11]),
        .Q(r_a[11]),
        .R(p_0_in));
  FDRE \r_a_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(i_dataa[12]),
        .Q(r_a[12]),
        .R(p_0_in));
  FDRE \r_a_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(i_dataa[13]),
        .Q(r_a[13]),
        .R(p_0_in));
  FDRE \r_a_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(i_dataa[14]),
        .Q(r_a[14]),
        .R(p_0_in));
  FDRE \r_a_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(i_dataa[15]),
        .Q(r_a[15]),
        .R(p_0_in));
  FDRE \r_a_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(i_dataa[16]),
        .Q(r_a[16]),
        .R(p_0_in));
  FDRE \r_a_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(i_dataa[17]),
        .Q(r_a[17]),
        .R(p_0_in));
  FDRE \r_a_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(i_dataa[18]),
        .Q(r_a[18]),
        .R(p_0_in));
  FDRE \r_a_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(i_dataa[19]),
        .Q(r_a[19]),
        .R(p_0_in));
  FDRE \r_a_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(i_dataa[1]),
        .Q(r_a[1]),
        .R(p_0_in));
  FDRE \r_a_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(i_dataa[20]),
        .Q(r_a[20]),
        .R(p_0_in));
  FDRE \r_a_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(i_dataa[21]),
        .Q(r_a[21]),
        .R(p_0_in));
  FDRE \r_a_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(i_dataa[22]),
        .Q(r_a[22]),
        .R(p_0_in));
  FDRE \r_a_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(i_dataa[23]),
        .Q(r_a[23]),
        .R(p_0_in));
  FDRE \r_a_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(i_dataa[24]),
        .Q(r_a[24]),
        .R(p_0_in));
  FDRE \r_a_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(i_dataa[25]),
        .Q(r_a[25]),
        .R(p_0_in));
  FDRE \r_a_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(i_dataa[26]),
        .Q(r_a[26]),
        .R(p_0_in));
  FDRE \r_a_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(i_dataa[27]),
        .Q(r_a[27]),
        .R(p_0_in));
  FDRE \r_a_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(i_dataa[28]),
        .Q(r_a[28]),
        .R(p_0_in));
  FDRE \r_a_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(i_dataa[29]),
        .Q(r_a[29]),
        .R(p_0_in));
  FDRE \r_a_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(i_dataa[2]),
        .Q(r_a[2]),
        .R(p_0_in));
  FDRE \r_a_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(i_dataa[30]),
        .Q(r_a[30]),
        .R(p_0_in));
  FDRE \r_a_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(i_dataa[31]),
        .Q(r_a[31]),
        .R(p_0_in));
  FDRE \r_a_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(i_dataa[3]),
        .Q(r_a[3]),
        .R(p_0_in));
  FDRE \r_a_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(i_dataa[4]),
        .Q(r_a[4]),
        .R(p_0_in));
  FDRE \r_a_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(i_dataa[5]),
        .Q(r_a[5]),
        .R(p_0_in));
  FDRE \r_a_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(i_dataa[6]),
        .Q(r_a[6]),
        .R(p_0_in));
  FDRE \r_a_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(i_dataa[7]),
        .Q(r_a[7]),
        .R(p_0_in));
  FDRE \r_a_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(i_dataa[8]),
        .Q(r_a[8]),
        .R(p_0_in));
  FDRE \r_a_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(i_dataa[9]),
        .Q(r_a[9]),
        .R(p_0_in));
  FDRE \r_b_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(i_datab[0]),
        .Q(r_b[0]),
        .R(p_0_in));
  FDRE \r_b_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(i_datab[10]),
        .Q(r_b[10]),
        .R(p_0_in));
  FDRE \r_b_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(i_datab[11]),
        .Q(r_b[11]),
        .R(p_0_in));
  FDRE \r_b_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(i_datab[12]),
        .Q(r_b[12]),
        .R(p_0_in));
  FDRE \r_b_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(i_datab[13]),
        .Q(r_b[13]),
        .R(p_0_in));
  FDRE \r_b_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(i_datab[14]),
        .Q(r_b[14]),
        .R(p_0_in));
  FDRE \r_b_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(i_datab[15]),
        .Q(r_b[15]),
        .R(p_0_in));
  FDRE \r_b_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(i_datab[16]),
        .Q(r_b[16]),
        .R(p_0_in));
  FDRE \r_b_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(i_datab[17]),
        .Q(r_b[17]),
        .R(p_0_in));
  FDRE \r_b_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(i_datab[18]),
        .Q(r_b[18]),
        .R(p_0_in));
  FDRE \r_b_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(i_datab[19]),
        .Q(r_b[19]),
        .R(p_0_in));
  FDRE \r_b_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(i_datab[1]),
        .Q(r_b[1]),
        .R(p_0_in));
  FDRE \r_b_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(i_datab[20]),
        .Q(r_b[20]),
        .R(p_0_in));
  FDRE \r_b_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(i_datab[21]),
        .Q(r_b[21]),
        .R(p_0_in));
  FDRE \r_b_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(i_datab[22]),
        .Q(r_b[22]),
        .R(p_0_in));
  FDRE \r_b_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(i_datab[23]),
        .Q(r_b[23]),
        .R(p_0_in));
  FDRE \r_b_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(i_datab[24]),
        .Q(r_b[24]),
        .R(p_0_in));
  FDRE \r_b_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(i_datab[25]),
        .Q(r_b[25]),
        .R(p_0_in));
  FDRE \r_b_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(i_datab[26]),
        .Q(r_b[26]),
        .R(p_0_in));
  FDRE \r_b_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(i_datab[27]),
        .Q(r_b[27]),
        .R(p_0_in));
  FDRE \r_b_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(i_datab[28]),
        .Q(r_b[28]),
        .R(p_0_in));
  FDRE \r_b_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(i_datab[29]),
        .Q(r_b[29]),
        .R(p_0_in));
  FDRE \r_b_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(i_datab[2]),
        .Q(r_b[2]),
        .R(p_0_in));
  FDRE \r_b_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(i_datab[30]),
        .Q(r_b[30]),
        .R(p_0_in));
  FDRE \r_b_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(i_datab[31]),
        .Q(r_b[31]),
        .R(p_0_in));
  FDRE \r_b_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(i_datab[3]),
        .Q(r_b[3]),
        .R(p_0_in));
  FDRE \r_b_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(i_datab[4]),
        .Q(r_b[4]),
        .R(p_0_in));
  FDRE \r_b_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(i_datab[5]),
        .Q(r_b[5]),
        .R(p_0_in));
  FDRE \r_b_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(i_datab[6]),
        .Q(r_b[6]),
        .R(p_0_in));
  FDRE \r_b_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(i_datab[7]),
        .Q(r_b[7]),
        .R(p_0_in));
  FDRE \r_b_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(i_datab[8]),
        .Q(r_b[8]),
        .R(p_0_in));
  FDRE \r_b_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(i_datab[9]),
        .Q(r_b[9]),
        .R(p_0_in));
  FDRE \r_op_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(i_op[0]),
        .Q(\r_op_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \r_op_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(i_op[1]),
        .Q(\r_op_reg_n_0_[1] ),
        .R(p_0_in));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    res0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,res0_i_1_n_0,res0_i_2_n_0,res0_i_3_n_0,res0_i_4_n_0,res0_i_5_n_0,res0_i_6_n_0,res0_i_7_n_0,res0_i_8_n_0,res0_i_9_n_0,res0_i_10_n_0,res0_i_11_n_0,res0_i_12_n_0,res0_i_13_n_0,res0_i_14_n_0,res0_i_15_n_0,res0_i_16_n_0,res0_i_17_n_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT({res0_n_24,res0_n_25,res0_n_26,res0_n_27,res0_n_28,res0_n_29,res0_n_30,res0_n_31,res0_n_32,res0_n_33,res0_n_34,res0_n_35,res0_n_36,res0_n_37,res0_n_38,res0_n_39,res0_n_40,res0_n_41,res0_n_42,res0_n_43,res0_n_44,res0_n_45,res0_n_46,res0_n_47,res0_n_48,res0_n_49,res0_n_50,res0_n_51,res0_n_52,res0_n_53}),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,i_dataa[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_res0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_res0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_res0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_res0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_res0_OVERFLOW_UNCONNECTED),
        .P({res0_n_58,res0_n_59,res0_n_60,res0_n_61,res0_n_62,res0_n_63,res0_n_64,res0_n_65,res0_n_66,res0_n_67,res0_n_68,res0_n_69,res0_n_70,res0_n_71,res0_n_72,res0_n_73,res0_n_74,res0_n_75,res0_n_76,res0_n_77,res0_n_78,res0_n_79,res0_n_80,res0_n_81,res0_n_82,res0_n_83,res0_n_84,res0_n_85,res0_n_86,res0_n_87,res0_n_88,res0_n_89,res0_n_90,res0_n_91,res0_n_92,res0_n_93,res0_n_94,res0_n_95,res0_n_96,res0_n_97,res0_n_98,res0_n_99,res0_n_100,res0_n_101,res0_n_102,res0_n_103,res0_n_104,res0_n_105}),
        .PATTERNBDETECT(NLW_res0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_res0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({res0_n_106,res0_n_107,res0_n_108,res0_n_109,res0_n_110,res0_n_111,res0_n_112,res0_n_113,res0_n_114,res0_n_115,res0_n_116,res0_n_117,res0_n_118,res0_n_119,res0_n_120,res0_n_121,res0_n_122,res0_n_123,res0_n_124,res0_n_125,res0_n_126,res0_n_127,res0_n_128,res0_n_129,res0_n_130,res0_n_131,res0_n_132,res0_n_133,res0_n_134,res0_n_135,res0_n_136,res0_n_137,res0_n_138,res0_n_139,res0_n_140,res0_n_141,res0_n_142,res0_n_143,res0_n_144,res0_n_145,res0_n_146,res0_n_147,res0_n_148,res0_n_149,res0_n_150,res0_n_151,res0_n_152,res0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(p_0_in),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_res0_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_res0_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x16 4}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    res0__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({res0_n_24,res0_n_25,res0_n_26,res0_n_27,res0_n_28,res0_n_29,res0_n_30,res0_n_31,res0_n_32,res0_n_33,res0_n_34,res0_n_35,res0_n_36,res0_n_37,res0_n_38,res0_n_39,res0_n_40,res0_n_41,res0_n_42,res0_n_43,res0_n_44,res0_n_45,res0_n_46,res0_n_47,res0_n_48,res0_n_49,res0_n_50,res0_n_51,res0_n_52,res0_n_53}),
        .ACOUT(NLW_res0__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,i_dataa[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_res0__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_res0__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_res0__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_res0__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_res0__0_OVERFLOW_UNCONNECTED),
        .P({res0__0_n_58,res0__0_n_59,res0__0_n_60,res0__0_n_61,res0__0_n_62,res0__0_n_63,res0__0_n_64,res0__0_n_65,res0__0_n_66,res0__0_n_67,res0__0_n_68,res0__0_n_69,res0__0_n_70,res0__0_n_71,res0__0_n_72,res0__0_n_73,res0__0_n_74,res0__0_n_75,res0__0_n_76,res0__0_n_77,res0__0_n_78,res0__0_n_79,res0__0_n_80,res0__0_n_81,res0__0_n_82,res0__0_n_83,res0__0_n_84,res0__0_n_85,res0__0_n_86,res0__0_n_87,res0__0_n_88,res0__0_n_89,res0__0_n_90,res0__0_n_91,res0__0_n_92,res0__0_n_93,res0__0_n_94,res0__0_n_95,res0__0_n_96,res0__0_n_97,res0__0_n_98,res0__0_n_99,res0__0_n_100,res0__0_n_101,res0__0_n_102,res0__0_n_103,res0__0_n_104,res0__0_n_105}),
        .PATTERNBDETECT(NLW_res0__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_res0__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({res0_n_106,res0_n_107,res0_n_108,res0_n_109,res0_n_110,res0_n_111,res0_n_112,res0_n_113,res0_n_114,res0_n_115,res0_n_116,res0_n_117,res0_n_118,res0_n_119,res0_n_120,res0_n_121,res0_n_122,res0_n_123,res0_n_124,res0_n_125,res0_n_126,res0_n_127,res0_n_128,res0_n_129,res0_n_130,res0_n_131,res0_n_132,res0_n_133,res0_n_134,res0_n_135,res0_n_136,res0_n_137,res0_n_138,res0_n_139,res0_n_140,res0_n_141,res0_n_142,res0_n_143,res0_n_144,res0_n_145,res0_n_146,res0_n_147,res0_n_148,res0_n_149,res0_n_150,res0_n_151,res0_n_152,res0_n_153}),
        .PCOUT(NLW_res0__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(p_0_in),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_res0__0_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_res0__0_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 16x18 4}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    res0__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,i_dataa[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_res0__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,res0__1_i_1_n_0,res0__1_i_2_n_0,res0__1_i_3_n_0,res0__1_i_4_n_0,res0__1_i_5_n_0,res0__1_i_6_n_0,res0__1_i_7_n_0,res0__1_i_8_n_0,res0__1_i_9_n_0,res0__1_i_10_n_0,res0__1_i_11_n_0,res0__1_i_12_n_0,res0__1_i_13_n_0,res0__1_i_14_n_0,res0__1_i_15_n_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_res0__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_res0__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_res0__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_res0__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_res0__1_OVERFLOW_UNCONNECTED),
        .P({res0__1_n_58,res0__1_n_59,res0__1_n_60,res0__1_n_61,res0__1_n_62,res0__1_n_63,res0__1_n_64,res0__1_n_65,res0__1_n_66,res0__1_n_67,res0__1_n_68,res0__1_n_69,res0__1_n_70,res0__1_n_71,res0__1_n_72,res0__1_n_73,res0__1_n_74,res0__1_n_75,res0__1_n_76,res0__1_n_77,res0__1_n_78,res0__1_n_79,res0__1_n_80,res0__1_n_81,res0__1_n_82,res0__1_n_83,res0__1_n_84,res0__1_n_85,res0__1_n_86,res0__1_n_87,res0__1_n_88,res0__1_n_89,res0__1_n_90,res0__1_n_91,res0__1_n_92,res0__1_n_93,res0__1_n_94,res0__1_n_95,res0__1_n_96,res0__1_n_97,res0__1_n_98,res0__1_n_99,res0__1_n_100,res0__1_n_101,res0__1_n_102,res0__1_n_103,res0__1_n_104,res0__1_n_105}),
        .PATTERNBDETECT(NLW_res0__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_res0__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({res0__1_n_106,res0__1_n_107,res0__1_n_108,res0__1_n_109,res0__1_n_110,res0__1_n_111,res0__1_n_112,res0__1_n_113,res0__1_n_114,res0__1_n_115,res0__1_n_116,res0__1_n_117,res0__1_n_118,res0__1_n_119,res0__1_n_120,res0__1_n_121,res0__1_n_122,res0__1_n_123,res0__1_n_124,res0__1_n_125,res0__1_n_126,res0__1_n_127,res0__1_n_128,res0__1_n_129,res0__1_n_130,res0__1_n_131,res0__1_n_132,res0__1_n_133,res0__1_n_134,res0__1_n_135,res0__1_n_136,res0__1_n_137,res0__1_n_138,res0__1_n_139,res0__1_n_140,res0__1_n_141,res0__1_n_142,res0__1_n_143,res0__1_n_144,res0__1_n_145,res0__1_n_146,res0__1_n_147,res0__1_n_148,res0__1_n_149,res0__1_n_150,res0__1_n_151,res0__1_n_152,res0__1_n_153}),
        .RSTA(p_0_in),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_res0__1_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_res0__1_XOROUT_UNCONNECTED[7:0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    res0__1_i_1
       (.I0(r_a[31]),
        .I1(r_b[31]),
        .I2(\r_op_reg_n_0_[0] ),
        .O(res0__1_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    res0__1_i_10
       (.I0(r_a[22]),
        .I1(r_b[22]),
        .I2(\r_op_reg_n_0_[0] ),
        .O(res0__1_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    res0__1_i_11
       (.I0(r_a[21]),
        .I1(r_b[21]),
        .I2(\r_op_reg_n_0_[0] ),
        .O(res0__1_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    res0__1_i_12
       (.I0(r_a[20]),
        .I1(r_b[20]),
        .I2(\r_op_reg_n_0_[0] ),
        .O(res0__1_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    res0__1_i_13
       (.I0(r_a[19]),
        .I1(r_b[19]),
        .I2(\r_op_reg_n_0_[0] ),
        .O(res0__1_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    res0__1_i_14
       (.I0(r_a[18]),
        .I1(r_b[18]),
        .I2(\r_op_reg_n_0_[0] ),
        .O(res0__1_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    res0__1_i_15
       (.I0(r_a[17]),
        .I1(r_b[17]),
        .I2(\r_op_reg_n_0_[0] ),
        .O(res0__1_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    res0__1_i_2
       (.I0(r_a[30]),
        .I1(r_b[30]),
        .I2(\r_op_reg_n_0_[0] ),
        .O(res0__1_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    res0__1_i_3
       (.I0(r_a[29]),
        .I1(r_b[29]),
        .I2(\r_op_reg_n_0_[0] ),
        .O(res0__1_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    res0__1_i_4
       (.I0(r_a[28]),
        .I1(r_b[28]),
        .I2(\r_op_reg_n_0_[0] ),
        .O(res0__1_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    res0__1_i_5
       (.I0(r_a[27]),
        .I1(r_b[27]),
        .I2(\r_op_reg_n_0_[0] ),
        .O(res0__1_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    res0__1_i_6
       (.I0(r_a[26]),
        .I1(r_b[26]),
        .I2(\r_op_reg_n_0_[0] ),
        .O(res0__1_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    res0__1_i_7
       (.I0(r_a[25]),
        .I1(r_b[25]),
        .I2(\r_op_reg_n_0_[0] ),
        .O(res0__1_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    res0__1_i_8
       (.I0(r_a[24]),
        .I1(r_b[24]),
        .I2(\r_op_reg_n_0_[0] ),
        .O(res0__1_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    res0__1_i_9
       (.I0(r_a[23]),
        .I1(r_b[23]),
        .I2(\r_op_reg_n_0_[0] ),
        .O(res0__1_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    res0_i_1
       (.I0(r_a[16]),
        .I1(r_b[16]),
        .I2(\r_op_reg_n_0_[0] ),
        .O(res0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    res0_i_10
       (.I0(r_a[7]),
        .I1(r_b[7]),
        .I2(\r_op_reg_n_0_[0] ),
        .O(res0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    res0_i_11
       (.I0(r_a[6]),
        .I1(r_b[6]),
        .I2(\r_op_reg_n_0_[0] ),
        .O(res0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    res0_i_12
       (.I0(r_a[5]),
        .I1(r_b[5]),
        .I2(\r_op_reg_n_0_[0] ),
        .O(res0_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    res0_i_13
       (.I0(r_a[4]),
        .I1(r_b[4]),
        .I2(\r_op_reg_n_0_[0] ),
        .O(res0_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    res0_i_14
       (.I0(r_a[3]),
        .I1(r_b[3]),
        .I2(\r_op_reg_n_0_[0] ),
        .O(res0_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    res0_i_15
       (.I0(r_a[2]),
        .I1(r_b[2]),
        .I2(\r_op_reg_n_0_[0] ),
        .O(res0_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    res0_i_16
       (.I0(r_a[1]),
        .I1(r_b[1]),
        .I2(\r_op_reg_n_0_[0] ),
        .O(res0_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    res0_i_17
       (.I0(r_a[0]),
        .I1(r_b[0]),
        .I2(\r_op_reg_n_0_[0] ),
        .O(res0_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    res0_i_2
       (.I0(r_a[15]),
        .I1(r_b[15]),
        .I2(\r_op_reg_n_0_[0] ),
        .O(res0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    res0_i_3
       (.I0(r_a[14]),
        .I1(r_b[14]),
        .I2(\r_op_reg_n_0_[0] ),
        .O(res0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    res0_i_4
       (.I0(r_a[13]),
        .I1(r_b[13]),
        .I2(\r_op_reg_n_0_[0] ),
        .O(res0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    res0_i_5
       (.I0(r_a[12]),
        .I1(r_b[12]),
        .I2(\r_op_reg_n_0_[0] ),
        .O(res0_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    res0_i_6
       (.I0(r_a[11]),
        .I1(r_b[11]),
        .I2(\r_op_reg_n_0_[0] ),
        .O(res0_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    res0_i_7
       (.I0(r_a[10]),
        .I1(r_b[10]),
        .I2(\r_op_reg_n_0_[0] ),
        .O(res0_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    res0_i_8
       (.I0(r_a[9]),
        .I1(r_b[9]),
        .I2(\r_op_reg_n_0_[0] ),
        .O(res0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    res0_i_9
       (.I0(r_a[8]),
        .I1(r_b[8]),
        .I2(\r_op_reg_n_0_[0] ),
        .O(res0_i_9_n_0));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \res[0]_i_1 
       (.I0(\res_reg[7]_i_2_n_15 ),
        .I1(\r_op_reg_n_0_[1] ),
        .I2(r_a[0]),
        .I3(r_b[0]),
        .O(\res[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \res[10]_i_1 
       (.I0(\res_reg[15]_i_2_n_13 ),
        .I1(\r_op_reg_n_0_[1] ),
        .I2(\add_sub_0/carry_10 ),
        .I3(r_a[10]),
        .I4(\r_op_reg_n_0_[0] ),
        .I5(r_b[10]),
        .O(\res[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB2FFFFE800E8B200)) 
    \res[10]_i_2 
       (.I0(\add_sub_0/carry_8 ),
        .I1(r_b[8]),
        .I2(r_a[8]),
        .I3(\r_op_reg_n_0_[0] ),
        .I4(r_b[9]),
        .I5(r_a[9]),
        .O(\add_sub_0/carry_10 ));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \res[11]_i_1 
       (.I0(\res_reg[15]_i_2_n_12 ),
        .I1(\r_op_reg_n_0_[1] ),
        .I2(\add_sub_0/carry_11 ),
        .I3(r_a[11]),
        .I4(\r_op_reg_n_0_[0] ),
        .I5(r_b[11]),
        .O(\res[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888B8BBBBBB8B888)) 
    \res[12]_i_1 
       (.I0(\res_reg[15]_i_2_n_11 ),
        .I1(\r_op_reg_n_0_[1] ),
        .I2(r_a[11]),
        .I3(\add_sub_0/b020_out ),
        .I4(\add_sub_0/carry_11 ),
        .I5(\add_sub_0/GEN_ADD_SUB[12].fa/s0__0 ),
        .O(\res[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \res[12]_i_10 
       (.I0(r_b[4]),
        .I1(\r_op_reg_n_0_[0] ),
        .I2(r_a[4]),
        .O(\add_sub_0/GEN_ADD_SUB[4].fa/s0__0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \res[12]_i_11 
       (.I0(\r_op_reg_n_0_[0] ),
        .I1(r_b[3]),
        .O(\add_sub_0/b04_out ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \res[12]_i_12 
       (.I0(\r_op_reg_n_0_[0] ),
        .I1(r_b[2]),
        .O(\add_sub_0/b02_out ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \res[12]_i_2 
       (.I0(\r_op_reg_n_0_[0] ),
        .I1(r_b[11]),
        .O(\add_sub_0/b020_out ));
  LUT6 #(
    .INIT(64'hB2FFFFE800E8B200)) 
    \res[12]_i_3 
       (.I0(\add_sub_0/carry_9 ),
        .I1(r_b[9]),
        .I2(r_a[9]),
        .I3(\r_op_reg_n_0_[0] ),
        .I4(r_b[10]),
        .I5(r_a[10]),
        .O(\add_sub_0/carry_11 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \res[12]_i_4 
       (.I0(r_b[12]),
        .I1(\r_op_reg_n_0_[0] ),
        .I2(r_a[12]),
        .O(\add_sub_0/GEN_ADD_SUB[12].fa/s0__0 ));
  LUT6 #(
    .INIT(64'hB2FFFFE800E8B200)) 
    \res[12]_i_5 
       (.I0(\add_sub_0/carry_7 ),
        .I1(r_b[7]),
        .I2(r_a[7]),
        .I3(\r_op_reg_n_0_[0] ),
        .I4(r_b[8]),
        .I5(r_a[8]),
        .O(\add_sub_0/carry_9 ));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \res[12]_i_6 
       (.I0(cout00_out__3),
        .I1(cout0__3),
        .I2(\add_sub_0/b08_out ),
        .I3(r_a[5]),
        .I4(\add_sub_0/b010_out ),
        .I5(r_a[6]),
        .O(\add_sub_0/carry_7 ));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \res[12]_i_7 
       (.I0(\add_sub_0/GEN_ADD_SUB[4].fa/s0__0 ),
        .I1(r_a[3]),
        .I2(\add_sub_0/b04_out ),
        .I3(r_a[2]),
        .I4(\add_sub_0/b02_out ),
        .I5(\add_sub_0/carry_2 ),
        .O(cout00_out__3));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \res[12]_i_8 
       (.I0(r_a[4]),
        .I1(r_b[4]),
        .I2(\r_op_reg_n_0_[0] ),
        .O(cout0__3));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \res[12]_i_9 
       (.I0(\r_op_reg_n_0_[0] ),
        .I1(r_b[5]),
        .O(\add_sub_0/b08_out ));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \res[13]_i_1 
       (.I0(\res_reg[15]_i_2_n_10 ),
        .I1(\r_op_reg_n_0_[1] ),
        .I2(\add_sub_0/carry_13 ),
        .I3(r_a[13]),
        .I4(\r_op_reg_n_0_[0] ),
        .I5(r_b[13]),
        .O(\res[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888B8BBBBBB8B888)) 
    \res[14]_i_1 
       (.I0(\res_reg[15]_i_2_n_9 ),
        .I1(\r_op_reg_n_0_[1] ),
        .I2(r_a[13]),
        .I3(\add_sub_0/b024_out ),
        .I4(\add_sub_0/carry_13 ),
        .I5(\add_sub_0/GEN_ADD_SUB[14].fa/s0__0 ),
        .O(\res[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \res[14]_i_2 
       (.I0(\r_op_reg_n_0_[0] ),
        .I1(r_b[13]),
        .O(\add_sub_0/b024_out ));
  LUT6 #(
    .INIT(64'hB2FFFFE800E8B200)) 
    \res[14]_i_3 
       (.I0(\add_sub_0/carry_11 ),
        .I1(r_b[11]),
        .I2(r_a[11]),
        .I3(\r_op_reg_n_0_[0] ),
        .I4(r_b[12]),
        .I5(r_a[12]),
        .O(\add_sub_0/carry_13 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \res[14]_i_4 
       (.I0(r_b[14]),
        .I1(\r_op_reg_n_0_[0] ),
        .I2(r_a[14]),
        .O(\add_sub_0/GEN_ADD_SUB[14].fa/s0__0 ));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \res[15]_i_1 
       (.I0(\res_reg[15]_i_2_n_8 ),
        .I1(\r_op_reg_n_0_[1] ),
        .I2(\add_sub_0/carry_15 ),
        .I3(r_a[15]),
        .I4(\r_op_reg_n_0_[0] ),
        .I5(r_b[15]),
        .O(\res[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB2FFFFE800E8B200)) 
    \res[15]_i_3 
       (.I0(\add_sub_0/carry_13 ),
        .I1(r_b[13]),
        .I2(r_a[13]),
        .I3(\r_op_reg_n_0_[0] ),
        .I4(r_b[14]),
        .I5(r_a[14]),
        .O(\add_sub_0/carry_15 ));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \res[16]_i_1 
       (.I0(\res_reg[23]_i_2_n_15 ),
        .I1(\r_op_reg_n_0_[1] ),
        .I2(\add_sub_0/carry_16 ),
        .I3(r_a[16]),
        .I4(\r_op_reg_n_0_[0] ),
        .I5(r_b[16]),
        .O(\res[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888B8BBBBBB8B888)) 
    \res[17]_i_1 
       (.I0(\res_reg[23]_i_2_n_14 ),
        .I1(\r_op_reg_n_0_[1] ),
        .I2(r_a[16]),
        .I3(\add_sub_0/b030_out ),
        .I4(\add_sub_0/carry_16 ),
        .I5(\add_sub_0/GEN_ADD_SUB[17].fa/s0__0 ),
        .O(\res[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \res[17]_i_10 
       (.I0(\r_op_reg_n_0_[0] ),
        .I1(r_b[7]),
        .O(\add_sub_0/b012_out ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \res[17]_i_2 
       (.I0(\r_op_reg_n_0_[0] ),
        .I1(r_b[16]),
        .O(\add_sub_0/b030_out ));
  LUT6 #(
    .INIT(64'hB2FFFFE800E8B200)) 
    \res[17]_i_3 
       (.I0(\add_sub_0/carry_14 ),
        .I1(r_b[14]),
        .I2(r_a[14]),
        .I3(\r_op_reg_n_0_[0] ),
        .I4(r_b[15]),
        .I5(r_a[15]),
        .O(\add_sub_0/carry_16 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \res[17]_i_4 
       (.I0(r_b[17]),
        .I1(\r_op_reg_n_0_[0] ),
        .I2(r_a[17]),
        .O(\add_sub_0/GEN_ADD_SUB[17].fa/s0__0 ));
  LUT6 #(
    .INIT(64'hB2FFFFE800E8B200)) 
    \res[17]_i_5 
       (.I0(\add_sub_0/carry_12 ),
        .I1(r_b[12]),
        .I2(r_a[12]),
        .I3(\r_op_reg_n_0_[0] ),
        .I4(r_b[13]),
        .I5(r_a[13]),
        .O(\add_sub_0/carry_14 ));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \res[17]_i_6 
       (.I0(cout00_out__8),
        .I1(cout0__8),
        .I2(\add_sub_0/b018_out ),
        .I3(r_a[10]),
        .I4(\add_sub_0/b020_out ),
        .I5(r_a[11]),
        .O(\add_sub_0/carry_12 ));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \res[17]_i_7 
       (.I0(\add_sub_0/GEN_ADD_SUB[9].fa/s0__0 ),
        .I1(r_a[8]),
        .I2(\add_sub_0/b014_out ),
        .I3(r_a[7]),
        .I4(\add_sub_0/b012_out ),
        .I5(\add_sub_0/carry_7 ),
        .O(cout00_out__8));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \res[17]_i_8 
       (.I0(r_a[9]),
        .I1(r_b[9]),
        .I2(\r_op_reg_n_0_[0] ),
        .O(cout0__8));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \res[17]_i_9 
       (.I0(\r_op_reg_n_0_[0] ),
        .I1(r_b[10]),
        .O(\add_sub_0/b018_out ));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \res[18]_i_1 
       (.I0(\res_reg[23]_i_2_n_13 ),
        .I1(\r_op_reg_n_0_[1] ),
        .I2(\add_sub_0/carry_18 ),
        .I3(r_a[18]),
        .I4(\r_op_reg_n_0_[0] ),
        .I5(r_b[18]),
        .O(\res[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888B8BBBBBB8B888)) 
    \res[19]_i_1 
       (.I0(\res_reg[23]_i_2_n_12 ),
        .I1(\r_op_reg_n_0_[1] ),
        .I2(r_a[18]),
        .I3(\add_sub_0/b034_out ),
        .I4(\add_sub_0/carry_18 ),
        .I5(\add_sub_0/GEN_ADD_SUB[19].fa/s0__0 ),
        .O(\res[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \res[19]_i_2 
       (.I0(\r_op_reg_n_0_[0] ),
        .I1(r_b[18]),
        .O(\add_sub_0/b034_out ));
  LUT6 #(
    .INIT(64'hB2FFFFE800E8B200)) 
    \res[19]_i_3 
       (.I0(\add_sub_0/carry_16 ),
        .I1(r_b[16]),
        .I2(r_a[16]),
        .I3(\r_op_reg_n_0_[0] ),
        .I4(r_b[17]),
        .I5(r_a[17]),
        .O(\add_sub_0/carry_18 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \res[19]_i_4 
       (.I0(r_b[19]),
        .I1(\r_op_reg_n_0_[0] ),
        .I2(r_a[19]),
        .O(\add_sub_0/GEN_ADD_SUB[19].fa/s0__0 ));
  LUT6 #(
    .INIT(64'h8B888BBBB8BBB888)) 
    \res[1]_i_1 
       (.I0(\res_reg[7]_i_2_n_14 ),
        .I1(\r_op_reg_n_0_[1] ),
        .I2(r_a[0]),
        .I3(r_b[0]),
        .I4(\r_op_reg_n_0_[0] ),
        .I5(\add_sub_0/GEN_ADD_SUB[1].fa/s0__0 ),
        .O(\res[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \res[1]_i_2 
       (.I0(r_b[1]),
        .I1(\r_op_reg_n_0_[0] ),
        .I2(r_a[1]),
        .O(\add_sub_0/GEN_ADD_SUB[1].fa/s0__0 ));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \res[20]_i_1 
       (.I0(\res_reg[23]_i_2_n_11 ),
        .I1(\r_op_reg_n_0_[1] ),
        .I2(\add_sub_0/carry_20 ),
        .I3(r_a[20]),
        .I4(\r_op_reg_n_0_[0] ),
        .I5(r_b[20]),
        .O(\res[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB2FFFFE800E8B200)) 
    \res[20]_i_2 
       (.I0(\add_sub_0/carry_18 ),
        .I1(r_b[18]),
        .I2(r_a[18]),
        .I3(\r_op_reg_n_0_[0] ),
        .I4(r_b[19]),
        .I5(r_a[19]),
        .O(\add_sub_0/carry_20 ));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \res[21]_i_1 
       (.I0(\res_reg[23]_i_2_n_10 ),
        .I1(\r_op_reg_n_0_[1] ),
        .I2(\add_sub_0/carry_21 ),
        .I3(r_a[21]),
        .I4(\r_op_reg_n_0_[0] ),
        .I5(r_b[21]),
        .O(\res[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888B8BBBBBB8B888)) 
    \res[22]_i_1 
       (.I0(\res_reg[23]_i_2_n_9 ),
        .I1(\r_op_reg_n_0_[1] ),
        .I2(r_a[21]),
        .I3(\add_sub_0/b040_out ),
        .I4(\add_sub_0/carry_21 ),
        .I5(\add_sub_0/GEN_ADD_SUB[22].fa/s0__0 ),
        .O(\res[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \res[22]_i_10 
       (.I0(\r_op_reg_n_0_[0] ),
        .I1(r_b[12]),
        .O(\add_sub_0/b022_out ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \res[22]_i_2 
       (.I0(\r_op_reg_n_0_[0] ),
        .I1(r_b[21]),
        .O(\add_sub_0/b040_out ));
  LUT6 #(
    .INIT(64'hB2FFFFE800E8B200)) 
    \res[22]_i_3 
       (.I0(\add_sub_0/carry_19 ),
        .I1(r_b[19]),
        .I2(r_a[19]),
        .I3(\r_op_reg_n_0_[0] ),
        .I4(r_b[20]),
        .I5(r_a[20]),
        .O(\add_sub_0/carry_21 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \res[22]_i_4 
       (.I0(r_b[22]),
        .I1(\r_op_reg_n_0_[0] ),
        .I2(r_a[22]),
        .O(\add_sub_0/GEN_ADD_SUB[22].fa/s0__0 ));
  LUT6 #(
    .INIT(64'hB2FFFFE800E8B200)) 
    \res[22]_i_5 
       (.I0(\add_sub_0/carry_17 ),
        .I1(r_b[17]),
        .I2(r_a[17]),
        .I3(\r_op_reg_n_0_[0] ),
        .I4(r_b[18]),
        .I5(r_a[18]),
        .O(\add_sub_0/carry_19 ));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \res[22]_i_6 
       (.I0(cout00_out__13),
        .I1(cout0__13),
        .I2(\add_sub_0/b028_out ),
        .I3(r_a[15]),
        .I4(\add_sub_0/b030_out ),
        .I5(r_a[16]),
        .O(\add_sub_0/carry_17 ));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \res[22]_i_7 
       (.I0(\add_sub_0/GEN_ADD_SUB[14].fa/s0__0 ),
        .I1(r_a[13]),
        .I2(\add_sub_0/b024_out ),
        .I3(r_a[12]),
        .I4(\add_sub_0/b022_out ),
        .I5(\add_sub_0/carry_12 ),
        .O(cout00_out__13));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \res[22]_i_8 
       (.I0(r_a[14]),
        .I1(r_b[14]),
        .I2(\r_op_reg_n_0_[0] ),
        .O(cout0__13));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \res[22]_i_9 
       (.I0(\r_op_reg_n_0_[0] ),
        .I1(r_b[15]),
        .O(\add_sub_0/b028_out ));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \res[23]_i_1 
       (.I0(\res_reg[23]_i_2_n_8 ),
        .I1(\r_op_reg_n_0_[1] ),
        .I2(\add_sub_0/carry_23 ),
        .I3(r_a[23]),
        .I4(\r_op_reg_n_0_[0] ),
        .I5(r_b[23]),
        .O(\res[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res[23]_i_3 
       (.I0(res0__1_n_99),
        .I1(res0__0_n_99),
        .O(\res[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res[23]_i_4 
       (.I0(res0__1_n_100),
        .I1(res0__0_n_100),
        .O(\res[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res[23]_i_5 
       (.I0(res0__1_n_101),
        .I1(res0__0_n_101),
        .O(\res[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res[23]_i_6 
       (.I0(res0__1_n_102),
        .I1(res0__0_n_102),
        .O(\res[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res[23]_i_7 
       (.I0(res0__1_n_103),
        .I1(res0__0_n_103),
        .O(\res[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res[23]_i_8 
       (.I0(res0__1_n_104),
        .I1(res0__0_n_104),
        .O(\res[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res[23]_i_9 
       (.I0(res0__1_n_105),
        .I1(res0__0_n_105),
        .O(\res[23]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h888B8BBBBBB8B888)) 
    \res[24]_i_1 
       (.I0(\res_reg[31]_i_3_n_15 ),
        .I1(\r_op_reg_n_0_[1] ),
        .I2(r_a[23]),
        .I3(\add_sub_0/b044_out ),
        .I4(\add_sub_0/carry_23 ),
        .I5(\add_sub_0/GEN_ADD_SUB[24].fa/s0__0 ),
        .O(\res[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \res[24]_i_2 
       (.I0(\r_op_reg_n_0_[0] ),
        .I1(r_b[23]),
        .O(\add_sub_0/b044_out ));
  LUT6 #(
    .INIT(64'hB2FFFFE800E8B200)) 
    \res[24]_i_3 
       (.I0(\add_sub_0/carry_21 ),
        .I1(r_b[21]),
        .I2(r_a[21]),
        .I3(\r_op_reg_n_0_[0] ),
        .I4(r_b[22]),
        .I5(r_a[22]),
        .O(\add_sub_0/carry_23 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \res[24]_i_4 
       (.I0(r_b[24]),
        .I1(\r_op_reg_n_0_[0] ),
        .I2(r_a[24]),
        .O(\add_sub_0/GEN_ADD_SUB[24].fa/s0__0 ));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \res[25]_i_1 
       (.I0(\res_reg[31]_i_3_n_14 ),
        .I1(\r_op_reg_n_0_[1] ),
        .I2(\add_sub_0/carry_25 ),
        .I3(r_a[25]),
        .I4(\r_op_reg_n_0_[0] ),
        .I5(r_b[25]),
        .O(\res[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB2FFFFE800E8B200)) 
    \res[25]_i_2 
       (.I0(\add_sub_0/carry_23 ),
        .I1(r_b[23]),
        .I2(r_a[23]),
        .I3(\r_op_reg_n_0_[0] ),
        .I4(r_b[24]),
        .I5(r_a[24]),
        .O(\add_sub_0/carry_25 ));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \res[26]_i_1 
       (.I0(\res_reg[31]_i_3_n_13 ),
        .I1(\r_op_reg_n_0_[1] ),
        .I2(\add_sub_0/carry_26 ),
        .I3(r_a[26]),
        .I4(\r_op_reg_n_0_[0] ),
        .I5(r_b[26]),
        .O(\res[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB2FFFFE800E8B200)) 
    \res[26]_i_2 
       (.I0(\add_sub_0/carry_24 ),
        .I1(r_b[24]),
        .I2(r_a[24]),
        .I3(\r_op_reg_n_0_[0] ),
        .I4(r_b[25]),
        .I5(r_a[25]),
        .O(\add_sub_0/carry_26 ));
  LUT6 #(
    .INIT(64'hB2FFFFE800E8B200)) 
    \res[26]_i_3 
       (.I0(\add_sub_0/carry_22 ),
        .I1(r_b[22]),
        .I2(r_a[22]),
        .I3(\r_op_reg_n_0_[0] ),
        .I4(r_b[23]),
        .I5(r_a[23]),
        .O(\add_sub_0/carry_24 ));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \res[26]_i_4 
       (.I0(cout00_out__18),
        .I1(cout0__18),
        .I2(\add_sub_0/b038_out ),
        .I3(r_a[20]),
        .I4(\add_sub_0/b040_out ),
        .I5(r_a[21]),
        .O(\add_sub_0/carry_22 ));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \res[26]_i_5 
       (.I0(\add_sub_0/GEN_ADD_SUB[19].fa/s0__0 ),
        .I1(r_a[18]),
        .I2(\add_sub_0/b034_out ),
        .I3(r_a[17]),
        .I4(\add_sub_0/b032_out ),
        .I5(\add_sub_0/carry_17 ),
        .O(cout00_out__18));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \res[26]_i_6 
       (.I0(r_a[19]),
        .I1(r_b[19]),
        .I2(\r_op_reg_n_0_[0] ),
        .O(cout0__18));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \res[26]_i_7 
       (.I0(\r_op_reg_n_0_[0] ),
        .I1(r_b[20]),
        .O(\add_sub_0/b038_out ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \res[26]_i_8 
       (.I0(\r_op_reg_n_0_[0] ),
        .I1(r_b[17]),
        .O(\add_sub_0/b032_out ));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \res[27]_i_1 
       (.I0(\res_reg[31]_i_3_n_12 ),
        .I1(\r_op_reg_n_0_[1] ),
        .I2(\add_sub_0/carry_27 ),
        .I3(r_a[27]),
        .I4(\r_op_reg_n_0_[0] ),
        .I5(r_b[27]),
        .O(\res[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB2FFFFE800E8B200)) 
    \res[27]_i_2 
       (.I0(\add_sub_0/carry_25 ),
        .I1(r_b[25]),
        .I2(r_a[25]),
        .I3(\r_op_reg_n_0_[0] ),
        .I4(r_b[26]),
        .I5(r_a[26]),
        .O(\add_sub_0/carry_27 ));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \res[28]_i_1 
       (.I0(\res_reg[31]_i_3_n_11 ),
        .I1(\r_op_reg_n_0_[1] ),
        .I2(\add_sub_0/carry_28 ),
        .I3(r_a[28]),
        .I4(\r_op_reg_n_0_[0] ),
        .I5(r_b[28]),
        .O(\res[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB2FFFFE800E8B200)) 
    \res[28]_i_2 
       (.I0(\add_sub_0/carry_26 ),
        .I1(r_b[26]),
        .I2(r_a[26]),
        .I3(\r_op_reg_n_0_[0] ),
        .I4(r_b[27]),
        .I5(r_a[27]),
        .O(\add_sub_0/carry_28 ));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \res[29]_i_1 
       (.I0(\res_reg[31]_i_3_n_10 ),
        .I1(\r_op_reg_n_0_[1] ),
        .I2(\add_sub_0/carry_29 ),
        .I3(r_a[29]),
        .I4(\r_op_reg_n_0_[0] ),
        .I5(r_b[29]),
        .O(\res[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB2FFFFE800E8B200)) 
    \res[29]_i_2 
       (.I0(\add_sub_0/carry_27 ),
        .I1(r_b[27]),
        .I2(r_a[27]),
        .I3(\r_op_reg_n_0_[0] ),
        .I4(r_b[28]),
        .I5(r_a[28]),
        .O(\add_sub_0/carry_29 ));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \res[2]_i_1 
       (.I0(\res_reg[7]_i_2_n_13 ),
        .I1(\r_op_reg_n_0_[1] ),
        .I2(\add_sub_0/carry_2 ),
        .I3(r_a[2]),
        .I4(\r_op_reg_n_0_[0] ),
        .I5(r_b[2]),
        .O(\res[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hDFF808D0)) 
    \res[2]_i_2 
       (.I0(r_b[0]),
        .I1(r_a[0]),
        .I2(\r_op_reg_n_0_[0] ),
        .I3(r_b[1]),
        .I4(r_a[1]),
        .O(\add_sub_0/carry_2 ));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \res[30]_i_1 
       (.I0(\res_reg[31]_i_3_n_9 ),
        .I1(\r_op_reg_n_0_[1] ),
        .I2(\add_sub_0/carry_30 ),
        .I3(r_a[30]),
        .I4(\r_op_reg_n_0_[0] ),
        .I5(r_b[30]),
        .O(\res[30]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \res[31]_i_1 
       (.I0(rstn),
        .O(p_0_in));
  LUT2 #(
    .INIT(4'h6)) 
    \res[31]_i_10 
       (.I0(res0__1_n_94),
        .I1(res0__0_n_94),
        .O(\res[31]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res[31]_i_11 
       (.I0(res0__1_n_95),
        .I1(res0__0_n_95),
        .O(\res[31]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res[31]_i_12 
       (.I0(res0__1_n_96),
        .I1(res0__0_n_96),
        .O(\res[31]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res[31]_i_13 
       (.I0(res0__1_n_97),
        .I1(res0__0_n_97),
        .O(\res[31]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res[31]_i_14 
       (.I0(res0__1_n_98),
        .I1(res0__0_n_98),
        .O(\res[31]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h888B8BBBBBB8B888)) 
    \res[31]_i_2 
       (.I0(\res_reg[31]_i_3_n_8 ),
        .I1(\r_op_reg_n_0_[1] ),
        .I2(r_a[30]),
        .I3(\add_sub_0/b058_out ),
        .I4(\add_sub_0/carry_30 ),
        .I5(\add_sub_0/GEN_ADD_SUB[31].fa/s0__0 ),
        .O(\res[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \res[31]_i_4 
       (.I0(\r_op_reg_n_0_[0] ),
        .I1(r_b[30]),
        .O(\add_sub_0/b058_out ));
  LUT6 #(
    .INIT(64'hB2FFFFE800E8B200)) 
    \res[31]_i_5 
       (.I0(\add_sub_0/carry_28 ),
        .I1(r_b[28]),
        .I2(r_a[28]),
        .I3(\r_op_reg_n_0_[0] ),
        .I4(r_b[29]),
        .I5(r_a[29]),
        .O(\add_sub_0/carry_30 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \res[31]_i_6 
       (.I0(r_b[31]),
        .I1(\r_op_reg_n_0_[0] ),
        .I2(r_a[31]),
        .O(\add_sub_0/GEN_ADD_SUB[31].fa/s0__0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res[31]_i_7 
       (.I0(res0__1_n_91),
        .I1(res0__0_n_91),
        .O(\res[31]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res[31]_i_8 
       (.I0(res0__1_n_92),
        .I1(res0__0_n_92),
        .O(\res[31]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res[31]_i_9 
       (.I0(res0__1_n_93),
        .I1(res0__0_n_93),
        .O(\res[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \res[3]_i_1 
       (.I0(\res_reg[7]_i_2_n_12 ),
        .I1(\r_op_reg_n_0_[1] ),
        .I2(\add_sub_0/carry_3 ),
        .I3(r_a[3]),
        .I4(\r_op_reg_n_0_[0] ),
        .I5(r_b[3]),
        .O(\res[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hBE28)) 
    \res[3]_i_2 
       (.I0(\add_sub_0/carry_2 ),
        .I1(\r_op_reg_n_0_[0] ),
        .I2(r_b[2]),
        .I3(r_a[2]),
        .O(\add_sub_0/carry_3 ));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \res[4]_i_1 
       (.I0(\res_reg[7]_i_2_n_11 ),
        .I1(\r_op_reg_n_0_[1] ),
        .I2(\add_sub_0/carry_4 ),
        .I3(r_a[4]),
        .I4(\r_op_reg_n_0_[0] ),
        .I5(r_b[4]),
        .O(\res[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB2FFFFE800E8B200)) 
    \res[4]_i_2 
       (.I0(\add_sub_0/carry_2 ),
        .I1(r_b[2]),
        .I2(r_a[2]),
        .I3(\r_op_reg_n_0_[0] ),
        .I4(r_b[3]),
        .I5(r_a[3]),
        .O(\add_sub_0/carry_4 ));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \res[5]_i_1 
       (.I0(\res_reg[7]_i_2_n_10 ),
        .I1(\r_op_reg_n_0_[1] ),
        .I2(\add_sub_0/carry_5 ),
        .I3(r_a[5]),
        .I4(\r_op_reg_n_0_[0] ),
        .I5(r_b[5]),
        .O(\res[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hBE28)) 
    \res[5]_i_2 
       (.I0(\add_sub_0/carry_4 ),
        .I1(\r_op_reg_n_0_[0] ),
        .I2(r_b[4]),
        .I3(r_a[4]),
        .O(\add_sub_0/carry_5 ));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \res[6]_i_1 
       (.I0(\res_reg[7]_i_2_n_9 ),
        .I1(\r_op_reg_n_0_[1] ),
        .I2(\add_sub_0/carry_6 ),
        .I3(r_a[6]),
        .I4(\r_op_reg_n_0_[0] ),
        .I5(r_b[6]),
        .O(\res[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888B8BBBBBB8B888)) 
    \res[7]_i_1 
       (.I0(\res_reg[7]_i_2_n_8 ),
        .I1(\r_op_reg_n_0_[1] ),
        .I2(r_a[6]),
        .I3(\add_sub_0/b010_out ),
        .I4(\add_sub_0/carry_6 ),
        .I5(\add_sub_0/GEN_ADD_SUB[7].fa/s0__0 ),
        .O(\res[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \res[7]_i_3 
       (.I0(\r_op_reg_n_0_[0] ),
        .I1(r_b[6]),
        .O(\add_sub_0/b010_out ));
  LUT6 #(
    .INIT(64'hB2FFFFE800E8B200)) 
    \res[7]_i_4 
       (.I0(\add_sub_0/carry_4 ),
        .I1(r_b[4]),
        .I2(r_a[4]),
        .I3(\r_op_reg_n_0_[0] ),
        .I4(r_b[5]),
        .I5(r_a[5]),
        .O(\add_sub_0/carry_6 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \res[7]_i_5 
       (.I0(r_b[7]),
        .I1(\r_op_reg_n_0_[0] ),
        .I2(r_a[7]),
        .O(\add_sub_0/GEN_ADD_SUB[7].fa/s0__0 ));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \res[8]_i_1 
       (.I0(\res_reg[15]_i_2_n_15 ),
        .I1(\r_op_reg_n_0_[1] ),
        .I2(\add_sub_0/carry_8 ),
        .I3(r_a[8]),
        .I4(\r_op_reg_n_0_[0] ),
        .I5(r_b[8]),
        .O(\res[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888B8BBBBBB8B888)) 
    \res[9]_i_1 
       (.I0(\res_reg[15]_i_2_n_14 ),
        .I1(\r_op_reg_n_0_[1] ),
        .I2(r_a[8]),
        .I3(\add_sub_0/b014_out ),
        .I4(\add_sub_0/carry_8 ),
        .I5(\add_sub_0/GEN_ADD_SUB[9].fa/s0__0 ),
        .O(\res[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \res[9]_i_2 
       (.I0(\r_op_reg_n_0_[0] ),
        .I1(r_b[8]),
        .O(\add_sub_0/b014_out ));
  LUT6 #(
    .INIT(64'hB2FFFFE800E8B200)) 
    \res[9]_i_3 
       (.I0(\add_sub_0/carry_6 ),
        .I1(r_b[6]),
        .I2(r_a[6]),
        .I3(\r_op_reg_n_0_[0] ),
        .I4(r_b[7]),
        .I5(r_a[7]),
        .O(\add_sub_0/carry_8 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \res[9]_i_4 
       (.I0(r_b[9]),
        .I1(\r_op_reg_n_0_[0] ),
        .I2(r_a[9]),
        .O(\add_sub_0/GEN_ADD_SUB[9].fa/s0__0 ));
  FDRE \res_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\res[0]_i_1_n_0 ),
        .Q(o_result[0]),
        .R(p_0_in));
  FDRE \res_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\res[10]_i_1_n_0 ),
        .Q(o_result[10]),
        .R(p_0_in));
  FDRE \res_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\res[11]_i_1_n_0 ),
        .Q(o_result[11]),
        .R(p_0_in));
  FDRE \res_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\res[12]_i_1_n_0 ),
        .Q(o_result[12]),
        .R(p_0_in));
  FDRE \res_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\res[13]_i_1_n_0 ),
        .Q(o_result[13]),
        .R(p_0_in));
  FDRE \res_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\res[14]_i_1_n_0 ),
        .Q(o_result[14]),
        .R(p_0_in));
  FDRE \res_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\res[15]_i_1_n_0 ),
        .Q(o_result[15]),
        .R(p_0_in));
  CARRY8 \res_reg[15]_i_2 
       (.CI(\res_reg[7]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\res_reg[15]_i_2_n_0 ,\res_reg[15]_i_2_n_1 ,\res_reg[15]_i_2_n_2 ,\res_reg[15]_i_2_n_3 ,\res_reg[15]_i_2_n_4 ,\res_reg[15]_i_2_n_5 ,\res_reg[15]_i_2_n_6 ,\res_reg[15]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\res_reg[15]_i_2_n_8 ,\res_reg[15]_i_2_n_9 ,\res_reg[15]_i_2_n_10 ,\res_reg[15]_i_2_n_11 ,\res_reg[15]_i_2_n_12 ,\res_reg[15]_i_2_n_13 ,\res_reg[15]_i_2_n_14 ,\res_reg[15]_i_2_n_15 }),
        .S({res0_n_90,res0_n_91,res0_n_92,res0_n_93,res0_n_94,res0_n_95,res0_n_96,res0_n_97}));
  FDRE \res_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\res[16]_i_1_n_0 ),
        .Q(o_result[16]),
        .R(p_0_in));
  FDRE \res_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\res[17]_i_1_n_0 ),
        .Q(o_result[17]),
        .R(p_0_in));
  FDRE \res_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\res[18]_i_1_n_0 ),
        .Q(o_result[18]),
        .R(p_0_in));
  FDRE \res_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\res[19]_i_1_n_0 ),
        .Q(o_result[19]),
        .R(p_0_in));
  FDRE \res_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\res[1]_i_1_n_0 ),
        .Q(o_result[1]),
        .R(p_0_in));
  FDRE \res_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\res[20]_i_1_n_0 ),
        .Q(o_result[20]),
        .R(p_0_in));
  FDRE \res_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\res[21]_i_1_n_0 ),
        .Q(o_result[21]),
        .R(p_0_in));
  FDRE \res_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\res[22]_i_1_n_0 ),
        .Q(o_result[22]),
        .R(p_0_in));
  FDRE \res_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\res[23]_i_1_n_0 ),
        .Q(o_result[23]),
        .R(p_0_in));
  CARRY8 \res_reg[23]_i_2 
       (.CI(\res_reg[15]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\res_reg[23]_i_2_n_0 ,\res_reg[23]_i_2_n_1 ,\res_reg[23]_i_2_n_2 ,\res_reg[23]_i_2_n_3 ,\res_reg[23]_i_2_n_4 ,\res_reg[23]_i_2_n_5 ,\res_reg[23]_i_2_n_6 ,\res_reg[23]_i_2_n_7 }),
        .DI({res0__1_n_99,res0__1_n_100,res0__1_n_101,res0__1_n_102,res0__1_n_103,res0__1_n_104,res0__1_n_105,1'b0}),
        .O({\res_reg[23]_i_2_n_8 ,\res_reg[23]_i_2_n_9 ,\res_reg[23]_i_2_n_10 ,\res_reg[23]_i_2_n_11 ,\res_reg[23]_i_2_n_12 ,\res_reg[23]_i_2_n_13 ,\res_reg[23]_i_2_n_14 ,\res_reg[23]_i_2_n_15 }),
        .S({\res[23]_i_3_n_0 ,\res[23]_i_4_n_0 ,\res[23]_i_5_n_0 ,\res[23]_i_6_n_0 ,\res[23]_i_7_n_0 ,\res[23]_i_8_n_0 ,\res[23]_i_9_n_0 ,res0_n_89}));
  FDRE \res_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\res[24]_i_1_n_0 ),
        .Q(o_result[24]),
        .R(p_0_in));
  FDRE \res_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\res[25]_i_1_n_0 ),
        .Q(o_result[25]),
        .R(p_0_in));
  FDRE \res_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\res[26]_i_1_n_0 ),
        .Q(o_result[26]),
        .R(p_0_in));
  FDRE \res_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\res[27]_i_1_n_0 ),
        .Q(o_result[27]),
        .R(p_0_in));
  FDRE \res_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\res[28]_i_1_n_0 ),
        .Q(o_result[28]),
        .R(p_0_in));
  FDRE \res_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\res[29]_i_1_n_0 ),
        .Q(o_result[29]),
        .R(p_0_in));
  FDRE \res_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\res[2]_i_1_n_0 ),
        .Q(o_result[2]),
        .R(p_0_in));
  FDRE \res_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\res[30]_i_1_n_0 ),
        .Q(o_result[30]),
        .R(p_0_in));
  FDRE \res_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\res[31]_i_2_n_0 ),
        .Q(o_result[31]),
        .R(p_0_in));
  CARRY8 \res_reg[31]_i_3 
       (.CI(\res_reg[23]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_res_reg[31]_i_3_CO_UNCONNECTED [7],\res_reg[31]_i_3_n_1 ,\res_reg[31]_i_3_n_2 ,\res_reg[31]_i_3_n_3 ,\res_reg[31]_i_3_n_4 ,\res_reg[31]_i_3_n_5 ,\res_reg[31]_i_3_n_6 ,\res_reg[31]_i_3_n_7 }),
        .DI({1'b0,res0__1_n_92,res0__1_n_93,res0__1_n_94,res0__1_n_95,res0__1_n_96,res0__1_n_97,res0__1_n_98}),
        .O({\res_reg[31]_i_3_n_8 ,\res_reg[31]_i_3_n_9 ,\res_reg[31]_i_3_n_10 ,\res_reg[31]_i_3_n_11 ,\res_reg[31]_i_3_n_12 ,\res_reg[31]_i_3_n_13 ,\res_reg[31]_i_3_n_14 ,\res_reg[31]_i_3_n_15 }),
        .S({\res[31]_i_7_n_0 ,\res[31]_i_8_n_0 ,\res[31]_i_9_n_0 ,\res[31]_i_10_n_0 ,\res[31]_i_11_n_0 ,\res[31]_i_12_n_0 ,\res[31]_i_13_n_0 ,\res[31]_i_14_n_0 }));
  FDRE \res_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\res[3]_i_1_n_0 ),
        .Q(o_result[3]),
        .R(p_0_in));
  FDRE \res_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\res[4]_i_1_n_0 ),
        .Q(o_result[4]),
        .R(p_0_in));
  FDRE \res_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\res[5]_i_1_n_0 ),
        .Q(o_result[5]),
        .R(p_0_in));
  FDRE \res_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\res[6]_i_1_n_0 ),
        .Q(o_result[6]),
        .R(p_0_in));
  FDRE \res_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\res[7]_i_1_n_0 ),
        .Q(o_result[7]),
        .R(p_0_in));
  CARRY8 \res_reg[7]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\res_reg[7]_i_2_n_0 ,\res_reg[7]_i_2_n_1 ,\res_reg[7]_i_2_n_2 ,\res_reg[7]_i_2_n_3 ,\res_reg[7]_i_2_n_4 ,\res_reg[7]_i_2_n_5 ,\res_reg[7]_i_2_n_6 ,\res_reg[7]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\res_reg[7]_i_2_n_8 ,\res_reg[7]_i_2_n_9 ,\res_reg[7]_i_2_n_10 ,\res_reg[7]_i_2_n_11 ,\res_reg[7]_i_2_n_12 ,\res_reg[7]_i_2_n_13 ,\res_reg[7]_i_2_n_14 ,\res_reg[7]_i_2_n_15 }),
        .S({res0_n_98,res0_n_99,res0_n_100,res0_n_101,res0_n_102,res0_n_103,res0_n_104,res0_n_105}));
  FDRE \res_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\res[8]_i_1_n_0 ),
        .Q(o_result[8]),
        .R(p_0_in));
  FDRE \res_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\res[9]_i_1_n_0 ),
        .Q(o_result[9]),
        .R(p_0_in));
endmodule

(* CHECK_LICENSE_TYPE = "alu_design_alu_0_0,alu,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "alu,Vivado 2024.2.2" *) 
(* NotValidForBitStream *)
module alu_design_alu_0_1
   (clk,
    rstn,
    i_dataa,
    i_datab,
    i_op,
    o_result);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN alu_design_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  input [31:0]i_dataa;
  input [31:0]i_datab;
  input [1:0]i_op;
  output [31:0]o_result;

  wire clk;
  wire [31:0]i_dataa;
  wire [31:0]i_datab;
  wire [1:0]i_op;
  wire [31:0]o_result;
  wire rstn;

  (* DATAW = "32" *) 
  alu_design_alu_0_1_alu inst
       (.clk(clk),
        .i_dataa(i_dataa),
        .i_datab(i_datab),
        .i_op(i_op),
        .o_result(o_result),
        .rstn(rstn));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
