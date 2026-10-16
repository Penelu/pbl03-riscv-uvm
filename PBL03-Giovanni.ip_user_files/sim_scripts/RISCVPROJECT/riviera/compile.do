transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xil_defaultlib
vlib riviera/xlslice_v1_0_5

vmap xil_defaultlib riviera/xil_defaultlib
vmap xlslice_v1_0_5 riviera/xlslice_v1_0_5

vlog -work xil_defaultlib  -incr "+incdir+../../../../../../tools/Xilinks/2026.1/data/rsb/busdef" -l xil_defaultlib -l xlslice_v1_0_5 \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_pc_0_0/sim/RISCVPROJECT_pc_0_0.sv" \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_instr_mem_0_0/sim/RISCVPROJECT_instr_mem_0_0.sv" \

vlog -work xlslice_v1_0_5  -incr -v2k5 "+incdir+../../../../../../tools/Xilinks/2026.1/data/rsb/busdef" -l xil_defaultlib -l xlslice_v1_0_5 \
"../../../../PBL03-Giovanni.gen/sources_1/bd/RISCVPROJECT/ipshared/6792/hdl/xlslice_v1_0_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../../../tools/Xilinks/2026.1/data/rsb/busdef" -l xil_defaultlib -l xlslice_v1_0_5 \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_xlslice_0_0/sim/RISCVPROJECT_xlslice_0_0.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../../../tools/Xilinks/2026.1/data/rsb/busdef" -l xil_defaultlib -l xlslice_v1_0_5 \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_regfile_0_0/sim/RISCVPROJECT_regfile_0_0.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../../../tools/Xilinks/2026.1/data/rsb/busdef" -l xil_defaultlib -l xlslice_v1_0_5 \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_xlslice_0_1/sim/RISCVPROJECT_xlslice_0_1.v" \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_xlslice_0_2/sim/RISCVPROJECT_xlslice_0_2.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../../../tools/Xilinks/2026.1/data/rsb/busdef" -l xil_defaultlib -l xlslice_v1_0_5 \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_alu_0_0/sim/RISCVPROJECT_alu_0_0.sv" \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_data_memory_0_0/sim/RISCVPROJECT_data_memory_0_0.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../../../tools/Xilinks/2026.1/data/rsb/busdef" -l xil_defaultlib -l xlslice_v1_0_5 \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_xlslice_3_0/sim/RISCVPROJECT_xlslice_3_0.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../../../tools/Xilinks/2026.1/data/rsb/busdef" -l xil_defaultlib -l xlslice_v1_0_5 \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_mux_alu_src_0_0/sim/RISCVPROJECT_mux_alu_src_0_0.sv" \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_pc_plus4_0_0/sim/RISCVPROJECT_pc_plus4_0_0.sv" \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_pc_target_0_0/sim/RISCVPROJECT_pc_target_0_0.sv" \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_mux_pc_0_0/sim/RISCVPROJECT_mux_pc_0_0.sv" \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_decoder_control_0_0/sim/RISCVPROJECT_decoder_control_0_0.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../../../tools/Xilinks/2026.1/data/rsb/busdef" -l xil_defaultlib -l xlslice_v1_0_5 \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_xlslice_4_0/sim/RISCVPROJECT_xlslice_4_0.v" \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_xlslice_4_1/sim/RISCVPROJECT_xlslice_4_1.v" \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_xlslice_4_2/sim/RISCVPROJECT_xlslice_4_2.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../../../tools/Xilinks/2026.1/data/rsb/busdef" -l xil_defaultlib -l xlslice_v1_0_5 \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_immediate_extended_0_0/sim/RISCVPROJECT_immediate_extended_0_0.sv" \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_write2_0_0/sim/RISCVPROJECT_write2_0_0.sv" \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_mux_alu_a_0_0/sim/RISCVPROJECT_mux_alu_a_0_0.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../../../tools/Xilinks/2026.1/data/rsb/busdef" -l xil_defaultlib -l xlslice_v1_0_5 \
"../../../bd/RISCVPROJECT/sim/RISCVPROJECT.v" \

vlog -work xil_defaultlib \
"glbl.v"

