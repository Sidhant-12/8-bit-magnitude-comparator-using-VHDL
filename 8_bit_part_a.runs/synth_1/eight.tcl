# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
set_msg_config -id {Common-41} -limit 4294967295
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a50ticsg325-1L

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/Admin/Desktop/8_bit_part_a/8_bit_part_a.cache/wt [current_project]
set_property parent.project_path C:/Users/Admin/Desktop/8_bit_part_a/8_bit_part_a.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
read_vhdl -library xil_defaultlib {
  C:/Users/Admin/Desktop/8_bit_part_a/8_bit_part_a.srcs/sources_1/new/three_and.vhd
  C:/Users/Admin/Desktop/8_bit_part_a/8_bit_part_a.srcs/sources_1/new/my_xor.vhd
  C:/Users/Admin/Desktop/8_bit_part_a/8_bit_part_a.srcs/sources_1/new/four_or.vhd
  C:/Users/Admin/Desktop/8_bit_part_a/8_bit_part_a.srcs/sources_1/new/four_and.vhd
  C:/Users/Admin/Desktop/8_bit_part_a/8_bit_part_a.srcs/sources_1/new/five_and.vhd
  C:/Users/Admin/Desktop/8_bit_part_a/8_bit_part_a.srcs/sources_1/new/part_b.vhd
  C:/Users/Admin/Desktop/8_bit_part_a/8_bit_part_a.srcs/sources_1/new/my_not.vhd
  C:/Users/Admin/Desktop/8_bit_part_a/8_bit_part_a.srcs/sources_1/new/comparator4bit.vhd
  C:/Users/Admin/Desktop/8_bit_part_a/8_bit_part_a.srcs/sources_1/new/eight.vhd
}
synth_design -top eight -part xc7a50ticsg325-1L
write_checkpoint -noxdef eight.dcp
catch { report_utilization -file eight_utilization_synth.rpt -pb eight_utilization_synth.pb }
