proc boot_jtag { } {
############################
# Switch to JTAG boot mode #
############################
targets -set -filter {name =~ "PSU"}
# update multiboot to ZERO
mwr 0xffca0010 0x0
# change boot mode to JTAG
mwr 0xff5e0200 0x0100
# reset
rst -system
}
 
connect
boot_jtag
 
after 2000
targets -set -filter {name =~ "PSU"}
fpga "./lab2_system.runs/impl_1/wordle_design_wrapper.bit"
mwr 0xffca0038 0x1FF
 
# Select A53 Core 0
targets -set -filter {name =~ "Cortex-A53 #0"}
rst -processor -clear-registers
dow "./lab2_system.sw/wordle_design_wrapper/export/wordle_design_wrapper/sw/boot/fsbl.elf"
con
after 10000
stop
 
dow "./lab2_system.sw/hello_world/build/hello_world.elf"
after 500
con