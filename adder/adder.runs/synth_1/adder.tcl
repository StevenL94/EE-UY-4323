# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a200tfbg676-2

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {C:/Users/Steven Lee/OneDrive/Documents/EE-UY 4323/EE-UY-4323/adder/adder.cache/wt} [current_project]
set_property parent.project_path {C:/Users/Steven Lee/OneDrive/Documents/EE-UY 4323/EE-UY-4323/adder/adder.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part xilinx.com:ac701:part0:1.2 [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
read_vhdl -library xil_defaultlib {{C:/Users/Steven Lee/OneDrive/Documents/EE-UY 4323/EE-UY-4323/adder/adder.srcs/sources_1/new/adder.vhd}}
synth_design -top adder -part xc7a200tfbg676-2
write_checkpoint -noxdef adder.dcp
catch { report_utilization -file adder_utilization_synth.rpt -pb adder_utilization_synth.pb }
