// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
// Date        : Fri Jun 12 12:05:34 2026
// Host        : ECE-MCU2-21 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/g55wang/lab2_system/lab2_system.gen/sources_1/bd/wordle_design/ip/wordle_design_wordle_top_0_0/wordle_design_wordle_top_0_0_stub.v
// Design      : wordle_design_wordle_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "wordle_design_wordle_top_0_0,wordle_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "wordle_top,Vivado 2024.2.2" *) 
module wordle_design_wordle_top_0_0(clk, rstn, i_ref_word_idx, i_guess_word, 
  i_guess_id, o_ready, o_result, o_guess_count, o_game_status)
/* synthesis syn_black_box black_box_pad_pin="rstn,i_ref_word_idx[9:0],i_guess_word[31:0],i_guess_id[3:0],o_ready,o_result[7:0],o_guess_count[3:0],o_game_status[1:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN wordle_design_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  input [9:0]i_ref_word_idx;
  input [31:0]i_guess_word;
  input [3:0]i_guess_id;
  output o_ready;
  output [7:0]o_result;
  output [3:0]o_guess_count;
  output [1:0]o_game_status;
endmodule
