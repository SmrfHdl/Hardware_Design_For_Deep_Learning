// ==============================================================
// File generated on Thu Dec 19 00:32:09 +0700 2024
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XPROCESSIMAGE_H
#define XPROCESSIMAGE_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xprocessimage_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Kernel_bus_BaseAddress;
} XProcessimage_Config;
#endif

typedef struct {
    u32 Kernel_bus_BaseAddress;
    u32 IsReady;
} XProcessimage;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XProcessimage_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XProcessimage_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XProcessimage_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XProcessimage_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XProcessimage_Initialize(XProcessimage *InstancePtr, u16 DeviceId);
XProcessimage_Config* XProcessimage_LookupConfig(u16 DeviceId);
int XProcessimage_CfgInitialize(XProcessimage *InstancePtr, XProcessimage_Config *ConfigPtr);
#else
int XProcessimage_Initialize(XProcessimage *InstancePtr, const char* InstanceName);
int XProcessimage_Release(XProcessimage *InstancePtr);
#endif

void XProcessimage_Start(XProcessimage *InstancePtr);
u32 XProcessimage_IsDone(XProcessimage *InstancePtr);
u32 XProcessimage_IsIdle(XProcessimage *InstancePtr);
u32 XProcessimage_IsReady(XProcessimage *InstancePtr);
void XProcessimage_EnableAutoRestart(XProcessimage *InstancePtr);
void XProcessimage_DisableAutoRestart(XProcessimage *InstancePtr);

void XProcessimage_Set_kernel_0(XProcessimage *InstancePtr, u32 Data);
u32 XProcessimage_Get_kernel_0(XProcessimage *InstancePtr);
void XProcessimage_Set_kernel_1(XProcessimage *InstancePtr, u32 Data);
u32 XProcessimage_Get_kernel_1(XProcessimage *InstancePtr);
void XProcessimage_Set_kernel_2(XProcessimage *InstancePtr, u32 Data);
u32 XProcessimage_Get_kernel_2(XProcessimage *InstancePtr);
void XProcessimage_Set_kernel_3(XProcessimage *InstancePtr, u32 Data);
u32 XProcessimage_Get_kernel_3(XProcessimage *InstancePtr);
void XProcessimage_Set_kernel_4(XProcessimage *InstancePtr, u32 Data);
u32 XProcessimage_Get_kernel_4(XProcessimage *InstancePtr);
void XProcessimage_Set_kernel_5(XProcessimage *InstancePtr, u32 Data);
u32 XProcessimage_Get_kernel_5(XProcessimage *InstancePtr);
void XProcessimage_Set_kernel_6(XProcessimage *InstancePtr, u32 Data);
u32 XProcessimage_Get_kernel_6(XProcessimage *InstancePtr);
void XProcessimage_Set_kernel_7(XProcessimage *InstancePtr, u32 Data);
u32 XProcessimage_Get_kernel_7(XProcessimage *InstancePtr);
void XProcessimage_Set_kernel_8(XProcessimage *InstancePtr, u32 Data);
u32 XProcessimage_Get_kernel_8(XProcessimage *InstancePtr);

void XProcessimage_InterruptGlobalEnable(XProcessimage *InstancePtr);
void XProcessimage_InterruptGlobalDisable(XProcessimage *InstancePtr);
void XProcessimage_InterruptEnable(XProcessimage *InstancePtr, u32 Mask);
void XProcessimage_InterruptDisable(XProcessimage *InstancePtr, u32 Mask);
void XProcessimage_InterruptClear(XProcessimage *InstancePtr, u32 Mask);
u32 XProcessimage_InterruptGetEnabled(XProcessimage *InstancePtr);
u32 XProcessimage_InterruptGetStatus(XProcessimage *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
