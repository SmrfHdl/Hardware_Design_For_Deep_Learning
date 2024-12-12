set moduleName processImage
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {processImage}
set C_modelType { void 0 }
set C_modelArgList {
	{ inStream_V_data_V int 8 regular {fifo 0 volatile }  }
	{ inStream_V_keep_V int 1 regular {fifo 0 volatile }  }
	{ inStream_V_strb_V int 1 regular {fifo 0 volatile }  }
	{ inStream_V_user_V int 2 regular {fifo 0 volatile }  }
	{ inStream_V_last_V int 1 regular {fifo 0 volatile }  }
	{ inStream_V_id_V int 5 regular {fifo 0 volatile }  }
	{ inStream_V_dest_V int 6 regular {fifo 0 volatile }  }
	{ outStream_V_data_V int 8 regular {fifo 1 volatile }  }
	{ outStream_V_keep_V int 1 regular {fifo 1 volatile }  }
	{ outStream_V_strb_V int 1 regular {fifo 1 volatile }  }
	{ outStream_V_user_V int 2 regular {fifo 1 volatile }  }
	{ outStream_V_last_V int 1 regular {fifo 1 volatile }  }
	{ outStream_V_id_V int 5 regular {fifo 1 volatile }  }
	{ outStream_V_dest_V int 6 regular {fifo 1 volatile }  }
	{ kernel int 8 regular {array 9 { 1 1 } 1 1 }  }
	{ operation int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inStream_V_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "inStream.V.data.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_V_keep_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "inStream.V.keep.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_V_strb_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "inStream.V.strb.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_V_user_V", "interface" : "fifo", "bitwidth" : 2, "direction" : "READONLY", "bitSlice":[{"low":0,"up":1,"cElement": [{"cName": "inStream.V.user.V","cData": "uint2","bit_use": { "low": 0,"up": 1},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_V_last_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "inStream.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_V_id_V", "interface" : "fifo", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "inStream.V.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_V_dest_V", "interface" : "fifo", "bitwidth" : 6, "direction" : "READONLY", "bitSlice":[{"low":0,"up":5,"cElement": [{"cName": "inStream.V.dest.V","cData": "uint6","bit_use": { "low": 0,"up": 5},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "outStream.V.data.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_keep_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "outStream.V.keep.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_strb_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "outStream.V.strb.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_user_V", "interface" : "fifo", "bitwidth" : 2, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":1,"cElement": [{"cName": "outStream.V.user.V","cData": "uint2","bit_use": { "low": 0,"up": 1},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_last_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "outStream.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_id_V", "interface" : "fifo", "bitwidth" : 5, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "outStream.V.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_dest_V", "interface" : "fifo", "bitwidth" : 6, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":5,"cElement": [{"cName": "outStream.V.dest.V","cData": "uint6","bit_use": { "low": 0,"up": 5},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "kernel","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 8,"step" : 1}]}]}]} , 
 	{ "Name" : "operation", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "operation","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 55
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ inStream_V_data_V_dout sc_in sc_lv 8 signal 0 } 
	{ inStream_V_data_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ inStream_V_data_V_read sc_out sc_logic 1 signal 0 } 
	{ inStream_V_keep_V_dout sc_in sc_lv 1 signal 1 } 
	{ inStream_V_keep_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ inStream_V_keep_V_read sc_out sc_logic 1 signal 1 } 
	{ inStream_V_strb_V_dout sc_in sc_lv 1 signal 2 } 
	{ inStream_V_strb_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ inStream_V_strb_V_read sc_out sc_logic 1 signal 2 } 
	{ inStream_V_user_V_dout sc_in sc_lv 2 signal 3 } 
	{ inStream_V_user_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ inStream_V_user_V_read sc_out sc_logic 1 signal 3 } 
	{ inStream_V_last_V_dout sc_in sc_lv 1 signal 4 } 
	{ inStream_V_last_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ inStream_V_last_V_read sc_out sc_logic 1 signal 4 } 
	{ inStream_V_id_V_dout sc_in sc_lv 5 signal 5 } 
	{ inStream_V_id_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ inStream_V_id_V_read sc_out sc_logic 1 signal 5 } 
	{ inStream_V_dest_V_dout sc_in sc_lv 6 signal 6 } 
	{ inStream_V_dest_V_empty_n sc_in sc_logic 1 signal 6 } 
	{ inStream_V_dest_V_read sc_out sc_logic 1 signal 6 } 
	{ outStream_V_data_V_din sc_out sc_lv 8 signal 7 } 
	{ outStream_V_data_V_full_n sc_in sc_logic 1 signal 7 } 
	{ outStream_V_data_V_write sc_out sc_logic 1 signal 7 } 
	{ outStream_V_keep_V_din sc_out sc_lv 1 signal 8 } 
	{ outStream_V_keep_V_full_n sc_in sc_logic 1 signal 8 } 
	{ outStream_V_keep_V_write sc_out sc_logic 1 signal 8 } 
	{ outStream_V_strb_V_din sc_out sc_lv 1 signal 9 } 
	{ outStream_V_strb_V_full_n sc_in sc_logic 1 signal 9 } 
	{ outStream_V_strb_V_write sc_out sc_logic 1 signal 9 } 
	{ outStream_V_user_V_din sc_out sc_lv 2 signal 10 } 
	{ outStream_V_user_V_full_n sc_in sc_logic 1 signal 10 } 
	{ outStream_V_user_V_write sc_out sc_logic 1 signal 10 } 
	{ outStream_V_last_V_din sc_out sc_lv 1 signal 11 } 
	{ outStream_V_last_V_full_n sc_in sc_logic 1 signal 11 } 
	{ outStream_V_last_V_write sc_out sc_logic 1 signal 11 } 
	{ outStream_V_id_V_din sc_out sc_lv 5 signal 12 } 
	{ outStream_V_id_V_full_n sc_in sc_logic 1 signal 12 } 
	{ outStream_V_id_V_write sc_out sc_logic 1 signal 12 } 
	{ outStream_V_dest_V_din sc_out sc_lv 6 signal 13 } 
	{ outStream_V_dest_V_full_n sc_in sc_logic 1 signal 13 } 
	{ outStream_V_dest_V_write sc_out sc_logic 1 signal 13 } 
	{ kernel_address0 sc_out sc_lv 4 signal 14 } 
	{ kernel_ce0 sc_out sc_logic 1 signal 14 } 
	{ kernel_q0 sc_in sc_lv 8 signal 14 } 
	{ kernel_address1 sc_out sc_lv 4 signal 14 } 
	{ kernel_ce1 sc_out sc_logic 1 signal 14 } 
	{ kernel_q1 sc_in sc_lv 8 signal 14 } 
	{ operation sc_in sc_lv 32 signal 15 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "inStream_V_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inStream_V_data_V", "role": "dout" }} , 
 	{ "name": "inStream_V_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream_V_data_V", "role": "empty_n" }} , 
 	{ "name": "inStream_V_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream_V_data_V", "role": "read" }} , 
 	{ "name": "inStream_V_keep_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream_V_keep_V", "role": "dout" }} , 
 	{ "name": "inStream_V_keep_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream_V_keep_V", "role": "empty_n" }} , 
 	{ "name": "inStream_V_keep_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream_V_keep_V", "role": "read" }} , 
 	{ "name": "inStream_V_strb_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream_V_strb_V", "role": "dout" }} , 
 	{ "name": "inStream_V_strb_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream_V_strb_V", "role": "empty_n" }} , 
 	{ "name": "inStream_V_strb_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream_V_strb_V", "role": "read" }} , 
 	{ "name": "inStream_V_user_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "inStream_V_user_V", "role": "dout" }} , 
 	{ "name": "inStream_V_user_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream_V_user_V", "role": "empty_n" }} , 
 	{ "name": "inStream_V_user_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream_V_user_V", "role": "read" }} , 
 	{ "name": "inStream_V_last_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream_V_last_V", "role": "dout" }} , 
 	{ "name": "inStream_V_last_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream_V_last_V", "role": "empty_n" }} , 
 	{ "name": "inStream_V_last_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream_V_last_V", "role": "read" }} , 
 	{ "name": "inStream_V_id_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "inStream_V_id_V", "role": "dout" }} , 
 	{ "name": "inStream_V_id_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream_V_id_V", "role": "empty_n" }} , 
 	{ "name": "inStream_V_id_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream_V_id_V", "role": "read" }} , 
 	{ "name": "inStream_V_dest_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "inStream_V_dest_V", "role": "dout" }} , 
 	{ "name": "inStream_V_dest_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream_V_dest_V", "role": "empty_n" }} , 
 	{ "name": "inStream_V_dest_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream_V_dest_V", "role": "read" }} , 
 	{ "name": "outStream_V_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outStream_V_data_V", "role": "din" }} , 
 	{ "name": "outStream_V_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outStream_V_data_V", "role": "full_n" }} , 
 	{ "name": "outStream_V_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outStream_V_data_V", "role": "write" }} , 
 	{ "name": "outStream_V_keep_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "outStream_V_keep_V", "role": "din" }} , 
 	{ "name": "outStream_V_keep_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outStream_V_keep_V", "role": "full_n" }} , 
 	{ "name": "outStream_V_keep_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outStream_V_keep_V", "role": "write" }} , 
 	{ "name": "outStream_V_strb_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "outStream_V_strb_V", "role": "din" }} , 
 	{ "name": "outStream_V_strb_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outStream_V_strb_V", "role": "full_n" }} , 
 	{ "name": "outStream_V_strb_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outStream_V_strb_V", "role": "write" }} , 
 	{ "name": "outStream_V_user_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "outStream_V_user_V", "role": "din" }} , 
 	{ "name": "outStream_V_user_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outStream_V_user_V", "role": "full_n" }} , 
 	{ "name": "outStream_V_user_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outStream_V_user_V", "role": "write" }} , 
 	{ "name": "outStream_V_last_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "outStream_V_last_V", "role": "din" }} , 
 	{ "name": "outStream_V_last_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outStream_V_last_V", "role": "full_n" }} , 
 	{ "name": "outStream_V_last_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outStream_V_last_V", "role": "write" }} , 
 	{ "name": "outStream_V_id_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "outStream_V_id_V", "role": "din" }} , 
 	{ "name": "outStream_V_id_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outStream_V_id_V", "role": "full_n" }} , 
 	{ "name": "outStream_V_id_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outStream_V_id_V", "role": "write" }} , 
 	{ "name": "outStream_V_dest_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "outStream_V_dest_V", "role": "din" }} , 
 	{ "name": "outStream_V_dest_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outStream_V_dest_V", "role": "full_n" }} , 
 	{ "name": "outStream_V_dest_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outStream_V_dest_V", "role": "write" }} , 
 	{ "name": "kernel_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel", "role": "address0" }} , 
 	{ "name": "kernel_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "ce0" }} , 
 	{ "name": "kernel_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "kernel", "role": "q0" }} , 
 	{ "name": "kernel_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel", "role": "address1" }} , 
 	{ "name": "kernel_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "ce1" }} , 
 	{ "name": "kernel_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "kernel", "role": "q1" }} , 
 	{ "name": "operation", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "operation", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "processImage",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1311240", "EstimateLatencyMax" : "1311240",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "inStream_V_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inStream_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inStream_V_keep_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inStream_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inStream_V_strb_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inStream_V_strb_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inStream_V_user_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inStream_V_user_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inStream_V_last_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inStream_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inStream_V_id_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inStream_V_id_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inStream_V_dest_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inStream_V_dest_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outStream_V_data_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "outStream_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outStream_V_keep_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "outStream_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outStream_V_strb_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "outStream_V_strb_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outStream_V_user_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "outStream_V_user_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outStream_V_last_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "outStream_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outStream_V_id_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "outStream_V_id_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outStream_V_dest_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "outStream_V_dest_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kernel", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "operation", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lineBuff_val_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lineBuff_val_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lineBuff_val_2_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	processImage {
		inStream_V_data_V {Type I LastRead 2 FirstWrite -1}
		inStream_V_keep_V {Type I LastRead 2 FirstWrite -1}
		inStream_V_strb_V {Type I LastRead 2 FirstWrite -1}
		inStream_V_user_V {Type I LastRead 2 FirstWrite -1}
		inStream_V_last_V {Type I LastRead 2 FirstWrite -1}
		inStream_V_id_V {Type I LastRead 2 FirstWrite -1}
		inStream_V_dest_V {Type I LastRead 2 FirstWrite -1}
		outStream_V_data_V {Type O LastRead -1 FirstWrite 3}
		outStream_V_keep_V {Type O LastRead -1 FirstWrite 3}
		outStream_V_strb_V {Type O LastRead -1 FirstWrite 3}
		outStream_V_user_V {Type O LastRead -1 FirstWrite 3}
		outStream_V_last_V {Type O LastRead -1 FirstWrite 3}
		outStream_V_id_V {Type O LastRead -1 FirstWrite 3}
		outStream_V_dest_V {Type O LastRead -1 FirstWrite 3}
		kernel {Type I LastRead 6 FirstWrite -1}
		operation {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1311240", "Max" : "1311240"}
	, {"Name" : "Interval", "Min" : "1311241", "Max" : "1311241"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	inStream_V_data_V { ap_fifo {  { inStream_V_data_V_dout fifo_data 0 8 }  { inStream_V_data_V_empty_n fifo_status 0 1 }  { inStream_V_data_V_read fifo_update 1 1 } } }
	inStream_V_keep_V { ap_fifo {  { inStream_V_keep_V_dout fifo_data 0 1 }  { inStream_V_keep_V_empty_n fifo_status 0 1 }  { inStream_V_keep_V_read fifo_update 1 1 } } }
	inStream_V_strb_V { ap_fifo {  { inStream_V_strb_V_dout fifo_data 0 1 }  { inStream_V_strb_V_empty_n fifo_status 0 1 }  { inStream_V_strb_V_read fifo_update 1 1 } } }
	inStream_V_user_V { ap_fifo {  { inStream_V_user_V_dout fifo_data 0 2 }  { inStream_V_user_V_empty_n fifo_status 0 1 }  { inStream_V_user_V_read fifo_update 1 1 } } }
	inStream_V_last_V { ap_fifo {  { inStream_V_last_V_dout fifo_data 0 1 }  { inStream_V_last_V_empty_n fifo_status 0 1 }  { inStream_V_last_V_read fifo_update 1 1 } } }
	inStream_V_id_V { ap_fifo {  { inStream_V_id_V_dout fifo_data 0 5 }  { inStream_V_id_V_empty_n fifo_status 0 1 }  { inStream_V_id_V_read fifo_update 1 1 } } }
	inStream_V_dest_V { ap_fifo {  { inStream_V_dest_V_dout fifo_data 0 6 }  { inStream_V_dest_V_empty_n fifo_status 0 1 }  { inStream_V_dest_V_read fifo_update 1 1 } } }
	outStream_V_data_V { ap_fifo {  { outStream_V_data_V_din fifo_data 1 8 }  { outStream_V_data_V_full_n fifo_status 0 1 }  { outStream_V_data_V_write fifo_update 1 1 } } }
	outStream_V_keep_V { ap_fifo {  { outStream_V_keep_V_din fifo_data 1 1 }  { outStream_V_keep_V_full_n fifo_status 0 1 }  { outStream_V_keep_V_write fifo_update 1 1 } } }
	outStream_V_strb_V { ap_fifo {  { outStream_V_strb_V_din fifo_data 1 1 }  { outStream_V_strb_V_full_n fifo_status 0 1 }  { outStream_V_strb_V_write fifo_update 1 1 } } }
	outStream_V_user_V { ap_fifo {  { outStream_V_user_V_din fifo_data 1 2 }  { outStream_V_user_V_full_n fifo_status 0 1 }  { outStream_V_user_V_write fifo_update 1 1 } } }
	outStream_V_last_V { ap_fifo {  { outStream_V_last_V_din fifo_data 1 1 }  { outStream_V_last_V_full_n fifo_status 0 1 }  { outStream_V_last_V_write fifo_update 1 1 } } }
	outStream_V_id_V { ap_fifo {  { outStream_V_id_V_din fifo_data 1 5 }  { outStream_V_id_V_full_n fifo_status 0 1 }  { outStream_V_id_V_write fifo_update 1 1 } } }
	outStream_V_dest_V { ap_fifo {  { outStream_V_dest_V_din fifo_data 1 6 }  { outStream_V_dest_V_full_n fifo_status 0 1 }  { outStream_V_dest_V_write fifo_update 1 1 } } }
	kernel { ap_memory {  { kernel_address0 mem_address 1 4 }  { kernel_ce0 mem_ce 1 1 }  { kernel_q0 mem_dout 0 8 }  { kernel_address1 MemPortADDR2 1 4 }  { kernel_ce1 MemPortCE2 1 1 }  { kernel_q1 MemPortDOUT2 0 8 } } }
	operation { ap_none {  { operation in_data 0 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	inStream_V_data_V { fifo_read 262144 no_conditional }
	inStream_V_keep_V { fifo_read 262144 no_conditional }
	inStream_V_strb_V { fifo_read 262144 no_conditional }
	inStream_V_user_V { fifo_read 262144 no_conditional }
	inStream_V_last_V { fifo_read 262144 no_conditional }
	inStream_V_id_V { fifo_read 262144 no_conditional }
	inStream_V_dest_V { fifo_read 262144 no_conditional }
	outStream_V_data_V { fifo_write 262657 has_conditional }
	outStream_V_keep_V { fifo_write 262657 has_conditional }
	outStream_V_strb_V { fifo_write 262657 has_conditional }
	outStream_V_user_V { fifo_write 262657 has_conditional }
	outStream_V_last_V { fifo_write 262657 has_conditional }
	outStream_V_id_V { fifo_write 262657 has_conditional }
	outStream_V_dest_V { fifo_write 262657 has_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
