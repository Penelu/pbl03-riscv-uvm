transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+RISCVPROJECT  -L xil_defaultlib -L xlslice_v1_0_5 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.RISCVPROJECT xil_defaultlib.glbl

do {RISCVPROJECT.udo}

run 1000ns

endsim

quit -force
