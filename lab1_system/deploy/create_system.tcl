create_bd_cell -type ip -vlnv xilinx.com:ip:zynq_ultra_ps_e:3.5 zynq_ultra_ps_e_0
apply_bd_automation -rule xilinx.com:bd_rule:zynq_ultra_ps_e -config {apply_board_preset "1" }  [get_bd_cells zynq_ultra_ps_e_0]
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_1
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_2
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_3
create_bd_cell -type ip -vlnv UWATERLOO.CA:user:alu:1.0 alu_0

set_property name dataa [get_bd_cells axi_gpio_0]
set_property CONFIG.C_ALL_OUTPUTS {1} [get_bd_cells dataa]
set_property name datab [get_bd_cells axi_gpio_1]
set_property CONFIG.C_ALL_OUTPUTS {1} [get_bd_cells datab]
set_property name op [get_bd_cells axi_gpio_2]
set_property -dict [list \
  CONFIG.C_ALL_OUTPUTS {1} \
  CONFIG.C_GPIO_WIDTH {2} \
] [get_bd_cells op]
set_property name result [get_bd_cells axi_gpio_3]
set_property CONFIG.C_ALL_INPUTS {1} [get_bd_cells result]
set_property -dict [list \
  CONFIG.PSU__FPGA_PL1_ENABLE {0} \
  CONFIG.PSU__USE__M_AXI_GP1 {0} \
] [get_bd_cells zynq_ultra_ps_e_0]

connect_bd_net [get_bd_pins op/gpio_io_o] [get_bd_pins alu_0/i_op]
connect_bd_net [get_bd_pins datab/gpio_io_o] [get_bd_pins alu_0/i_datab]
connect_bd_net [get_bd_pins dataa/gpio_io_o] [get_bd_pins alu_0/i_dataa]
connect_bd_net [get_bd_pins result/gpio_io_i] [get_bd_pins alu_0/o_result]

apply_bd_automation -rule xilinx.com:bd_rule:clkrst -config { Clk {/zynq_ultra_ps_e_0/pl_clk0 (99 MHz)} Freq {99} Ref_Clk0 {} Ref_Clk1 {} Ref_Clk2 {}}  [get_bd_pins alu_0/clk]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config { Clk_master {Auto} Clk_slave {Auto} Clk_xbar {Auto} Master {/zynq_ultra_ps_e_0/M_AXI_HPM0_FPD} Slave {/dataa/S_AXI} ddr_seg {Auto} intc_ip {New AXI SmartConnect} master_apm {0}}  [get_bd_intf_pins dataa/S_AXI]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config { Clk_master {Auto} Clk_slave {Auto} Clk_xbar {Auto} Master {/zynq_ultra_ps_e_0/M_AXI_HPM0_FPD} Slave {/datab/S_AXI} ddr_seg {Auto} intc_ip {New AXI SmartConnect} master_apm {0}}  [get_bd_intf_pins datab/S_AXI]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config { Clk_master {Auto} Clk_slave {Auto} Clk_xbar {Auto} Master {/zynq_ultra_ps_e_0/M_AXI_HPM0_FPD} Slave {/op/S_AXI} ddr_seg {Auto} intc_ip {New AXI SmartConnect} master_apm {0}}  [get_bd_intf_pins op/S_AXI]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config { Clk_master {Auto} Clk_slave {Auto} Clk_xbar {Auto} Master {/zynq_ultra_ps_e_0/M_AXI_HPM0_FPD} Slave {/result/S_AXI} ddr_seg {Auto} intc_ip {New AXI SmartConnect} master_apm {0}}  [get_bd_intf_pins result/S_AXI]

regenerate_bd_layout
validate_bd_design
save_bd_design