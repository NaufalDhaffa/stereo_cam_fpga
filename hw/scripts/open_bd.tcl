# Opens the block design of the project given on the command line:
#   vivado hw/projects/stereo_2slice/stereo_2slice.xpr -source hw/scripts/open_bd.tcl
set_param board.repoPaths [list [file normalize [file join [file dirname [info script]] .. board_files]]]
open_bd_design [get_files system.bd]
