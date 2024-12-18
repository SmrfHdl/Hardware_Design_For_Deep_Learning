// ==============================================================
// File generated on Thu Dec 19 00:32:09 +0700 2024
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// KERNEL_BUS
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of kernel_0
//        bit 7~0 - kernel_0[7:0] (Read/Write)
//        others  - reserved
// 0x14 : reserved
// 0x18 : Data signal of kernel_1
//        bit 7~0 - kernel_1[7:0] (Read/Write)
//        others  - reserved
// 0x1c : reserved
// 0x20 : Data signal of kernel_2
//        bit 7~0 - kernel_2[7:0] (Read/Write)
//        others  - reserved
// 0x24 : reserved
// 0x28 : Data signal of kernel_3
//        bit 7~0 - kernel_3[7:0] (Read/Write)
//        others  - reserved
// 0x2c : reserved
// 0x30 : Data signal of kernel_4
//        bit 7~0 - kernel_4[7:0] (Read/Write)
//        others  - reserved
// 0x34 : reserved
// 0x38 : Data signal of kernel_5
//        bit 7~0 - kernel_5[7:0] (Read/Write)
//        others  - reserved
// 0x3c : reserved
// 0x40 : Data signal of kernel_6
//        bit 7~0 - kernel_6[7:0] (Read/Write)
//        others  - reserved
// 0x44 : reserved
// 0x48 : Data signal of kernel_7
//        bit 7~0 - kernel_7[7:0] (Read/Write)
//        others  - reserved
// 0x4c : reserved
// 0x50 : Data signal of kernel_8
//        bit 7~0 - kernel_8[7:0] (Read/Write)
//        others  - reserved
// 0x54 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XPROCESSIMAGE_KERNEL_BUS_ADDR_AP_CTRL       0x00
#define XPROCESSIMAGE_KERNEL_BUS_ADDR_GIE           0x04
#define XPROCESSIMAGE_KERNEL_BUS_ADDR_IER           0x08
#define XPROCESSIMAGE_KERNEL_BUS_ADDR_ISR           0x0c
#define XPROCESSIMAGE_KERNEL_BUS_ADDR_KERNEL_0_DATA 0x10
#define XPROCESSIMAGE_KERNEL_BUS_BITS_KERNEL_0_DATA 8
#define XPROCESSIMAGE_KERNEL_BUS_ADDR_KERNEL_1_DATA 0x18
#define XPROCESSIMAGE_KERNEL_BUS_BITS_KERNEL_1_DATA 8
#define XPROCESSIMAGE_KERNEL_BUS_ADDR_KERNEL_2_DATA 0x20
#define XPROCESSIMAGE_KERNEL_BUS_BITS_KERNEL_2_DATA 8
#define XPROCESSIMAGE_KERNEL_BUS_ADDR_KERNEL_3_DATA 0x28
#define XPROCESSIMAGE_KERNEL_BUS_BITS_KERNEL_3_DATA 8
#define XPROCESSIMAGE_KERNEL_BUS_ADDR_KERNEL_4_DATA 0x30
#define XPROCESSIMAGE_KERNEL_BUS_BITS_KERNEL_4_DATA 8
#define XPROCESSIMAGE_KERNEL_BUS_ADDR_KERNEL_5_DATA 0x38
#define XPROCESSIMAGE_KERNEL_BUS_BITS_KERNEL_5_DATA 8
#define XPROCESSIMAGE_KERNEL_BUS_ADDR_KERNEL_6_DATA 0x40
#define XPROCESSIMAGE_KERNEL_BUS_BITS_KERNEL_6_DATA 8
#define XPROCESSIMAGE_KERNEL_BUS_ADDR_KERNEL_7_DATA 0x48
#define XPROCESSIMAGE_KERNEL_BUS_BITS_KERNEL_7_DATA 8
#define XPROCESSIMAGE_KERNEL_BUS_ADDR_KERNEL_8_DATA 0x50
#define XPROCESSIMAGE_KERNEL_BUS_BITS_KERNEL_8_DATA 8

