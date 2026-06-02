onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib alu_design_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {alu_design.udo}

run 1000ns

quit -force
