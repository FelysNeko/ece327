vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_20
vlib modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_20
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/lib_cdc_v1_0_3
vlib modelsim_lib/msim/interrupt_control_v3_1_5
vlib modelsim_lib/msim/axi_gpio_v2_0_36
vlib modelsim_lib/msim/proc_sys_reset_v5_0_16
vlib modelsim_lib/msim/xlconstant_v1_1_9
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_34

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_20 modelsim_lib/msim/axi_vip_v1_1_20
vmap zynq_ultra_ps_e_vip_v1_0_20 modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_20
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_3 modelsim_lib/msim/lib_cdc_v1_0_3
vmap interrupt_control_v3_1_5 modelsim_lib/msim/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_36 modelsim_lib/msim/axi_gpio_v2_0_36
vmap proc_sys_reset_v5_0_16 modelsim_lib/msim/proc_sys_reset_v5_0_16
vmap xlconstant_v1_1_9 modelsim_lib/msim/xlconstant_v1_1_9
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap axi_register_slice_v2_1_34 modelsim_lib/msim/axi_register_slice_v2_1_34

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_20 -L xilinx_vip "+incdir+C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_20 -L xilinx_vip "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/ec67/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/fd24/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/0127/hdl/verilog" "+incdir+C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"C:/Software/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Software/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
"C:/Software/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm  -93  \
"C:/Software/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/ec67/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/fd24/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/0127/hdl/verilog" "+incdir+C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/alu_design/sim/alu_design.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/ec67/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/fd24/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/0127/hdl/verilog" "+incdir+C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_20  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_20 -L xilinx_vip "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/ec67/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/fd24/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/0127/hdl/verilog" "+incdir+C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/0f82/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_20  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_20 -L xilinx_vip "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/ec67/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/fd24/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/0127/hdl/verilog" "+incdir+C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/fd24/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/ec67/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/fd24/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/0127/hdl/verilog" "+incdir+C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/alu_design/ip/alu_design_zynq_ultra_ps_e_0_1/sim/alu_design_zynq_ultra_ps_e_0_1_vip_wrapper.v" \

vcom -work axi_lite_ipif_v3_0_4  -93  \
"../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_3  -93  \
"../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_5  -93  \
"../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_36  -93  \
"../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/7a36/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/alu_design/ip/alu_design_axi_gpio_0_1/sim/alu_design_axi_gpio_0_1.vhd" \
"../../../bd/alu_design/ip/alu_design_axi_gpio_1_1/sim/alu_design_axi_gpio_1_1.vhd" \
"../../../bd/alu_design/ip/alu_design_axi_gpio_2_1/sim/alu_design_axi_gpio_2_1.vhd" \
"../../../bd/alu_design/ip/alu_design_axi_gpio_3_1/sim/alu_design_axi_gpio_3_1.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_20 -L xilinx_vip "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/ec67/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/fd24/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/0127/hdl/verilog" "+incdir+C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/alu_design/ipshared/c79a/src/add_sub.sv" \
"../../../bd/alu_design/ipshared/c79a/src/full_adder.sv" \
"../../../bd/alu_design/ipshared/c79a/src/alu.sv" \
"../../../bd/alu_design/ip/alu_design_alu_0_1/sim/alu_design_alu_0_1.sv" \

vcom -work proc_sys_reset_v5_0_16  -93  \
"../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/alu_design/ip/alu_design_rst_ps8_0_99M_1/sim/alu_design_rst_ps8_0_99M_1.vhd" \

vlog -work xlconstant_v1_1_9  -incr -mfcu  "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/ec67/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/fd24/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/0127/hdl/verilog" "+incdir+C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/ec67/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/fd24/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/0127/hdl/verilog" "+incdir+C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_0/sim/bd_f990_one_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_1/sim/bd_f990_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_20 -L xilinx_vip "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/ec67/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/fd24/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/0127/hdl/verilog" "+incdir+C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_20 -L xilinx_vip "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/ec67/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/fd24/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/0127/hdl/verilog" "+incdir+C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_2/sim/bd_f990_arinsw_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_3/sim/bd_f990_rinsw_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_4/sim/bd_f990_awinsw_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_5/sim/bd_f990_winsw_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_6/sim/bd_f990_binsw_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_7/sim/bd_f990_aroutsw_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_8/sim/bd_f990_routsw_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_9/sim/bd_f990_awoutsw_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_10/sim/bd_f990_woutsw_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_11/sim/bd_f990_boutsw_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_20 -L xilinx_vip "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/ec67/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/fd24/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/0127/hdl/verilog" "+incdir+C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/0127/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_20 -L xilinx_vip "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/ec67/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/fd24/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/0127/hdl/verilog" "+incdir+C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_12/sim/bd_f990_arni_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_13/sim/bd_f990_rni_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_14/sim/bd_f990_awni_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_15/sim/bd_f990_wni_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_16/sim/bd_f990_bni_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_20 -L xilinx_vip "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/ec67/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/fd24/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/0127/hdl/verilog" "+incdir+C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/f49a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_20 -L xilinx_vip "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/ec67/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/fd24/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/0127/hdl/verilog" "+incdir+C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_17/sim/bd_f990_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_20 -L xilinx_vip "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/ec67/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/fd24/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/0127/hdl/verilog" "+incdir+C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_20 -L xilinx_vip "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/ec67/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/fd24/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/0127/hdl/verilog" "+incdir+C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_18/sim/bd_f990_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_20 -L xilinx_vip "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/ec67/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/fd24/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/0127/hdl/verilog" "+incdir+C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/63ed/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_20 -L xilinx_vip "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/ec67/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/fd24/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/0127/hdl/verilog" "+incdir+C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_19/sim/bd_f990_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_20 -L xilinx_vip "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/ec67/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/fd24/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/0127/hdl/verilog" "+incdir+C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_20 -L xilinx_vip "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/ec67/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/fd24/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/0127/hdl/verilog" "+incdir+C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_20/sim/bd_f990_s00a2s_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_21/sim/bd_f990_sarn_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_22/sim/bd_f990_srn_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_23/sim/bd_f990_sawn_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_24/sim/bd_f990_swn_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_25/sim/bd_f990_sbn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_20 -L xilinx_vip "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/ec67/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/fd24/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/0127/hdl/verilog" "+incdir+C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_20 -L xilinx_vip "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/ec67/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/fd24/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/0127/hdl/verilog" "+incdir+C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_26/sim/bd_f990_m00s2a_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_27/sim/bd_f990_m00arn_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_28/sim/bd_f990_m00rn_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_29/sim/bd_f990_m00awn_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_30/sim/bd_f990_m00wn_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_31/sim/bd_f990_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_20 -L xilinx_vip "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/ec67/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/fd24/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/0127/hdl/verilog" "+incdir+C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/37bc/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_20 -L xilinx_vip "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/ec67/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/fd24/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/0127/hdl/verilog" "+incdir+C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_32/sim/bd_f990_m00e_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_33/sim/bd_f990_m01s2a_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_34/sim/bd_f990_m01arn_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_35/sim/bd_f990_m01rn_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_36/sim/bd_f990_m01awn_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_37/sim/bd_f990_m01wn_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_38/sim/bd_f990_m01bn_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_39/sim/bd_f990_m01e_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_40/sim/bd_f990_m02s2a_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_41/sim/bd_f990_m02arn_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_42/sim/bd_f990_m02rn_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_43/sim/bd_f990_m02awn_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_44/sim/bd_f990_m02wn_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_45/sim/bd_f990_m02bn_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_46/sim/bd_f990_m02e_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_47/sim/bd_f990_m03s2a_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_48/sim/bd_f990_m03arn_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_49/sim/bd_f990_m03rn_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_50/sim/bd_f990_m03awn_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_51/sim/bd_f990_m03wn_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_52/sim/bd_f990_m03bn_0.sv" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/ip/ip_53/sim/bd_f990_m03e_0.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/ec67/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/fd24/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/0127/hdl/verilog" "+incdir+C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/bd_0/sim/bd_f990.v" \

vlog -work axi_register_slice_v2_1_34  -incr -mfcu  "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/ec67/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/fd24/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/0127/hdl/verilog" "+incdir+C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/48f8/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/ec67/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/fd24/hdl" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab1_system.gen/sources_1/bd/alu_design/ipshared/0127/hdl/verilog" "+incdir+C:/Software/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/alu_design/ip/alu_design_axi_smc_1/sim/alu_design_axi_smc_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

