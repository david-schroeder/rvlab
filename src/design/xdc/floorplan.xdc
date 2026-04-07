# SPDX-License-Identifier: SHL-2.1
# SPDX-FileCopyrightText: 2026 RVLab Contributors

create_pblock pblock_uberddr3_i
add_cells_to_pblock [get_pblocks pblock_uberddr3_i] [get_cells -quiet [list tlul_ddr_i/ddr_i]]
resize_pblock [get_pblocks pblock_uberddr3_i] -add {SLICE_X140Y150:SLICE_X163Y199}
create_pblock pblock_blkmgr_i
add_cells_to_pblock [get_pblocks pblock_blkmgr_i] [get_cells -quiet [list tlul_ddr_i/blkmgr_i]]
resize_pblock [get_pblocks pblock_blkmgr_i] -add {SLICE_X132Y185:SLICE_X143Y199}
create_pblock pblock_cdc_fifo_i
add_cells_to_pblock [get_pblocks pblock_cdc_fifo_i] [get_cells -quiet [list tlul_ddr_i/cdc_fifo_i]]
resize_pblock [get_pblocks pblock_cdc_fifo_i] -add {SLICE_X132Y170:SLICE_X143Y184}
resize_pblock [get_pblocks pblock_cdc_fifo_i] -add {RAMB18_X7Y68:RAMB18_X7Y73}
resize_pblock [get_pblocks pblock_cdc_fifo_i] -add {RAMB36_X7Y34:RAMB36_X7Y36}
create_pblock pblock_ddr_llc_i
add_cells_to_pblock [get_pblocks pblock_ddr_llc_i] [get_cells -quiet [list tlul_ddr_i/ddr_llc_i]]
resize_pblock [get_pblocks pblock_ddr_llc_i] -add {SLICE_X132Y150:SLICE_X143Y169}
resize_pblock [get_pblocks pblock_ddr_llc_i] -add {RAMB18_X7Y60:RAMB18_X7Y67}
resize_pblock [get_pblocks pblock_ddr_llc_i] -add {RAMB36_X7Y30:RAMB36_X7Y33}
create_pblock pblock_xbar_main_i
add_cells_to_pblock [get_pblocks pblock_xbar_main_i] [get_cells -quiet [list core_i/xbar_main_i]]
resize_pblock [get_pblocks pblock_xbar_main_i] -add {SLICE_X104Y150:SLICE_X131Y184}
create_pblock pblock_xbar_peri_i
add_cells_to_pblock [get_pblocks pblock_xbar_peri_i] [get_cells -quiet [list core_i/xbar_peri_i]]
resize_pblock [get_pblocks pblock_xbar_peri_i] -add {SLICE_X104Y185:SLICE_X107Y199}
create_pblock pblock_debug_i
add_cells_to_pblock [get_pblocks pblock_debug_i] [get_cells -quiet [list core_i/debug_i]]
resize_pblock [get_pblocks pblock_debug_i] -add {SLICE_X112Y185:SLICE_X131Y199}
create_pblock pblock_regdemo_i
add_cells_to_pblock [get_pblocks pblock_regdemo_i] [get_cells -quiet [list core_i/regdemo_i]]
resize_pblock [get_pblocks pblock_regdemo_i] -add {SLICE_X108Y185:SLICE_X111Y199}
create_pblock pblock_timer_i
add_cells_to_pblock [get_pblocks pblock_timer_i] [get_cells -quiet [list core_i/timer_i]]
resize_pblock [get_pblocks pblock_timer_i] -add {SLICE_X100Y184:SLICE_X103Y199}
create_pblock pblock_student_i
add_cells_to_pblock [get_pblocks pblock_student_i] [get_cells -quiet [list core_i/student_i]]
resize_pblock [get_pblocks pblock_student_i] -add {SLICE_X84Y150:SLICE_X103Y199}
resize_pblock [get_pblocks pblock_student_i] -add {DSP48_X5Y60:DSP48_X6Y79}
resize_pblock [get_pblocks pblock_student_i] -add {RAMB18_X5Y60:RAMB18_X6Y79}
resize_pblock [get_pblocks pblock_student_i] -add {RAMB36_X5Y30:RAMB36_X6Y39}
create_pblock pblock_fifo_i
add_cells_to_pblock [get_pblocks pblock_fifo_i] [get_cells -quiet [list core_i/cpu_i/fifo_i]]
resize_pblock [get_pblocks pblock_fifo_i] -add {SLICE_X104Y148:SLICE_X121Y149}
create_pblock pblock_fifo_d
add_cells_to_pblock [get_pblocks pblock_fifo_d] [get_cells -quiet [list core_i/cpu_i/fifo_d]]
resize_pblock [get_pblocks pblock_fifo_d] -add {SLICE_X122Y148:SLICE_X139Y149}
create_pblock pblock_instr_adapter
add_cells_to_pblock [get_pblocks pblock_instr_adapter] [get_cells -quiet [list core_i/cpu_i/instr_adapter]]
resize_pblock [get_pblocks pblock_instr_adapter] -add {SLICE_X104Y146:SLICE_X121Y147}
create_pblock pblock_data_adapter
add_cells_to_pblock [get_pblocks pblock_data_adapter] [get_cells -quiet [list core_i/cpu_i/data_adapter]]
resize_pblock [get_pblocks pblock_data_adapter] -add {SLICE_X122Y146:SLICE_X139Y147}
create_pblock pblock_if_stage_i
add_cells_to_pblock [get_pblocks pblock_if_stage_i] [get_cells -quiet [list core_i/cpu_i/u_core_default/core_i/if_stage_i]]
resize_pblock [get_pblocks pblock_if_stage_i] -add {SLICE_X100Y125:SLICE_X111Y145}
resize_pblock [get_pblocks pblock_if_stage_i] -add {RAMB18_X6Y50:RAMB18_X6Y57}
resize_pblock [get_pblocks pblock_if_stage_i] -add {RAMB36_X6Y25:RAMB36_X6Y28}
create_pblock pblock_id_stage_i
add_cells_to_pblock [get_pblocks pblock_id_stage_i] [get_cells -quiet [list core_i/cpu_i/u_core_default/core_i/id_stage_i]]
resize_pblock [get_pblocks pblock_id_stage_i] -add {SLICE_X112Y110:SLICE_X143Y145}
create_pblock pblock_ex_stage_i
add_cells_to_pblock [get_pblocks pblock_ex_stage_i] [get_cells -quiet [list core_i/cpu_i/u_core_default/core_i/ex_stage_i]]
resize_pblock [get_pblocks pblock_ex_stage_i] -add {SLICE_X144Y125:SLICE_X155Y139}
resize_pblock [get_pblocks pblock_ex_stage_i] -add {DSP48_X7Y50:DSP48_X8Y55}
create_pblock pblock_cs_registers_i
add_cells_to_pblock [get_pblocks pblock_cs_registers_i] [get_cells -quiet [list core_i/cpu_i/u_core_default/core_i/cs_registers_i]]
resize_pblock [get_pblocks pblock_cs_registers_i] -add {SLICE_X100Y110:SLICE_X111Y124}
resize_pblock [get_pblocks pblock_cs_registers_i] -add {RAMB18_X6Y44:RAMB18_X6Y49}
resize_pblock [get_pblocks pblock_cs_registers_i] -add {RAMB36_X6Y22:RAMB36_X6Y24}
create_pblock pblock_load_store_unit_i
add_cells_to_pblock [get_pblocks pblock_load_store_unit_i] [get_cells -quiet [list core_i/cpu_i/u_core_default/core_i/load_store_unit_i]]
resize_pblock [get_pblocks pblock_load_store_unit_i] -add {SLICE_X140Y140:SLICE_X147Y149}
