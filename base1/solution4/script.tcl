############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project base1
set_top processImage
add_files core_base.cpp
add_files -tb TestUtils.cpp -cflags "-Wno-unknown-pragmas"
add_files -tb TestUtils.h -cflags "-Wno-unknown-pragmas"
add_files -tb core.h -cflags "-Wno-unknown-pragmas"
add_files -tb define.h -cflags "-Wno-unknown-pragmas"
add_files -tb test_core.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution4"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
config_export -format ip_catalog -rtl vhdl -version 0.0.0
#source "./base1/solution4/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl vhdl -format ip_catalog -version "0.0.0"
