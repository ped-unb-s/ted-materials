# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {C:/Users/Adrianne/Desktop/ADRIANNE ALVES DA SILVA - 160047595/flipflop_subida/flipflop_subida.cache/wt} [current_project]
set_property parent.project_path {C:/Users/Adrianne/Desktop/ADRIANNE ALVES DA SILVA - 160047595/flipflop_subida/flipflop_subida.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:basys3:part0:1.1 [current_project]
set_property ip_output_repo {c:/Users/Adrianne/Desktop/ADRIANNE ALVES DA SILVA - 160047595/flipflop_subida/flipflop_subida.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {{C:/Users/Adrianne/Desktop/ADRIANNE ALVES DA SILVA - 160047595/flipflop_subida/flipflop_subida.srcs/sources_1/new/flipflop.vhd}}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/Adrianne/Desktop/basys3_master.xdc
set_property used_in_implementation false [get_files C:/Users/Adrianne/Desktop/basys3_master.xdc]


synth_design -top flipflop -part xc7a35tcpg236-1


write_checkpoint -force -noxdef flipflop.dcp

catch { report_utilization -file flipflop_utilization_synth.rpt -pb flipflop_utilization_synth.pb }