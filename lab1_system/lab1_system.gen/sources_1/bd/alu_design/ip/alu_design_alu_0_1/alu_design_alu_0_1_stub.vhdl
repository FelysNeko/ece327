-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
-- Date        : Tue Jun  2 10:25:42 2026
-- Host        : ECE-MCU2-09 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top alu_design_alu_0_1 -prefix
--               alu_design_alu_0_1_ alu_design_alu_0_0_stub.vhdl
-- Design      : alu_design_alu_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity alu_design_alu_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    i_dataa : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_datab : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_op : in STD_LOGIC_VECTOR ( 1 downto 0 );
    o_result : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of alu_design_alu_0_1 : entity is "alu_design_alu_0_0,alu,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of alu_design_alu_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of alu_design_alu_0_1 : entity is "package_project";
end alu_design_alu_0_1;

architecture stub of alu_design_alu_0_1 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,rstn,i_dataa[31:0],i_datab[31:0],i_op[1:0],o_result[31:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN alu_design_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rstn : signal is "xilinx.com:signal:reset:1.0 rstn RST";
  attribute X_INTERFACE_MODE of rstn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rstn : signal is "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "alu,Vivado 2024.2.2";
begin
end;
