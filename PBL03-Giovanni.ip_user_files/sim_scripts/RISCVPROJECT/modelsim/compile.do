vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlslice_v1_0_5

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlslice_v1_0_5 modelsim_lib/msim/xlslice_v1_0_5

vlog -work xil_defaultlib -64 -incr -mfcu  -sv "+incdir+../../../../../../tools/Xilinks/2026.1/data/rsb/busdef" \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_pc_0_0/sim/RISCVPROJECT_pc_0_0.sv" \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_instr_mem_0_0/sim/RISCVPROJECT_instr_mem_0_0.sv" \

vlog -work xlslice_v1_0_5 -64 -incr -mfcu  "+incdir+../../../../../../tools/Xilinks/2026.1/data/rsb/busdef" \
"../../../../PBL03-Giovanni.gen/sources_1/bd/RISCVPROJECT/ipshared/6792/hdl/xlslice_v1_0_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../../../tools/Xilinks/2026.1/data/rsb/busdef" \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_xlslice_0_0/sim/RISCVPROJECT_xlslice_0_0.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv "+incdir+../../../../../../tools/Xilinks/2026.1/data/rsb/busdef" \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_regfile_0_0/sim/RISCVPROJECT_regfile_0_0.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../../../tools/Xilinks/2026.1/data/rsb/busdef" \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_xlslice_0_1/sim/RISCVPROJECT_xlslice_0_1.v" \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_xlslice_0_2/sim/RISCVPROJECT_xlslice_0_2.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv "+incdir+../../../../../../tools/Xilinks/2026.1/data/rsb/busdef" \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_alu_0_0/sim/RISCVPROJECT_alu_0_0.sv" \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_data_memory_0_0/sim/RISCVPROJECT_data_memory_0_0.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../../../tools/Xilinks/2026.1/data/rsb/busdef" \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_xlslice_3_0/sim/RISCVPROJECT_xlslice_3_0.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv "+incdir+../../../../../../tools/Xilinks/2026.1/data/rsb/busdef" \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_mux_alu_src_0_0/sim/RISCVPROJECT_mux_alu_src_0_0.sv" \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_pc_plus4_0_0/sim/RISCVPROJECT_pc_plus4_0_0.sv" \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_pc_target_0_0/sim/RISCVPROJECT_pc_target_0_0.sv" \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_mux_pc_0_0/sim/RISCVPROJECT_mux_pc_0_0.sv" \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_decoder_control_0_0/sim/RISCVPROJECT_decoder_control_0_0.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../../../tools/Xilinks/2026.1/data/rsb/busdef" \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_xlslice_4_0/sim/RISCVPROJECT_xlslice_4_0.v" \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_xlslice_4_1/sim/RISCVPROJECT_xlslice_4_1.v" \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_xlslice_4_2/sim/RISCVPROJECT_xlslice_4_2.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv "+incdir+../../../../../../tools/Xilinks/2026.1/data/rsb/busdef" \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_immediate_extended_0_0/sim/RISCVPROJECT_immediate_extended_0_0.sv" \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_write2_0_0/sim/RISCVPROJECT_write2_0_0.sv" \
"../../../bd/RISCVPROJECT/ip/RISCVPROJECT_mux_alu_a_0_0/sim/RISCVPROJECT_mux_alu_a_0_0.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../../../tools/Xilinks/2026.1/data/rsb/busdef" \
"../../../bd/RISCVPROJECT/sim/RISCVPROJECT.v" \

vlog -work xil_defaultlib \
"glbl.v"

