# ==============================================================
# File generated on Thu Dec 12 17:25:19 +0700 2024
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../test_core.cpp -cflags { -DHW_COSIM -Wno-unknown-pragmas}
add_files -tb ../TestUtils.cpp -cflags { -Wno-unknown-pragmas}
add_files final/core_base.cpp
set_part xc7z020clg484-1
create_clock -name default -period 10
