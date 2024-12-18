// ==============================================================
// File generated on Thu Dec 19 00:32:09 +0700 2024
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xprocessimage.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XProcessimage_CfgInitialize(XProcessimage *InstancePtr, XProcessimage_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Kernel_bus_BaseAddress = ConfigPtr->Kernel_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XProcessimage_Start(XProcessimage *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcessimage_ReadReg(InstancePtr->Kernel_bus_BaseAddress, XPROCESSIMAGE_KERNEL_BUS_ADDR_AP_CTRL) & 0x80;
    XProcessimage_WriteReg(InstancePtr->Kernel_bus_BaseAddress, XPROCESSIMAGE_KERNEL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XProcessimage_IsDone(XProcessimage *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcessimage_ReadReg(InstancePtr->Kernel_bus_BaseAddress, XPROCESSIMAGE_KERNEL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XProcessimage_IsIdle(XProcessimage *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcessimage_ReadReg(InstancePtr->Kernel_bus_BaseAddress, XPROCESSIMAGE_KERNEL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XProcessimage_IsReady(XProcessimage *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcessimage_ReadReg(InstancePtr->Kernel_bus_BaseAddress, XPROCESSIMAGE_KERNEL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XProcessimage_EnableAutoRestart(XProcessimage *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcessimage_WriteReg(InstancePtr->Kernel_bus_BaseAddress, XPROCESSIMAGE_KERNEL_BUS_ADDR_AP_CTRL, 0x80);
}

void XProcessimage_DisableAutoRestart(XProcessimage *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcessimage_WriteReg(InstancePtr->Kernel_bus_BaseAddress, XPROCESSIMAGE_KERNEL_BUS_ADDR_AP_CTRL, 0);
}

void XProcessimage_Set_kernel_0(XProcessimage *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcessimage_WriteReg(InstancePtr->Kernel_bus_BaseAddress, XPROCESSIMAGE_KERNEL_BUS_ADDR_KERNEL_0_DATA, Data);
}

u32 XProcessimage_Get_kernel_0(XProcessimage *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcessimage_ReadReg(InstancePtr->Kernel_bus_BaseAddress, XPROCESSIMAGE_KERNEL_BUS_ADDR_KERNEL_0_DATA);
    return Data;
}

void XProcessimage_Set_kernel_1(XProcessimage *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcessimage_WriteReg(InstancePtr->Kernel_bus_BaseAddress, XPROCESSIMAGE_KERNEL_BUS_ADDR_KERNEL_1_DATA, Data);
}

u32 XProcessimage_Get_kernel_1(XProcessimage *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcessimage_ReadReg(InstancePtr->Kernel_bus_BaseAddress, XPROCESSIMAGE_KERNEL_BUS_ADDR_KERNEL_1_DATA);
    return Data;
}

void XProcessimage_Set_kernel_2(XProcessimage *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcessimage_WriteReg(InstancePtr->Kernel_bus_BaseAddress, XPROCESSIMAGE_KERNEL_BUS_ADDR_KERNEL_2_DATA, Data);
}

u32 XProcessimage_Get_kernel_2(XProcessimage *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcessimage_ReadReg(InstancePtr->Kernel_bus_BaseAddress, XPROCESSIMAGE_KERNEL_BUS_ADDR_KERNEL_2_DATA);
    return Data;
}

void XProcessimage_Set_kernel_3(XProcessimage *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcessimage_WriteReg(InstancePtr->Kernel_bus_BaseAddress, XPROCESSIMAGE_KERNEL_BUS_ADDR_KERNEL_3_DATA, Data);
}

u32 XProcessimage_Get_kernel_3(XProcessimage *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcessimage_ReadReg(InstancePtr->Kernel_bus_BaseAddress, XPROCESSIMAGE_KERNEL_BUS_ADDR_KERNEL_3_DATA);
    return Data;
}

void XProcessimage_Set_kernel_4(XProcessimage *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcessimage_WriteReg(InstancePtr->Kernel_bus_BaseAddress, XPROCESSIMAGE_KERNEL_BUS_ADDR_KERNEL_4_DATA, Data);
}

u32 XProcessimage_Get_kernel_4(XProcessimage *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcessimage_ReadReg(InstancePtr->Kernel_bus_BaseAddress, XPROCESSIMAGE_KERNEL_BUS_ADDR_KERNEL_4_DATA);
    return Data;
}

void XProcessimage_Set_kernel_5(XProcessimage *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcessimage_WriteReg(InstancePtr->Kernel_bus_BaseAddress, XPROCESSIMAGE_KERNEL_BUS_ADDR_KERNEL_5_DATA, Data);
}

u32 XProcessimage_Get_kernel_5(XProcessimage *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcessimage_ReadReg(InstancePtr->Kernel_bus_BaseAddress, XPROCESSIMAGE_KERNEL_BUS_ADDR_KERNEL_5_DATA);
    return Data;
}

void XProcessimage_Set_kernel_6(XProcessimage *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcessimage_WriteReg(InstancePtr->Kernel_bus_BaseAddress, XPROCESSIMAGE_KERNEL_BUS_ADDR_KERNEL_6_DATA, Data);
}

u32 XProcessimage_Get_kernel_6(XProcessimage *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcessimage_ReadReg(InstancePtr->Kernel_bus_BaseAddress, XPROCESSIMAGE_KERNEL_BUS_ADDR_KERNEL_6_DATA);
    return Data;
}

void XProcessimage_Set_kernel_7(XProcessimage *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcessimage_WriteReg(InstancePtr->Kernel_bus_BaseAddress, XPROCESSIMAGE_KERNEL_BUS_ADDR_KERNEL_7_DATA, Data);
}

u32 XProcessimage_Get_kernel_7(XProcessimage *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcessimage_ReadReg(InstancePtr->Kernel_bus_BaseAddress, XPROCESSIMAGE_KERNEL_BUS_ADDR_KERNEL_7_DATA);
    return Data;
}

void XProcessimage_Set_kernel_8(XProcessimage *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcessimage_WriteReg(InstancePtr->Kernel_bus_BaseAddress, XPROCESSIMAGE_KERNEL_BUS_ADDR_KERNEL_8_DATA, Data);
}

u32 XProcessimage_Get_kernel_8(XProcessimage *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcessimage_ReadReg(InstancePtr->Kernel_bus_BaseAddress, XPROCESSIMAGE_KERNEL_BUS_ADDR_KERNEL_8_DATA);
    return Data;
}

void XProcessimage_InterruptGlobalEnable(XProcessimage *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcessimage_WriteReg(InstancePtr->Kernel_bus_BaseAddress, XPROCESSIMAGE_KERNEL_BUS_ADDR_GIE, 1);
}

void XProcessimage_InterruptGlobalDisable(XProcessimage *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcessimage_WriteReg(InstancePtr->Kernel_bus_BaseAddress, XPROCESSIMAGE_KERNEL_BUS_ADDR_GIE, 0);
}

void XProcessimage_InterruptEnable(XProcessimage *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XProcessimage_ReadReg(InstancePtr->Kernel_bus_BaseAddress, XPROCESSIMAGE_KERNEL_BUS_ADDR_IER);
    XProcessimage_WriteReg(InstancePtr->Kernel_bus_BaseAddress, XPROCESSIMAGE_KERNEL_BUS_ADDR_IER, Register | Mask);
}

void XProcessimage_InterruptDisable(XProcessimage *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XProcessimage_ReadReg(InstancePtr->Kernel_bus_BaseAddress, XPROCESSIMAGE_KERNEL_BUS_ADDR_IER);
    XProcessimage_WriteReg(InstancePtr->Kernel_bus_BaseAddress, XPROCESSIMAGE_KERNEL_BUS_ADDR_IER, Register & (~Mask));
}

void XProcessimage_InterruptClear(XProcessimage *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcessimage_WriteReg(InstancePtr->Kernel_bus_BaseAddress, XPROCESSIMAGE_KERNEL_BUS_ADDR_ISR, Mask);
}

u32 XProcessimage_InterruptGetEnabled(XProcessimage *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XProcessimage_ReadReg(InstancePtr->Kernel_bus_BaseAddress, XPROCESSIMAGE_KERNEL_BUS_ADDR_IER);
}

u32 XProcessimage_InterruptGetStatus(XProcessimage *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XProcessimage_ReadReg(InstancePtr->Kernel_bus_BaseAddress, XPROCESSIMAGE_KERNEL_BUS_ADDR_ISR);
}

