# SPDX-License-Identifier: SHL-2.1
# SPDX-FileCopyrightText: 2026 RVLab Contributors

# DDR
highlight_objects -color_index 4 -leaf_cells [get_cells tlul_ddr_i]
highlight_objects -color_index 5 -leaf_cells [get_cells tlul_ddr_i/ddr_i]
highlight_objects -color_index 8 -leaf_cells [get_cells tlul_ddr_i/ddr_llc_i]

# CPU
highlight_objects -color_index 12 -leaf_cells [get_cells core_i/cpu_i]
highlight_objects -color_index 11 -leaf_cells [get_cells core_i/cpu_i/u_core_default]
highlight_objects -color_index 16 -leaf_cells [get_cells core_i/cpu_i/u_core_default/core_i/id_stage_i/register_file_i]

# XBARs
highlight_objects -color_index 2 -leaf_cells [get_cells core_i/xbar_main_i]
highlight_objects -color_index 6 -leaf_cells [get_cells core_i/xbar_peri_i]

# Devices & Periphery
highlight_objects -color_index 9 -leaf_cells [get_cells core_i/student_i]
highlight_objects -color_index 14 -leaf_cells [get_cells core_i/mem_i]
highlight_objects -color_index 14 -leaf_cells [get_cells core_i/regdemo_i]
highlight_objects -color_index 14 -leaf_cells [get_cells core_i/timer_i]
highlight_objects -color_index 15 -leaf_cells [get_cells core_i/debug_i]
highlight_objects -color_index 7 -leaf_cells [get_cells clkmgr_i]
