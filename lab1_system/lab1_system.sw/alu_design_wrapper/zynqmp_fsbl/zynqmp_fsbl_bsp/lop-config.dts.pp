# 0 "C:\\Users\\g55wang\\lab1_system\\lab1_system.sw\\alu_design_wrapper\\zynqmp_fsbl\\zynqmp_fsbl_bsp\\lop-config.dts"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "C:\\Users\\g55wang\\lab1_system\\lab1_system.sw\\alu_design_wrapper\\zynqmp_fsbl\\zynqmp_fsbl_bsp\\lop-config.dts"

/dts-v1/;
/ {
        compatible = "system-device-tree-v1,lop";
        lops {
                lop_0 {
                        compatible = "system-device-tree-v1,lop,load";
                        load = "assists/baremetal_validate_comp_xlnx.py";
                };

                lop_1 {
                    compatible = "system-device-tree-v1,lop,assist-v1";
                    node = "/";
                    outdir = "C:/Users/g55wang/lab1_system/lab1_system.sw/alu_design_wrapper/zynqmp_fsbl/zynqmp_fsbl_bsp";
                    id = "module,baremetal_validate_comp_xlnx";
                    options = "psu_cortexa53_0 C:/Software/Xilinx/Vitis/2024.2/data/embeddedsw/lib/sw_services/xilffs_v5_3/src C:/Users/g55wang/lab1_system/lab1_system.sw/_ide/.wsdata/.repo.yaml";
                };

                lop_2 {
                    compatible = "system-device-tree-v1,lop,assist-v1";
                    node = "/";
                    outdir = "C:/Users/g55wang/lab1_system/lab1_system.sw/alu_design_wrapper/zynqmp_fsbl/zynqmp_fsbl_bsp";
                    id = "module,baremetal_validate_comp_xlnx";
                    options = "psu_cortexa53_0 C:/Software/Xilinx/Vitis/2024.2/data/embeddedsw/lib/sw_services/xilsecure_v5_4/src C:/Users/g55wang/lab1_system/lab1_system.sw/_ide/.wsdata/.repo.yaml";
                };

                lop_3 {
                    compatible = "system-device-tree-v1,lop,assist-v1";
                    node = "/";
                    outdir = "C:/Users/g55wang/lab1_system/lab1_system.sw/alu_design_wrapper/zynqmp_fsbl/zynqmp_fsbl_bsp";
                    id = "module,baremetal_validate_comp_xlnx";
                    options = "psu_cortexa53_0 C:/Software/Xilinx/Vitis/2024.2/data/embeddedsw/lib/sw_services/xilpm_v5_3/src C:/Users/g55wang/lab1_system/lab1_system.sw/_ide/.wsdata/.repo.yaml";
                };

        };
    };
