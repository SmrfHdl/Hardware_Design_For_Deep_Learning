############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project final
set_top processImage
add_files final/core_base.cpp
add_files -tb final/TestUtils.cpp
add_files -tb final/test_core.cpp -cflags "-DHW_COSIM"
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./final/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
