############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project acc_b.prj
set_top acc_b
add_files acc_b.prj/acc_b.c
add_files -tb acc_b.prj/acc_b_test.c
open_solution "solution1"
set_part {xc7a200tfbg676-2}
create_clock -period 10 -name default
#source "./acc_b.prj/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl
export_design -format ip_catalog
