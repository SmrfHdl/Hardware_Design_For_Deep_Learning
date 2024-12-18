-- (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:processImage:0.0
-- IP Revision: 0

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY convSystem_processImage_0_0 IS
  PORT (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    inStream_V_data_V_dout : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    inStream_V_data_V_empty_n : IN STD_LOGIC;
    inStream_V_data_V_read : OUT STD_LOGIC;
    inStream_V_keep_V_dout : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    inStream_V_keep_V_empty_n : IN STD_LOGIC;
    inStream_V_keep_V_read : OUT STD_LOGIC;
    inStream_V_strb_V_dout : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    inStream_V_strb_V_empty_n : IN STD_LOGIC;
    inStream_V_strb_V_read : OUT STD_LOGIC;
    inStream_V_user_V_dout : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    inStream_V_user_V_empty_n : IN STD_LOGIC;
    inStream_V_user_V_read : OUT STD_LOGIC;
    inStream_V_last_V_dout : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    inStream_V_last_V_empty_n : IN STD_LOGIC;
    inStream_V_last_V_read : OUT STD_LOGIC;
    inStream_V_id_V_dout : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    inStream_V_id_V_empty_n : IN STD_LOGIC;
    inStream_V_id_V_read : OUT STD_LOGIC;
    inStream_V_dest_V_dout : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    inStream_V_dest_V_empty_n : IN STD_LOGIC;
    inStream_V_dest_V_read : OUT STD_LOGIC;
    outStream_V_data_V_din : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    outStream_V_data_V_full_n : IN STD_LOGIC;
    outStream_V_data_V_write : OUT STD_LOGIC;
    outStream_V_keep_V_din : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    outStream_V_keep_V_full_n : IN STD_LOGIC;
    outStream_V_keep_V_write : OUT STD_LOGIC;
    outStream_V_strb_V_din : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    outStream_V_strb_V_full_n : IN STD_LOGIC;
    outStream_V_strb_V_write : OUT STD_LOGIC;
    outStream_V_user_V_din : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    outStream_V_user_V_full_n : IN STD_LOGIC;
    outStream_V_user_V_write : OUT STD_LOGIC;
    outStream_V_last_V_din : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    outStream_V_last_V_full_n : IN STD_LOGIC;
    outStream_V_last_V_write : OUT STD_LOGIC;
    outStream_V_id_V_din : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    outStream_V_id_V_full_n : IN STD_LOGIC;
    outStream_V_id_V_write : OUT STD_LOGIC;
    outStream_V_dest_V_din : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    outStream_V_dest_V_full_n : IN STD_LOGIC;
    outStream_V_dest_V_write : OUT STD_LOGIC;
    kernel_0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    kernel_1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    kernel_2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    kernel_3 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    kernel_4 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    kernel_5 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    kernel_6 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    kernel_7 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    kernel_8 : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END convSystem_processImage_0_0;

ARCHITECTURE convSystem_processImage_0_0_arch OF convSystem_processImage_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF convSystem_processImage_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT processImage IS
    PORT (
      ap_clk : IN STD_LOGIC;
      ap_rst : IN STD_LOGIC;
      ap_start : IN STD_LOGIC;
      ap_done : OUT STD_LOGIC;
      ap_idle : OUT STD_LOGIC;
      ap_ready : OUT STD_LOGIC;
      inStream_V_data_V_dout : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      inStream_V_data_V_empty_n : IN STD_LOGIC;
      inStream_V_data_V_read : OUT STD_LOGIC;
      inStream_V_keep_V_dout : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      inStream_V_keep_V_empty_n : IN STD_LOGIC;
      inStream_V_keep_V_read : OUT STD_LOGIC;
      inStream_V_strb_V_dout : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      inStream_V_strb_V_empty_n : IN STD_LOGIC;
      inStream_V_strb_V_read : OUT STD_LOGIC;
      inStream_V_user_V_dout : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      inStream_V_user_V_empty_n : IN STD_LOGIC;
      inStream_V_user_V_read : OUT STD_LOGIC;
      inStream_V_last_V_dout : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      inStream_V_last_V_empty_n : IN STD_LOGIC;
      inStream_V_last_V_read : OUT STD_LOGIC;
      inStream_V_id_V_dout : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      inStream_V_id_V_empty_n : IN STD_LOGIC;
      inStream_V_id_V_read : OUT STD_LOGIC;
      inStream_V_dest_V_dout : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      inStream_V_dest_V_empty_n : IN STD_LOGIC;
      inStream_V_dest_V_read : OUT STD_LOGIC;
      outStream_V_data_V_din : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      outStream_V_data_V_full_n : IN STD_LOGIC;
      outStream_V_data_V_write : OUT STD_LOGIC;
      outStream_V_keep_V_din : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      outStream_V_keep_V_full_n : IN STD_LOGIC;
      outStream_V_keep_V_write : OUT STD_LOGIC;
      outStream_V_strb_V_din : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      outStream_V_strb_V_full_n : IN STD_LOGIC;
      outStream_V_strb_V_write : OUT STD_LOGIC;
      outStream_V_user_V_din : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      outStream_V_user_V_full_n : IN STD_LOGIC;
      outStream_V_user_V_write : OUT STD_LOGIC;
      outStream_V_last_V_din : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      outStream_V_last_V_full_n : IN STD_LOGIC;
      outStream_V_last_V_write : OUT STD_LOGIC;
      outStream_V_id_V_din : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      outStream_V_id_V_full_n : IN STD_LOGIC;
      outStream_V_id_V_write : OUT STD_LOGIC;
      outStream_V_dest_V_din : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      outStream_V_dest_V_full_n : IN STD_LOGIC;
      outStream_V_dest_V_write : OUT STD_LOGIC;
      kernel_0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      kernel_1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      kernel_2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      kernel_3 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      kernel_4 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      kernel_5 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      kernel_6 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      kernel_7 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      kernel_8 : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
  END COMPONENT processImage;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF convSystem_processImage_0_0_arch: ARCHITECTURE IS "HLS";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF kernel_8: SIGNAL IS "XIL_INTERFACENAME kernel_8, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value" & 
" true}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF kernel_8: SIGNAL IS "xilinx.com:signal:data:1.0 kernel_8 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF kernel_7: SIGNAL IS "XIL_INTERFACENAME kernel_7, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value" & 
" true}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF kernel_7: SIGNAL IS "xilinx.com:signal:data:1.0 kernel_7 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF kernel_6: SIGNAL IS "XIL_INTERFACENAME kernel_6, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value" & 
" true}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF kernel_6: SIGNAL IS "xilinx.com:signal:data:1.0 kernel_6 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF kernel_5: SIGNAL IS "XIL_INTERFACENAME kernel_5, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value" & 
" true}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF kernel_5: SIGNAL IS "xilinx.com:signal:data:1.0 kernel_5 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF kernel_4: SIGNAL IS "XIL_INTERFACENAME kernel_4, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value" & 
" true}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF kernel_4: SIGNAL IS "xilinx.com:signal:data:1.0 kernel_4 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF kernel_3: SIGNAL IS "XIL_INTERFACENAME kernel_3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value" & 
" true}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF kernel_3: SIGNAL IS "xilinx.com:signal:data:1.0 kernel_3 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF kernel_2: SIGNAL IS "XIL_INTERFACENAME kernel_2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value" & 
" true}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF kernel_2: SIGNAL IS "xilinx.com:signal:data:1.0 kernel_2 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF kernel_1: SIGNAL IS "XIL_INTERFACENAME kernel_1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value" & 
" true}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF kernel_1: SIGNAL IS "xilinx.com:signal:data:1.0 kernel_1 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF kernel_0: SIGNAL IS "XIL_INTERFACENAME kernel_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value" & 
" true}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF kernel_0: SIGNAL IS "xilinx.com:signal:data:1.0 kernel_0 DATA";
  ATTRIBUTE X_INTERFACE_INFO OF outStream_V_dest_V_write: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 outStream_V_dest_V WR_EN";
  ATTRIBUTE X_INTERFACE_INFO OF outStream_V_dest_V_full_n: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 outStream_V_dest_V FULL_N";
  ATTRIBUTE X_INTERFACE_PARAMETER OF outStream_V_dest_V_din: SIGNAL IS "XIL_INTERFACENAME outStream_V_dest_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {WR_DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 6} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maxi" & 
"mum {}} value false}}}} FULL_N {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} WR_EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediat" & 
"e dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF outStream_V_dest_V_din: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 outStream_V_dest_V WR_DATA";
  ATTRIBUTE X_INTERFACE_INFO OF outStream_V_id_V_write: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 outStream_V_id_V WR_EN";
  ATTRIBUTE X_INTERFACE_INFO OF outStream_V_id_V_full_n: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 outStream_V_id_V FULL_N";
  ATTRIBUTE X_INTERFACE_PARAMETER OF outStream_V_id_V_din: SIGNAL IS "XIL_INTERFACENAME outStream_V_id_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {WR_DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximu" & 
"m {}} value false}}}} FULL_N {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} WR_EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate " & 
"dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF outStream_V_id_V_din: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 outStream_V_id_V WR_DATA";
  ATTRIBUTE X_INTERFACE_INFO OF outStream_V_last_V_write: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 outStream_V_last_V WR_EN";
  ATTRIBUTE X_INTERFACE_INFO OF outStream_V_last_V_full_n: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 outStream_V_last_V FULL_N";
  ATTRIBUTE X_INTERFACE_PARAMETER OF outStream_V_last_V_din: SIGNAL IS "XIL_INTERFACENAME outStream_V_last_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {WR_DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maxi" & 
"mum {}} value false}}}} FULL_N {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} WR_EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediat" & 
"e dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF outStream_V_last_V_din: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 outStream_V_last_V WR_DATA";
  ATTRIBUTE X_INTERFACE_INFO OF outStream_V_user_V_write: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 outStream_V_user_V WR_EN";
  ATTRIBUTE X_INTERFACE_INFO OF outStream_V_user_V_full_n: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 outStream_V_user_V FULL_N";
  ATTRIBUTE X_INTERFACE_PARAMETER OF outStream_V_user_V_din: SIGNAL IS "XIL_INTERFACENAME outStream_V_user_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {WR_DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 2} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maxi" & 
"mum {}} value false}}}} FULL_N {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} WR_EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediat" & 
"e dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF outStream_V_user_V_din: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 outStream_V_user_V WR_DATA";
  ATTRIBUTE X_INTERFACE_INFO OF outStream_V_strb_V_write: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 outStream_V_strb_V WR_EN";
  ATTRIBUTE X_INTERFACE_INFO OF outStream_V_strb_V_full_n: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 outStream_V_strb_V FULL_N";
  ATTRIBUTE X_INTERFACE_PARAMETER OF outStream_V_strb_V_din: SIGNAL IS "XIL_INTERFACENAME outStream_V_strb_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {WR_DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maxi" & 
"mum {}} value false}}}} FULL_N {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} WR_EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediat" & 
"e dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF outStream_V_strb_V_din: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 outStream_V_strb_V WR_DATA";
  ATTRIBUTE X_INTERFACE_INFO OF outStream_V_keep_V_write: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 outStream_V_keep_V WR_EN";
  ATTRIBUTE X_INTERFACE_INFO OF outStream_V_keep_V_full_n: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 outStream_V_keep_V FULL_N";
  ATTRIBUTE X_INTERFACE_PARAMETER OF outStream_V_keep_V_din: SIGNAL IS "XIL_INTERFACENAME outStream_V_keep_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {WR_DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maxi" & 
"mum {}} value false}}}} FULL_N {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} WR_EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediat" & 
"e dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF outStream_V_keep_V_din: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 outStream_V_keep_V WR_DATA";
  ATTRIBUTE X_INTERFACE_INFO OF outStream_V_data_V_write: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 outStream_V_data_V WR_EN";
  ATTRIBUTE X_INTERFACE_INFO OF outStream_V_data_V_full_n: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 outStream_V_data_V FULL_N";
  ATTRIBUTE X_INTERFACE_PARAMETER OF outStream_V_data_V_din: SIGNAL IS "XIL_INTERFACENAME outStream_V_data_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {WR_DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maxi" & 
"mum {}} value true}}}} FULL_N {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} WR_EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate" & 
" dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF outStream_V_data_V_din: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 outStream_V_data_V WR_DATA";
  ATTRIBUTE X_INTERFACE_INFO OF inStream_V_dest_V_read: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 inStream_V_dest_V RD_EN";
  ATTRIBUTE X_INTERFACE_INFO OF inStream_V_dest_V_empty_n: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 inStream_V_dest_V EMPTY_N";
  ATTRIBUTE X_INTERFACE_PARAMETER OF inStream_V_dest_V_dout: SIGNAL IS "XIL_INTERFACENAME inStream_V_dest_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RD_DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 6} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maxim" & 
"um {}} value false}}}} EMPTY_N {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} RD_EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediat" & 
"e dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF inStream_V_dest_V_dout: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 inStream_V_dest_V RD_DATA";
  ATTRIBUTE X_INTERFACE_INFO OF inStream_V_id_V_read: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 inStream_V_id_V RD_EN";
  ATTRIBUTE X_INTERFACE_INFO OF inStream_V_id_V_empty_n: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 inStream_V_id_V EMPTY_N";
  ATTRIBUTE X_INTERFACE_PARAMETER OF inStream_V_id_V_dout: SIGNAL IS "XIL_INTERFACENAME inStream_V_id_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RD_DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum" & 
" {}} value false}}}} EMPTY_N {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} RD_EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate " & 
"dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF inStream_V_id_V_dout: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 inStream_V_id_V RD_DATA";
  ATTRIBUTE X_INTERFACE_INFO OF inStream_V_last_V_read: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 inStream_V_last_V RD_EN";
  ATTRIBUTE X_INTERFACE_INFO OF inStream_V_last_V_empty_n: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 inStream_V_last_V EMPTY_N";
  ATTRIBUTE X_INTERFACE_PARAMETER OF inStream_V_last_V_dout: SIGNAL IS "XIL_INTERFACENAME inStream_V_last_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RD_DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maxim" & 
"um {}} value false}}}} EMPTY_N {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} RD_EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediat" & 
"e dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF inStream_V_last_V_dout: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 inStream_V_last_V RD_DATA";
  ATTRIBUTE X_INTERFACE_INFO OF inStream_V_user_V_read: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 inStream_V_user_V RD_EN";
  ATTRIBUTE X_INTERFACE_INFO OF inStream_V_user_V_empty_n: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 inStream_V_user_V EMPTY_N";
  ATTRIBUTE X_INTERFACE_PARAMETER OF inStream_V_user_V_dout: SIGNAL IS "XIL_INTERFACENAME inStream_V_user_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RD_DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 2} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maxim" & 
"um {}} value false}}}} EMPTY_N {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} RD_EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediat" & 
"e dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF inStream_V_user_V_dout: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 inStream_V_user_V RD_DATA";
  ATTRIBUTE X_INTERFACE_INFO OF inStream_V_strb_V_read: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 inStream_V_strb_V RD_EN";
  ATTRIBUTE X_INTERFACE_INFO OF inStream_V_strb_V_empty_n: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 inStream_V_strb_V EMPTY_N";
  ATTRIBUTE X_INTERFACE_PARAMETER OF inStream_V_strb_V_dout: SIGNAL IS "XIL_INTERFACENAME inStream_V_strb_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RD_DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maxim" & 
"um {}} value false}}}} EMPTY_N {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} RD_EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediat" & 
"e dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF inStream_V_strb_V_dout: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 inStream_V_strb_V RD_DATA";
  ATTRIBUTE X_INTERFACE_INFO OF inStream_V_keep_V_read: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 inStream_V_keep_V RD_EN";
  ATTRIBUTE X_INTERFACE_INFO OF inStream_V_keep_V_empty_n: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 inStream_V_keep_V EMPTY_N";
  ATTRIBUTE X_INTERFACE_PARAMETER OF inStream_V_keep_V_dout: SIGNAL IS "XIL_INTERFACENAME inStream_V_keep_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RD_DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maxim" & 
"um {}} value false}}}} EMPTY_N {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} RD_EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediat" & 
"e dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF inStream_V_keep_V_dout: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 inStream_V_keep_V RD_DATA";
  ATTRIBUTE X_INTERFACE_INFO OF inStream_V_data_V_read: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 inStream_V_data_V RD_EN";
  ATTRIBUTE X_INTERFACE_INFO OF inStream_V_data_V_empty_n: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 inStream_V_data_V EMPTY_N";
  ATTRIBUTE X_INTERFACE_PARAMETER OF inStream_V_data_V_dout: SIGNAL IS "XIL_INTERFACENAME inStream_V_data_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RD_DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maxim" & 
"um {}} value false}}}} EMPTY_N {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} RD_EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediat" & 
"e dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF inStream_V_data_V_dout: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 inStream_V_data_V RD_DATA";
  ATTRIBUTE X_INTERFACE_INFO OF ap_ready: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  ATTRIBUTE X_INTERFACE_INFO OF ap_idle: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  ATTRIBUTE X_INTERFACE_INFO OF ap_done: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_start: SIGNAL IS "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum " & 
"{}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long" & 
" minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF ap_start: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_rst: SIGNAL IS "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_clk: SIGNAL IS "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN convSystem_processing_system7_0_0_" & 
"FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
BEGIN
  U0 : processImage
    PORT MAP (
      ap_clk => ap_clk,
      ap_rst => ap_rst,
      ap_start => ap_start,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      inStream_V_data_V_dout => inStream_V_data_V_dout,
      inStream_V_data_V_empty_n => inStream_V_data_V_empty_n,
      inStream_V_data_V_read => inStream_V_data_V_read,
      inStream_V_keep_V_dout => inStream_V_keep_V_dout,
      inStream_V_keep_V_empty_n => inStream_V_keep_V_empty_n,
      inStream_V_keep_V_read => inStream_V_keep_V_read,
      inStream_V_strb_V_dout => inStream_V_strb_V_dout,
      inStream_V_strb_V_empty_n => inStream_V_strb_V_empty_n,
      inStream_V_strb_V_read => inStream_V_strb_V_read,
      inStream_V_user_V_dout => inStream_V_user_V_dout,
      inStream_V_user_V_empty_n => inStream_V_user_V_empty_n,
      inStream_V_user_V_read => inStream_V_user_V_read,
      inStream_V_last_V_dout => inStream_V_last_V_dout,
      inStream_V_last_V_empty_n => inStream_V_last_V_empty_n,
      inStream_V_last_V_read => inStream_V_last_V_read,
      inStream_V_id_V_dout => inStream_V_id_V_dout,
      inStream_V_id_V_empty_n => inStream_V_id_V_empty_n,
      inStream_V_id_V_read => inStream_V_id_V_read,
      inStream_V_dest_V_dout => inStream_V_dest_V_dout,
      inStream_V_dest_V_empty_n => inStream_V_dest_V_empty_n,
      inStream_V_dest_V_read => inStream_V_dest_V_read,
      outStream_V_data_V_din => outStream_V_data_V_din,
      outStream_V_data_V_full_n => outStream_V_data_V_full_n,
      outStream_V_data_V_write => outStream_V_data_V_write,
      outStream_V_keep_V_din => outStream_V_keep_V_din,
      outStream_V_keep_V_full_n => outStream_V_keep_V_full_n,
      outStream_V_keep_V_write => outStream_V_keep_V_write,
      outStream_V_strb_V_din => outStream_V_strb_V_din,
      outStream_V_strb_V_full_n => outStream_V_strb_V_full_n,
      outStream_V_strb_V_write => outStream_V_strb_V_write,
      outStream_V_user_V_din => outStream_V_user_V_din,
      outStream_V_user_V_full_n => outStream_V_user_V_full_n,
      outStream_V_user_V_write => outStream_V_user_V_write,
      outStream_V_last_V_din => outStream_V_last_V_din,
      outStream_V_last_V_full_n => outStream_V_last_V_full_n,
      outStream_V_last_V_write => outStream_V_last_V_write,
      outStream_V_id_V_din => outStream_V_id_V_din,
      outStream_V_id_V_full_n => outStream_V_id_V_full_n,
      outStream_V_id_V_write => outStream_V_id_V_write,
      outStream_V_dest_V_din => outStream_V_dest_V_din,
      outStream_V_dest_V_full_n => outStream_V_dest_V_full_n,
      outStream_V_dest_V_write => outStream_V_dest_V_write,
      kernel_0 => kernel_0,
      kernel_1 => kernel_1,
      kernel_2 => kernel_2,
      kernel_3 => kernel_3,
      kernel_4 => kernel_4,
      kernel_5 => kernel_5,
      kernel_6 => kernel_6,
      kernel_7 => kernel_7,
      kernel_8 => kernel_8
    );
END convSystem_processImage_0_0_arch;
