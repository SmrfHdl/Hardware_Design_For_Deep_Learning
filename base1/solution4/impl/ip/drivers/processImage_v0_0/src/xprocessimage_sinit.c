// ==============================================================
// File generated on Thu Dec 19 00:32:09 +0700 2024
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xprocessimage.h"

extern XProcessimage_Config XProcessimage_ConfigTable[];

XProcessimage_Config *XProcessimage_LookupConfig(u16 DeviceId) {
	XProcessimage_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XPROCESSIMAGE_NUM_INSTANCES; Index++) {
		if (XProcessimage_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XProcessimage_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XProcessimage_Initialize(XProcessimage *InstancePtr, u16 DeviceId) {
	XProcessimage_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XProcessimage_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XProcessimage_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

