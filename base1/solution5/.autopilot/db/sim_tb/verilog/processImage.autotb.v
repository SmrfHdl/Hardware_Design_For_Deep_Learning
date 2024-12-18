// ==============================================================
// File generated on Thu Dec 19 03:50:49 +0700 2024
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      processImage
`define AUTOTB_DUT_INST AESL_inst_processImage
`define AUTOTB_TOP      apatb_processImage_top
`define AUTOTB_LAT_RESULT_FILE "processImage.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "processImage.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_processImage_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_FIFO_inStream_V_data_V AESL_autofifo_inStream_V_data_V
`define AESL_FIFO_INST_inStream_V_data_V AESL_autofifo_inst_inStream_V_data_V
`define AESL_FIFO_inStream_V_keep_V AESL_autofifo_inStream_V_keep_V
`define AESL_FIFO_INST_inStream_V_keep_V AESL_autofifo_inst_inStream_V_keep_V
`define AESL_FIFO_inStream_V_strb_V AESL_autofifo_inStream_V_strb_V
`define AESL_FIFO_INST_inStream_V_strb_V AESL_autofifo_inst_inStream_V_strb_V
`define AESL_FIFO_inStream_V_user_V AESL_autofifo_inStream_V_user_V
`define AESL_FIFO_INST_inStream_V_user_V AESL_autofifo_inst_inStream_V_user_V
`define AESL_FIFO_inStream_V_last_V AESL_autofifo_inStream_V_last_V
`define AESL_FIFO_INST_inStream_V_last_V AESL_autofifo_inst_inStream_V_last_V
`define AESL_FIFO_inStream_V_id_V AESL_autofifo_inStream_V_id_V
`define AESL_FIFO_INST_inStream_V_id_V AESL_autofifo_inst_inStream_V_id_V
`define AESL_FIFO_inStream_V_dest_V AESL_autofifo_inStream_V_dest_V
`define AESL_FIFO_INST_inStream_V_dest_V AESL_autofifo_inst_inStream_V_dest_V
`define AESL_FIFO_outStream_V_data_V AESL_autofifo_outStream_V_data_V
`define AESL_FIFO_INST_outStream_V_data_V AESL_autofifo_inst_outStream_V_data_V
`define AESL_FIFO_outStream_V_keep_V AESL_autofifo_outStream_V_keep_V
`define AESL_FIFO_INST_outStream_V_keep_V AESL_autofifo_inst_outStream_V_keep_V
`define AESL_FIFO_outStream_V_strb_V AESL_autofifo_outStream_V_strb_V
`define AESL_FIFO_INST_outStream_V_strb_V AESL_autofifo_inst_outStream_V_strb_V
`define AESL_FIFO_outStream_V_user_V AESL_autofifo_outStream_V_user_V
`define AESL_FIFO_INST_outStream_V_user_V AESL_autofifo_inst_outStream_V_user_V
`define AESL_FIFO_outStream_V_last_V AESL_autofifo_outStream_V_last_V
`define AESL_FIFO_INST_outStream_V_last_V AESL_autofifo_inst_outStream_V_last_V
`define AESL_FIFO_outStream_V_id_V AESL_autofifo_outStream_V_id_V
`define AESL_FIFO_INST_outStream_V_id_V AESL_autofifo_inst_outStream_V_id_V
`define AESL_FIFO_outStream_V_dest_V AESL_autofifo_outStream_V_dest_V
`define AESL_FIFO_INST_outStream_V_dest_V AESL_autofifo_inst_outStream_V_dest_V
`define AESL_DEPTH_kernel_0 1
`define AESL_DEPTH_kernel_1 1
`define AESL_DEPTH_kernel_2 1
`define AESL_DEPTH_kernel_3 1
`define AESL_DEPTH_kernel_4 1
`define AESL_DEPTH_kernel_5 1
`define AESL_DEPTH_kernel_6 1
`define AESL_DEPTH_kernel_7 1
`define AESL_DEPTH_kernel_8 1
`define AUTOTB_TVIN_inStream_V_data_V  "./c.processImage.autotvin_inStream_V_data_V.dat"
`define AUTOTB_TVIN_inStream_V_keep_V  "./c.processImage.autotvin_inStream_V_keep_V.dat"
`define AUTOTB_TVIN_inStream_V_strb_V  "./c.processImage.autotvin_inStream_V_strb_V.dat"
`define AUTOTB_TVIN_inStream_V_user_V  "./c.processImage.autotvin_inStream_V_user_V.dat"
`define AUTOTB_TVIN_inStream_V_last_V  "./c.processImage.autotvin_inStream_V_last_V.dat"
`define AUTOTB_TVIN_inStream_V_id_V  "./c.processImage.autotvin_inStream_V_id_V.dat"
`define AUTOTB_TVIN_inStream_V_dest_V  "./c.processImage.autotvin_inStream_V_dest_V.dat"
`define AUTOTB_TVIN_outStream_V_data_V  "./c.processImage.autotvin_outStream_V_data_V.dat"
`define AUTOTB_TVIN_outStream_V_keep_V  "./c.processImage.autotvin_outStream_V_keep_V.dat"
`define AUTOTB_TVIN_outStream_V_strb_V  "./c.processImage.autotvin_outStream_V_strb_V.dat"
`define AUTOTB_TVIN_outStream_V_user_V  "./c.processImage.autotvin_outStream_V_user_V.dat"
`define AUTOTB_TVIN_outStream_V_last_V  "./c.processImage.autotvin_outStream_V_last_V.dat"
`define AUTOTB_TVIN_outStream_V_id_V  "./c.processImage.autotvin_outStream_V_id_V.dat"
`define AUTOTB_TVIN_outStream_V_dest_V  "./c.processImage.autotvin_outStream_V_dest_V.dat"
`define AUTOTB_TVIN_kernel_0  "./c.processImage.autotvin_kernel_0.dat"
`define AUTOTB_TVIN_kernel_1  "./c.processImage.autotvin_kernel_1.dat"
`define AUTOTB_TVIN_kernel_2  "./c.processImage.autotvin_kernel_2.dat"
`define AUTOTB_TVIN_kernel_3  "./c.processImage.autotvin_kernel_3.dat"
`define AUTOTB_TVIN_kernel_4  "./c.processImage.autotvin_kernel_4.dat"
`define AUTOTB_TVIN_kernel_5  "./c.processImage.autotvin_kernel_5.dat"
`define AUTOTB_TVIN_kernel_6  "./c.processImage.autotvin_kernel_6.dat"
`define AUTOTB_TVIN_kernel_7  "./c.processImage.autotvin_kernel_7.dat"
`define AUTOTB_TVIN_kernel_8  "./c.processImage.autotvin_kernel_8.dat"
`define AUTOTB_TVIN_inStream_V_data_V_out_wrapc  "./rtl.processImage.autotvin_inStream_V_data_V.dat"
`define AUTOTB_TVIN_inStream_V_keep_V_out_wrapc  "./rtl.processImage.autotvin_inStream_V_keep_V.dat"
`define AUTOTB_TVIN_inStream_V_strb_V_out_wrapc  "./rtl.processImage.autotvin_inStream_V_strb_V.dat"
`define AUTOTB_TVIN_inStream_V_user_V_out_wrapc  "./rtl.processImage.autotvin_inStream_V_user_V.dat"
`define AUTOTB_TVIN_inStream_V_last_V_out_wrapc  "./rtl.processImage.autotvin_inStream_V_last_V.dat"
`define AUTOTB_TVIN_inStream_V_id_V_out_wrapc  "./rtl.processImage.autotvin_inStream_V_id_V.dat"
`define AUTOTB_TVIN_inStream_V_dest_V_out_wrapc  "./rtl.processImage.autotvin_inStream_V_dest_V.dat"
`define AUTOTB_TVIN_outStream_V_data_V_out_wrapc  "./rtl.processImage.autotvin_outStream_V_data_V.dat"
`define AUTOTB_TVIN_outStream_V_keep_V_out_wrapc  "./rtl.processImage.autotvin_outStream_V_keep_V.dat"
`define AUTOTB_TVIN_outStream_V_strb_V_out_wrapc  "./rtl.processImage.autotvin_outStream_V_strb_V.dat"
`define AUTOTB_TVIN_outStream_V_user_V_out_wrapc  "./rtl.processImage.autotvin_outStream_V_user_V.dat"
`define AUTOTB_TVIN_outStream_V_last_V_out_wrapc  "./rtl.processImage.autotvin_outStream_V_last_V.dat"
`define AUTOTB_TVIN_outStream_V_id_V_out_wrapc  "./rtl.processImage.autotvin_outStream_V_id_V.dat"
`define AUTOTB_TVIN_outStream_V_dest_V_out_wrapc  "./rtl.processImage.autotvin_outStream_V_dest_V.dat"
`define AUTOTB_TVIN_kernel_0_out_wrapc  "./rtl.processImage.autotvin_kernel_0.dat"
`define AUTOTB_TVIN_kernel_1_out_wrapc  "./rtl.processImage.autotvin_kernel_1.dat"
`define AUTOTB_TVIN_kernel_2_out_wrapc  "./rtl.processImage.autotvin_kernel_2.dat"
`define AUTOTB_TVIN_kernel_3_out_wrapc  "./rtl.processImage.autotvin_kernel_3.dat"
`define AUTOTB_TVIN_kernel_4_out_wrapc  "./rtl.processImage.autotvin_kernel_4.dat"
`define AUTOTB_TVIN_kernel_5_out_wrapc  "./rtl.processImage.autotvin_kernel_5.dat"
`define AUTOTB_TVIN_kernel_6_out_wrapc  "./rtl.processImage.autotvin_kernel_6.dat"
`define AUTOTB_TVIN_kernel_7_out_wrapc  "./rtl.processImage.autotvin_kernel_7.dat"
`define AUTOTB_TVIN_kernel_8_out_wrapc  "./rtl.processImage.autotvin_kernel_8.dat"
`define AUTOTB_TVOUT_outStream_V_data_V  "./c.processImage.autotvout_outStream_V_data_V.dat"
`define AUTOTB_TVOUT_outStream_V_keep_V  "./c.processImage.autotvout_outStream_V_keep_V.dat"
`define AUTOTB_TVOUT_outStream_V_strb_V  "./c.processImage.autotvout_outStream_V_strb_V.dat"
`define AUTOTB_TVOUT_outStream_V_user_V  "./c.processImage.autotvout_outStream_V_user_V.dat"
`define AUTOTB_TVOUT_outStream_V_last_V  "./c.processImage.autotvout_outStream_V_last_V.dat"
`define AUTOTB_TVOUT_outStream_V_id_V  "./c.processImage.autotvout_outStream_V_id_V.dat"
`define AUTOTB_TVOUT_outStream_V_dest_V  "./c.processImage.autotvout_outStream_V_dest_V.dat"
`define AUTOTB_TVOUT_outStream_V_data_V_out_wrapc  "./impl_rtl.processImage.autotvout_outStream_V_data_V.dat"
`define AUTOTB_TVOUT_outStream_V_keep_V_out_wrapc  "./impl_rtl.processImage.autotvout_outStream_V_keep_V.dat"
`define AUTOTB_TVOUT_outStream_V_strb_V_out_wrapc  "./impl_rtl.processImage.autotvout_outStream_V_strb_V.dat"
`define AUTOTB_TVOUT_outStream_V_user_V_out_wrapc  "./impl_rtl.processImage.autotvout_outStream_V_user_V.dat"
`define AUTOTB_TVOUT_outStream_V_last_V_out_wrapc  "./impl_rtl.processImage.autotvout_outStream_V_last_V.dat"
`define AUTOTB_TVOUT_outStream_V_id_V_out_wrapc  "./impl_rtl.processImage.autotvout_outStream_V_id_V.dat"
`define AUTOTB_TVOUT_outStream_V_dest_V_out_wrapc  "./impl_rtl.processImage.autotvout_outStream_V_dest_V.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 786953;
parameter LENGTH_inStream_V_data_V = 262144;
parameter LENGTH_inStream_V_keep_V = 262144;
parameter LENGTH_inStream_V_strb_V = 262144;
parameter LENGTH_inStream_V_user_V = 262144;
parameter LENGTH_inStream_V_last_V = 262144;
parameter LENGTH_inStream_V_id_V = 262144;
parameter LENGTH_inStream_V_dest_V = 262144;
parameter LENGTH_outStream_V_data_V = 262144;
parameter LENGTH_outStream_V_keep_V = 262144;
parameter LENGTH_outStream_V_strb_V = 262144;
parameter LENGTH_outStream_V_user_V = 262144;
parameter LENGTH_outStream_V_last_V = 262144;
parameter LENGTH_outStream_V_id_V = 262144;
parameter LENGTH_outStream_V_dest_V = 262144;
parameter LENGTH_kernel_0 = 1;
parameter LENGTH_kernel_1 = 1;
parameter LENGTH_kernel_2 = 1;
parameter LENGTH_kernel_3 = 1;
parameter LENGTH_kernel_4 = 1;
parameter LENGTH_kernel_5 = 1;
parameter LENGTH_kernel_6 = 1;
parameter LENGTH_kernel_7 = 1;
parameter LENGTH_kernel_8 = 1;

task read_token;
    input integer fp;
    output reg [223 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

task post_check;
    input integer fp1;
    input integer fp2;
    reg [223 : 0] token1;
    reg [223 : 0] token2;
    reg [223 : 0] golden;
    reg [223 : 0] result;
    integer ret;
    begin
        read_token(fp1, token1);
        read_token(fp2, token2);
        if (token1 != "[[[runtime]]]" || token2 != "[[[runtime]]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
            $finish;
        end
        read_token(fp1, token1);
        read_token(fp2, token2);
        while (token1 != "[[[/runtime]]]" && token2 != "[[[/runtime]]]") begin
            if (token1 != "[[transaction]]" || token2 != "[[transaction]]") begin
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
            end
            read_token(fp1, token1);  // skip transaction number
            read_token(fp2, token2);  // skip transaction number
              read_token(fp1, token1);
              read_token(fp2, token2);
            while(token1 != "[[/transaction]]" && token2 != "[[/transaction]]") begin
                ret = $sscanf(token1, "0x%x", golden);
                  if (ret != 1) begin
                      $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                  end
                ret = $sscanf(token2, "0x%x", result);
                  if (ret != 1) begin
                      $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                  end
                if(golden != result) begin
                      $display("%x (expected) vs. %x (actual) - mismatch", golden, result);
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                end
                  read_token(fp1, token1);
                  read_token(fp2, token2);
            end
              read_token(fp1, token1);
              read_token(fp2, token2);
        end
    end
endtask

reg AESL_clock;
reg rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire ap_start;
wire ap_done;
wire ap_idle;
wire ap_ready;
wire [7 : 0] inStream_V_data_V_dout;
wire  inStream_V_data_V_empty_n;
wire  inStream_V_data_V_read;
wire [0 : 0] inStream_V_keep_V_dout;
wire  inStream_V_keep_V_empty_n;
wire  inStream_V_keep_V_read;
wire [0 : 0] inStream_V_strb_V_dout;
wire  inStream_V_strb_V_empty_n;
wire  inStream_V_strb_V_read;
wire [1 : 0] inStream_V_user_V_dout;
wire  inStream_V_user_V_empty_n;
wire  inStream_V_user_V_read;
wire [0 : 0] inStream_V_last_V_dout;
wire  inStream_V_last_V_empty_n;
wire  inStream_V_last_V_read;
wire [4 : 0] inStream_V_id_V_dout;
wire  inStream_V_id_V_empty_n;
wire  inStream_V_id_V_read;
wire [5 : 0] inStream_V_dest_V_dout;
wire  inStream_V_dest_V_empty_n;
wire  inStream_V_dest_V_read;
wire [7 : 0] outStream_V_data_V_din;
wire  outStream_V_data_V_full_n;
wire  outStream_V_data_V_write;
wire [0 : 0] outStream_V_keep_V_din;
wire  outStream_V_keep_V_full_n;
wire  outStream_V_keep_V_write;
wire [0 : 0] outStream_V_strb_V_din;
wire  outStream_V_strb_V_full_n;
wire  outStream_V_strb_V_write;
wire [1 : 0] outStream_V_user_V_din;
wire  outStream_V_user_V_full_n;
wire  outStream_V_user_V_write;
wire [0 : 0] outStream_V_last_V_din;
wire  outStream_V_last_V_full_n;
wire  outStream_V_last_V_write;
wire [4 : 0] outStream_V_id_V_din;
wire  outStream_V_id_V_full_n;
wire  outStream_V_id_V_write;
wire [5 : 0] outStream_V_dest_V_din;
wire  outStream_V_dest_V_full_n;
wire  outStream_V_dest_V_write;
wire [7 : 0] kernel_0;
wire [7 : 0] kernel_1;
wire [7 : 0] kernel_2;
wire [7 : 0] kernel_3;
wire [7 : 0] kernel_4;
wire [7 : 0] kernel_5;
wire [7 : 0] kernel_6;
wire [7 : 0] kernel_7;
wire [7 : 0] kernel_8;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;

wire ap_clk;
wire ap_rst;
wire ap_rst_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .inStream_V_data_V_dout(inStream_V_data_V_dout),
    .inStream_V_data_V_empty_n(inStream_V_data_V_empty_n),
    .inStream_V_data_V_read(inStream_V_data_V_read),
    .inStream_V_keep_V_dout(inStream_V_keep_V_dout),
    .inStream_V_keep_V_empty_n(inStream_V_keep_V_empty_n),
    .inStream_V_keep_V_read(inStream_V_keep_V_read),
    .inStream_V_strb_V_dout(inStream_V_strb_V_dout),
    .inStream_V_strb_V_empty_n(inStream_V_strb_V_empty_n),
    .inStream_V_strb_V_read(inStream_V_strb_V_read),
    .inStream_V_user_V_dout(inStream_V_user_V_dout),
    .inStream_V_user_V_empty_n(inStream_V_user_V_empty_n),
    .inStream_V_user_V_read(inStream_V_user_V_read),
    .inStream_V_last_V_dout(inStream_V_last_V_dout),
    .inStream_V_last_V_empty_n(inStream_V_last_V_empty_n),
    .inStream_V_last_V_read(inStream_V_last_V_read),
    .inStream_V_id_V_dout(inStream_V_id_V_dout),
    .inStream_V_id_V_empty_n(inStream_V_id_V_empty_n),
    .inStream_V_id_V_read(inStream_V_id_V_read),
    .inStream_V_dest_V_dout(inStream_V_dest_V_dout),
    .inStream_V_dest_V_empty_n(inStream_V_dest_V_empty_n),
    .inStream_V_dest_V_read(inStream_V_dest_V_read),
    .outStream_V_data_V_din(outStream_V_data_V_din),
    .outStream_V_data_V_full_n(outStream_V_data_V_full_n),
    .outStream_V_data_V_write(outStream_V_data_V_write),
    .outStream_V_keep_V_din(outStream_V_keep_V_din),
    .outStream_V_keep_V_full_n(outStream_V_keep_V_full_n),
    .outStream_V_keep_V_write(outStream_V_keep_V_write),
    .outStream_V_strb_V_din(outStream_V_strb_V_din),
    .outStream_V_strb_V_full_n(outStream_V_strb_V_full_n),
    .outStream_V_strb_V_write(outStream_V_strb_V_write),
    .outStream_V_user_V_din(outStream_V_user_V_din),
    .outStream_V_user_V_full_n(outStream_V_user_V_full_n),
    .outStream_V_user_V_write(outStream_V_user_V_write),
    .outStream_V_last_V_din(outStream_V_last_V_din),
    .outStream_V_last_V_full_n(outStream_V_last_V_full_n),
    .outStream_V_last_V_write(outStream_V_last_V_write),
    .outStream_V_id_V_din(outStream_V_id_V_din),
    .outStream_V_id_V_full_n(outStream_V_id_V_full_n),
    .outStream_V_id_V_write(outStream_V_id_V_write),
    .outStream_V_dest_V_din(outStream_V_dest_V_din),
    .outStream_V_dest_V_full_n(outStream_V_dest_V_full_n),
    .outStream_V_dest_V_write(outStream_V_dest_V_write),
    .kernel_0(kernel_0),
    .kernel_1(kernel_1),
    .kernel_2(kernel_2),
    .kernel_3(kernel_3),
    .kernel_4(kernel_4),
    .kernel_5(kernel_5),
    .kernel_6(kernel_6),
    .kernel_7(kernel_7),
    .kernel_8(kernel_8));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst = AESL_reset;
assign ap_rst_n = ~AESL_reset;
assign AESL_reset = rst;
assign ap_start = AESL_start;
assign AESL_start = start;
assign AESL_done = ap_done;
assign AESL_idle = ap_idle;
assign AESL_ready = ap_ready;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_done !== 1 && AESL_done !== 0) begin
                $display("ERROR: Control signal AESL_done is invalid!");
                $finish;
            end
        end
    end
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_ready !== 1 && AESL_ready !== 0) begin
                $display("ERROR: Control signal AESL_ready is invalid!");
                $finish;
            end
        end
    end
// Fifo Instantiation inStream_V_data_V

wire fifoinStream_V_data_V_rd;
wire [7 : 0] fifoinStream_V_data_V_dout;
wire fifoinStream_V_data_V_empty_n;
wire fifoinStream_V_data_V_ready;
wire fifoinStream_V_data_V_done;
reg [31:0] ap_c_n_tvin_trans_num_inStream_V_data_V;
reg inStream_V_data_V_ready_reg;

`AESL_FIFO_inStream_V_data_V `AESL_FIFO_INST_inStream_V_data_V (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifoinStream_V_data_V_rd),
    .if_dout      (fifoinStream_V_data_V_dout),
    .if_empty_n   (fifoinStream_V_data_V_empty_n),
    .ready        (fifoinStream_V_data_V_ready),
    .done         (fifoinStream_V_data_V_done)
);

// Assignment between dut and fifoinStream_V_data_V

// Assign input of fifoinStream_V_data_V
assign      fifoinStream_V_data_V_rd        =   inStream_V_data_V_read & inStream_V_data_V_empty_n;
assign    fifoinStream_V_data_V_ready   =   inStream_V_data_V_ready_reg | ready_initial;
assign    fifoinStream_V_data_V_done    =   0;
// Assign input of dut
assign      inStream_V_data_V_dout       =   fifoinStream_V_data_V_dout;
reg   reg_fifoinStream_V_data_V_empty_n;
initial begin : gen_reg_fifoinStream_V_data_V_empty_n_process
    integer proc_rand;
    reg_fifoinStream_V_data_V_empty_n = fifoinStream_V_data_V_empty_n;
    while (1) begin
        @ (fifoinStream_V_data_V_empty_n);
        reg_fifoinStream_V_data_V_empty_n = fifoinStream_V_data_V_empty_n;
    end
end

assign      inStream_V_data_V_empty_n    =   reg_fifoinStream_V_data_V_empty_n;


// Fifo Instantiation inStream_V_keep_V

wire fifoinStream_V_keep_V_rd;
wire [0 : 0] fifoinStream_V_keep_V_dout;
wire fifoinStream_V_keep_V_empty_n;
wire fifoinStream_V_keep_V_ready;
wire fifoinStream_V_keep_V_done;
reg [31:0] ap_c_n_tvin_trans_num_inStream_V_keep_V;
reg inStream_V_keep_V_ready_reg;

`AESL_FIFO_inStream_V_keep_V `AESL_FIFO_INST_inStream_V_keep_V (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifoinStream_V_keep_V_rd),
    .if_dout      (fifoinStream_V_keep_V_dout),
    .if_empty_n   (fifoinStream_V_keep_V_empty_n),
    .ready        (fifoinStream_V_keep_V_ready),
    .done         (fifoinStream_V_keep_V_done)
);

// Assignment between dut and fifoinStream_V_keep_V

// Assign input of fifoinStream_V_keep_V
assign      fifoinStream_V_keep_V_rd        =   inStream_V_keep_V_read & inStream_V_keep_V_empty_n;
assign    fifoinStream_V_keep_V_ready   =   inStream_V_keep_V_ready_reg | ready_initial;
assign    fifoinStream_V_keep_V_done    =   0;
// Assign input of dut
assign      inStream_V_keep_V_dout       =   fifoinStream_V_keep_V_dout;
reg   reg_fifoinStream_V_keep_V_empty_n;
initial begin : gen_reg_fifoinStream_V_keep_V_empty_n_process
    integer proc_rand;
    reg_fifoinStream_V_keep_V_empty_n = fifoinStream_V_keep_V_empty_n;
    while (1) begin
        @ (fifoinStream_V_keep_V_empty_n);
        reg_fifoinStream_V_keep_V_empty_n = fifoinStream_V_keep_V_empty_n;
    end
end

assign      inStream_V_keep_V_empty_n    =   reg_fifoinStream_V_keep_V_empty_n;


// Fifo Instantiation inStream_V_strb_V

wire fifoinStream_V_strb_V_rd;
wire [0 : 0] fifoinStream_V_strb_V_dout;
wire fifoinStream_V_strb_V_empty_n;
wire fifoinStream_V_strb_V_ready;
wire fifoinStream_V_strb_V_done;
reg [31:0] ap_c_n_tvin_trans_num_inStream_V_strb_V;
reg inStream_V_strb_V_ready_reg;

`AESL_FIFO_inStream_V_strb_V `AESL_FIFO_INST_inStream_V_strb_V (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifoinStream_V_strb_V_rd),
    .if_dout      (fifoinStream_V_strb_V_dout),
    .if_empty_n   (fifoinStream_V_strb_V_empty_n),
    .ready        (fifoinStream_V_strb_V_ready),
    .done         (fifoinStream_V_strb_V_done)
);

// Assignment between dut and fifoinStream_V_strb_V

// Assign input of fifoinStream_V_strb_V
assign      fifoinStream_V_strb_V_rd        =   inStream_V_strb_V_read & inStream_V_strb_V_empty_n;
assign    fifoinStream_V_strb_V_ready   =   inStream_V_strb_V_ready_reg | ready_initial;
assign    fifoinStream_V_strb_V_done    =   0;
// Assign input of dut
assign      inStream_V_strb_V_dout       =   fifoinStream_V_strb_V_dout;
reg   reg_fifoinStream_V_strb_V_empty_n;
initial begin : gen_reg_fifoinStream_V_strb_V_empty_n_process
    integer proc_rand;
    reg_fifoinStream_V_strb_V_empty_n = fifoinStream_V_strb_V_empty_n;
    while (1) begin
        @ (fifoinStream_V_strb_V_empty_n);
        reg_fifoinStream_V_strb_V_empty_n = fifoinStream_V_strb_V_empty_n;
    end
end

assign      inStream_V_strb_V_empty_n    =   reg_fifoinStream_V_strb_V_empty_n;


// Fifo Instantiation inStream_V_user_V

wire fifoinStream_V_user_V_rd;
wire [1 : 0] fifoinStream_V_user_V_dout;
wire fifoinStream_V_user_V_empty_n;
wire fifoinStream_V_user_V_ready;
wire fifoinStream_V_user_V_done;
reg [31:0] ap_c_n_tvin_trans_num_inStream_V_user_V;
reg inStream_V_user_V_ready_reg;

`AESL_FIFO_inStream_V_user_V `AESL_FIFO_INST_inStream_V_user_V (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifoinStream_V_user_V_rd),
    .if_dout      (fifoinStream_V_user_V_dout),
    .if_empty_n   (fifoinStream_V_user_V_empty_n),
    .ready        (fifoinStream_V_user_V_ready),
    .done         (fifoinStream_V_user_V_done)
);

// Assignment between dut and fifoinStream_V_user_V

// Assign input of fifoinStream_V_user_V
assign      fifoinStream_V_user_V_rd        =   inStream_V_user_V_read & inStream_V_user_V_empty_n;
assign    fifoinStream_V_user_V_ready   =   inStream_V_user_V_ready_reg | ready_initial;
assign    fifoinStream_V_user_V_done    =   0;
// Assign input of dut
assign      inStream_V_user_V_dout       =   fifoinStream_V_user_V_dout;
reg   reg_fifoinStream_V_user_V_empty_n;
initial begin : gen_reg_fifoinStream_V_user_V_empty_n_process
    integer proc_rand;
    reg_fifoinStream_V_user_V_empty_n = fifoinStream_V_user_V_empty_n;
    while (1) begin
        @ (fifoinStream_V_user_V_empty_n);
        reg_fifoinStream_V_user_V_empty_n = fifoinStream_V_user_V_empty_n;
    end
end

assign      inStream_V_user_V_empty_n    =   reg_fifoinStream_V_user_V_empty_n;


// Fifo Instantiation inStream_V_last_V

wire fifoinStream_V_last_V_rd;
wire [0 : 0] fifoinStream_V_last_V_dout;
wire fifoinStream_V_last_V_empty_n;
wire fifoinStream_V_last_V_ready;
wire fifoinStream_V_last_V_done;
reg [31:0] ap_c_n_tvin_trans_num_inStream_V_last_V;
reg inStream_V_last_V_ready_reg;

`AESL_FIFO_inStream_V_last_V `AESL_FIFO_INST_inStream_V_last_V (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifoinStream_V_last_V_rd),
    .if_dout      (fifoinStream_V_last_V_dout),
    .if_empty_n   (fifoinStream_V_last_V_empty_n),
    .ready        (fifoinStream_V_last_V_ready),
    .done         (fifoinStream_V_last_V_done)
);

// Assignment between dut and fifoinStream_V_last_V

// Assign input of fifoinStream_V_last_V
assign      fifoinStream_V_last_V_rd        =   inStream_V_last_V_read & inStream_V_last_V_empty_n;
assign    fifoinStream_V_last_V_ready   =   inStream_V_last_V_ready_reg | ready_initial;
assign    fifoinStream_V_last_V_done    =   0;
// Assign input of dut
assign      inStream_V_last_V_dout       =   fifoinStream_V_last_V_dout;
reg   reg_fifoinStream_V_last_V_empty_n;
initial begin : gen_reg_fifoinStream_V_last_V_empty_n_process
    integer proc_rand;
    reg_fifoinStream_V_last_V_empty_n = fifoinStream_V_last_V_empty_n;
    while (1) begin
        @ (fifoinStream_V_last_V_empty_n);
        reg_fifoinStream_V_last_V_empty_n = fifoinStream_V_last_V_empty_n;
    end
end

assign      inStream_V_last_V_empty_n    =   reg_fifoinStream_V_last_V_empty_n;


// Fifo Instantiation inStream_V_id_V

wire fifoinStream_V_id_V_rd;
wire [4 : 0] fifoinStream_V_id_V_dout;
wire fifoinStream_V_id_V_empty_n;
wire fifoinStream_V_id_V_ready;
wire fifoinStream_V_id_V_done;
reg [31:0] ap_c_n_tvin_trans_num_inStream_V_id_V;
reg inStream_V_id_V_ready_reg;

`AESL_FIFO_inStream_V_id_V `AESL_FIFO_INST_inStream_V_id_V (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifoinStream_V_id_V_rd),
    .if_dout      (fifoinStream_V_id_V_dout),
    .if_empty_n   (fifoinStream_V_id_V_empty_n),
    .ready        (fifoinStream_V_id_V_ready),
    .done         (fifoinStream_V_id_V_done)
);

// Assignment between dut and fifoinStream_V_id_V

// Assign input of fifoinStream_V_id_V
assign      fifoinStream_V_id_V_rd        =   inStream_V_id_V_read & inStream_V_id_V_empty_n;
assign    fifoinStream_V_id_V_ready   =   inStream_V_id_V_ready_reg | ready_initial;
assign    fifoinStream_V_id_V_done    =   0;
// Assign input of dut
assign      inStream_V_id_V_dout       =   fifoinStream_V_id_V_dout;
reg   reg_fifoinStream_V_id_V_empty_n;
initial begin : gen_reg_fifoinStream_V_id_V_empty_n_process
    integer proc_rand;
    reg_fifoinStream_V_id_V_empty_n = fifoinStream_V_id_V_empty_n;
    while (1) begin
        @ (fifoinStream_V_id_V_empty_n);
        reg_fifoinStream_V_id_V_empty_n = fifoinStream_V_id_V_empty_n;
    end
end

assign      inStream_V_id_V_empty_n    =   reg_fifoinStream_V_id_V_empty_n;


// Fifo Instantiation inStream_V_dest_V

wire fifoinStream_V_dest_V_rd;
wire [5 : 0] fifoinStream_V_dest_V_dout;
wire fifoinStream_V_dest_V_empty_n;
wire fifoinStream_V_dest_V_ready;
wire fifoinStream_V_dest_V_done;
reg [31:0] ap_c_n_tvin_trans_num_inStream_V_dest_V;
reg inStream_V_dest_V_ready_reg;

`AESL_FIFO_inStream_V_dest_V `AESL_FIFO_INST_inStream_V_dest_V (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifoinStream_V_dest_V_rd),
    .if_dout      (fifoinStream_V_dest_V_dout),
    .if_empty_n   (fifoinStream_V_dest_V_empty_n),
    .ready        (fifoinStream_V_dest_V_ready),
    .done         (fifoinStream_V_dest_V_done)
);

// Assignment between dut and fifoinStream_V_dest_V

// Assign input of fifoinStream_V_dest_V
assign      fifoinStream_V_dest_V_rd        =   inStream_V_dest_V_read & inStream_V_dest_V_empty_n;
assign    fifoinStream_V_dest_V_ready   =   inStream_V_dest_V_ready_reg | ready_initial;
assign    fifoinStream_V_dest_V_done    =   0;
// Assign input of dut
assign      inStream_V_dest_V_dout       =   fifoinStream_V_dest_V_dout;
reg   reg_fifoinStream_V_dest_V_empty_n;
initial begin : gen_reg_fifoinStream_V_dest_V_empty_n_process
    integer proc_rand;
    reg_fifoinStream_V_dest_V_empty_n = fifoinStream_V_dest_V_empty_n;
    while (1) begin
        @ (fifoinStream_V_dest_V_empty_n);
        reg_fifoinStream_V_dest_V_empty_n = fifoinStream_V_dest_V_empty_n;
    end
end

assign      inStream_V_dest_V_empty_n    =   reg_fifoinStream_V_dest_V_empty_n;


//------------------------FifooutStream_V_data_V Instantiation--------------

// The input and output of fifooutStream_V_data_V
wire  fifooutStream_V_data_V_wr;
wire  [7 : 0] fifooutStream_V_data_V_din;
wire  fifooutStream_V_data_V_full_n;
wire  fifooutStream_V_data_V_ready;
wire  fifooutStream_V_data_V_done;

`AESL_FIFO_outStream_V_data_V `AESL_FIFO_INST_outStream_V_data_V(
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (fifooutStream_V_data_V_wr),
    .if_din       (fifooutStream_V_data_V_din),
    .if_full_n    (fifooutStream_V_data_V_full_n),
    .if_read      (),
    .if_dout      (),
    .if_empty_n   (),
    .ready        (fifooutStream_V_data_V_ready),
    .done         (fifooutStream_V_data_V_done)
);

// Assignment between dut and fifooutStream_V_data_V

// Assign input of fifooutStream_V_data_V
assign      fifooutStream_V_data_V_wr        =   outStream_V_data_V_write & outStream_V_data_V_full_n;
assign      fifooutStream_V_data_V_din        =   outStream_V_data_V_din;
assign    fifooutStream_V_data_V_ready   =  0;   //ready_initial | AESL_done_delay;
assign    fifooutStream_V_data_V_done    =   AESL_done_delay;
// Assign input of dut
reg   reg_fifooutStream_V_data_V_full_n;
initial begin : gen_reg_fifooutStream_V_data_V_full_n_process
    integer proc_rand;
    reg_fifooutStream_V_data_V_full_n = fifooutStream_V_data_V_full_n;
    while (1) begin
        @ (fifooutStream_V_data_V_full_n);
        reg_fifooutStream_V_data_V_full_n = fifooutStream_V_data_V_full_n;
    end
end

assign      outStream_V_data_V_full_n    =   reg_fifooutStream_V_data_V_full_n;


//------------------------FifooutStream_V_keep_V Instantiation--------------

// The input and output of fifooutStream_V_keep_V
wire  fifooutStream_V_keep_V_wr;
wire  [0 : 0] fifooutStream_V_keep_V_din;
wire  fifooutStream_V_keep_V_full_n;
wire  fifooutStream_V_keep_V_ready;
wire  fifooutStream_V_keep_V_done;

`AESL_FIFO_outStream_V_keep_V `AESL_FIFO_INST_outStream_V_keep_V(
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (fifooutStream_V_keep_V_wr),
    .if_din       (fifooutStream_V_keep_V_din),
    .if_full_n    (fifooutStream_V_keep_V_full_n),
    .if_read      (),
    .if_dout      (),
    .if_empty_n   (),
    .ready        (fifooutStream_V_keep_V_ready),
    .done         (fifooutStream_V_keep_V_done)
);

// Assignment between dut and fifooutStream_V_keep_V

// Assign input of fifooutStream_V_keep_V
assign      fifooutStream_V_keep_V_wr        =   outStream_V_keep_V_write & outStream_V_keep_V_full_n;
assign      fifooutStream_V_keep_V_din        =   outStream_V_keep_V_din;
assign    fifooutStream_V_keep_V_ready   =  0;   //ready_initial | AESL_done_delay;
assign    fifooutStream_V_keep_V_done    =   AESL_done_delay;
// Assign input of dut
reg   reg_fifooutStream_V_keep_V_full_n;
initial begin : gen_reg_fifooutStream_V_keep_V_full_n_process
    integer proc_rand;
    reg_fifooutStream_V_keep_V_full_n = fifooutStream_V_keep_V_full_n;
    while (1) begin
        @ (fifooutStream_V_keep_V_full_n);
        reg_fifooutStream_V_keep_V_full_n = fifooutStream_V_keep_V_full_n;
    end
end

assign      outStream_V_keep_V_full_n    =   reg_fifooutStream_V_keep_V_full_n;


//------------------------FifooutStream_V_strb_V Instantiation--------------

// The input and output of fifooutStream_V_strb_V
wire  fifooutStream_V_strb_V_wr;
wire  [0 : 0] fifooutStream_V_strb_V_din;
wire  fifooutStream_V_strb_V_full_n;
wire  fifooutStream_V_strb_V_ready;
wire  fifooutStream_V_strb_V_done;

`AESL_FIFO_outStream_V_strb_V `AESL_FIFO_INST_outStream_V_strb_V(
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (fifooutStream_V_strb_V_wr),
    .if_din       (fifooutStream_V_strb_V_din),
    .if_full_n    (fifooutStream_V_strb_V_full_n),
    .if_read      (),
    .if_dout      (),
    .if_empty_n   (),
    .ready        (fifooutStream_V_strb_V_ready),
    .done         (fifooutStream_V_strb_V_done)
);

// Assignment between dut and fifooutStream_V_strb_V

// Assign input of fifooutStream_V_strb_V
assign      fifooutStream_V_strb_V_wr        =   outStream_V_strb_V_write & outStream_V_strb_V_full_n;
assign      fifooutStream_V_strb_V_din        =   outStream_V_strb_V_din;
assign    fifooutStream_V_strb_V_ready   =  0;   //ready_initial | AESL_done_delay;
assign    fifooutStream_V_strb_V_done    =   AESL_done_delay;
// Assign input of dut
reg   reg_fifooutStream_V_strb_V_full_n;
initial begin : gen_reg_fifooutStream_V_strb_V_full_n_process
    integer proc_rand;
    reg_fifooutStream_V_strb_V_full_n = fifooutStream_V_strb_V_full_n;
    while (1) begin
        @ (fifooutStream_V_strb_V_full_n);
        reg_fifooutStream_V_strb_V_full_n = fifooutStream_V_strb_V_full_n;
    end
end

assign      outStream_V_strb_V_full_n    =   reg_fifooutStream_V_strb_V_full_n;


//------------------------FifooutStream_V_user_V Instantiation--------------

// The input and output of fifooutStream_V_user_V
wire  fifooutStream_V_user_V_wr;
wire  [1 : 0] fifooutStream_V_user_V_din;
wire  fifooutStream_V_user_V_full_n;
wire  fifooutStream_V_user_V_ready;
wire  fifooutStream_V_user_V_done;

`AESL_FIFO_outStream_V_user_V `AESL_FIFO_INST_outStream_V_user_V(
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (fifooutStream_V_user_V_wr),
    .if_din       (fifooutStream_V_user_V_din),
    .if_full_n    (fifooutStream_V_user_V_full_n),
    .if_read      (),
    .if_dout      (),
    .if_empty_n   (),
    .ready        (fifooutStream_V_user_V_ready),
    .done         (fifooutStream_V_user_V_done)
);

// Assignment between dut and fifooutStream_V_user_V

// Assign input of fifooutStream_V_user_V
assign      fifooutStream_V_user_V_wr        =   outStream_V_user_V_write & outStream_V_user_V_full_n;
assign      fifooutStream_V_user_V_din        =   outStream_V_user_V_din;
assign    fifooutStream_V_user_V_ready   =  0;   //ready_initial | AESL_done_delay;
assign    fifooutStream_V_user_V_done    =   AESL_done_delay;
// Assign input of dut
reg   reg_fifooutStream_V_user_V_full_n;
initial begin : gen_reg_fifooutStream_V_user_V_full_n_process
    integer proc_rand;
    reg_fifooutStream_V_user_V_full_n = fifooutStream_V_user_V_full_n;
    while (1) begin
        @ (fifooutStream_V_user_V_full_n);
        reg_fifooutStream_V_user_V_full_n = fifooutStream_V_user_V_full_n;
    end
end

assign      outStream_V_user_V_full_n    =   reg_fifooutStream_V_user_V_full_n;


//------------------------FifooutStream_V_last_V Instantiation--------------

// The input and output of fifooutStream_V_last_V
wire  fifooutStream_V_last_V_wr;
wire  [0 : 0] fifooutStream_V_last_V_din;
wire  fifooutStream_V_last_V_full_n;
wire  fifooutStream_V_last_V_ready;
wire  fifooutStream_V_last_V_done;

`AESL_FIFO_outStream_V_last_V `AESL_FIFO_INST_outStream_V_last_V(
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (fifooutStream_V_last_V_wr),
    .if_din       (fifooutStream_V_last_V_din),
    .if_full_n    (fifooutStream_V_last_V_full_n),
    .if_read      (),
    .if_dout      (),
    .if_empty_n   (),
    .ready        (fifooutStream_V_last_V_ready),
    .done         (fifooutStream_V_last_V_done)
);

// Assignment between dut and fifooutStream_V_last_V

// Assign input of fifooutStream_V_last_V
assign      fifooutStream_V_last_V_wr        =   outStream_V_last_V_write & outStream_V_last_V_full_n;
assign      fifooutStream_V_last_V_din        =   outStream_V_last_V_din;
assign    fifooutStream_V_last_V_ready   =  0;   //ready_initial | AESL_done_delay;
assign    fifooutStream_V_last_V_done    =   AESL_done_delay;
// Assign input of dut
reg   reg_fifooutStream_V_last_V_full_n;
initial begin : gen_reg_fifooutStream_V_last_V_full_n_process
    integer proc_rand;
    reg_fifooutStream_V_last_V_full_n = fifooutStream_V_last_V_full_n;
    while (1) begin
        @ (fifooutStream_V_last_V_full_n);
        reg_fifooutStream_V_last_V_full_n = fifooutStream_V_last_V_full_n;
    end
end

assign      outStream_V_last_V_full_n    =   reg_fifooutStream_V_last_V_full_n;


//------------------------FifooutStream_V_id_V Instantiation--------------

// The input and output of fifooutStream_V_id_V
wire  fifooutStream_V_id_V_wr;
wire  [4 : 0] fifooutStream_V_id_V_din;
wire  fifooutStream_V_id_V_full_n;
wire  fifooutStream_V_id_V_ready;
wire  fifooutStream_V_id_V_done;

`AESL_FIFO_outStream_V_id_V `AESL_FIFO_INST_outStream_V_id_V(
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (fifooutStream_V_id_V_wr),
    .if_din       (fifooutStream_V_id_V_din),
    .if_full_n    (fifooutStream_V_id_V_full_n),
    .if_read      (),
    .if_dout      (),
    .if_empty_n   (),
    .ready        (fifooutStream_V_id_V_ready),
    .done         (fifooutStream_V_id_V_done)
);

// Assignment between dut and fifooutStream_V_id_V

// Assign input of fifooutStream_V_id_V
assign      fifooutStream_V_id_V_wr        =   outStream_V_id_V_write & outStream_V_id_V_full_n;
assign      fifooutStream_V_id_V_din        =   outStream_V_id_V_din;
assign    fifooutStream_V_id_V_ready   =  0;   //ready_initial | AESL_done_delay;
assign    fifooutStream_V_id_V_done    =   AESL_done_delay;
// Assign input of dut
reg   reg_fifooutStream_V_id_V_full_n;
initial begin : gen_reg_fifooutStream_V_id_V_full_n_process
    integer proc_rand;
    reg_fifooutStream_V_id_V_full_n = fifooutStream_V_id_V_full_n;
    while (1) begin
        @ (fifooutStream_V_id_V_full_n);
        reg_fifooutStream_V_id_V_full_n = fifooutStream_V_id_V_full_n;
    end
end

assign      outStream_V_id_V_full_n    =   reg_fifooutStream_V_id_V_full_n;


//------------------------FifooutStream_V_dest_V Instantiation--------------

// The input and output of fifooutStream_V_dest_V
wire  fifooutStream_V_dest_V_wr;
wire  [5 : 0] fifooutStream_V_dest_V_din;
wire  fifooutStream_V_dest_V_full_n;
wire  fifooutStream_V_dest_V_ready;
wire  fifooutStream_V_dest_V_done;

`AESL_FIFO_outStream_V_dest_V `AESL_FIFO_INST_outStream_V_dest_V(
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (fifooutStream_V_dest_V_wr),
    .if_din       (fifooutStream_V_dest_V_din),
    .if_full_n    (fifooutStream_V_dest_V_full_n),
    .if_read      (),
    .if_dout      (),
    .if_empty_n   (),
    .ready        (fifooutStream_V_dest_V_ready),
    .done         (fifooutStream_V_dest_V_done)
);

// Assignment between dut and fifooutStream_V_dest_V

// Assign input of fifooutStream_V_dest_V
assign      fifooutStream_V_dest_V_wr        =   outStream_V_dest_V_write & outStream_V_dest_V_full_n;
assign      fifooutStream_V_dest_V_din        =   outStream_V_dest_V_din;
assign    fifooutStream_V_dest_V_ready   =  0;   //ready_initial | AESL_done_delay;
assign    fifooutStream_V_dest_V_done    =   AESL_done_delay;
// Assign input of dut
reg   reg_fifooutStream_V_dest_V_full_n;
initial begin : gen_reg_fifooutStream_V_dest_V_full_n_process
    integer proc_rand;
    reg_fifooutStream_V_dest_V_full_n = fifooutStream_V_dest_V_full_n;
    while (1) begin
        @ (fifooutStream_V_dest_V_full_n);
        reg_fifooutStream_V_dest_V_full_n = fifooutStream_V_dest_V_full_n;
    end
end

assign      outStream_V_dest_V_full_n    =   reg_fifooutStream_V_dest_V_full_n;


// The signal of port kernel_0
reg [7: 0] AESL_REG_kernel_0 = 0;
assign kernel_0 = AESL_REG_kernel_0;
initial begin : read_file_process_kernel_0
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [223  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_kernel_0,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_kernel_0);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_kernel_0);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port kernel_1
reg [7: 0] AESL_REG_kernel_1 = 0;
assign kernel_1 = AESL_REG_kernel_1;
initial begin : read_file_process_kernel_1
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [223  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_kernel_1,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_kernel_1);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_kernel_1);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port kernel_2
reg [7: 0] AESL_REG_kernel_2 = 0;
assign kernel_2 = AESL_REG_kernel_2;
initial begin : read_file_process_kernel_2
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [223  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_kernel_2,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_kernel_2);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_kernel_2);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port kernel_3
reg [7: 0] AESL_REG_kernel_3 = 0;
assign kernel_3 = AESL_REG_kernel_3;
initial begin : read_file_process_kernel_3
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [223  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_kernel_3,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_kernel_3);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_kernel_3);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port kernel_4
reg [7: 0] AESL_REG_kernel_4 = 0;
assign kernel_4 = AESL_REG_kernel_4;
initial begin : read_file_process_kernel_4
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [223  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_kernel_4,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_kernel_4);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_kernel_4);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port kernel_5
reg [7: 0] AESL_REG_kernel_5 = 0;
assign kernel_5 = AESL_REG_kernel_5;
initial begin : read_file_process_kernel_5
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [223  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_kernel_5,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_kernel_5);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_kernel_5);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port kernel_6
reg [7: 0] AESL_REG_kernel_6 = 0;
assign kernel_6 = AESL_REG_kernel_6;
initial begin : read_file_process_kernel_6
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [223  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_kernel_6,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_kernel_6);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_kernel_6);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port kernel_7
reg [7: 0] AESL_REG_kernel_7 = 0;
assign kernel_7 = AESL_REG_kernel_7;
initial begin : read_file_process_kernel_7
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [223  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_kernel_7,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_kernel_7);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_kernel_7);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port kernel_8
reg [7: 0] AESL_REG_kernel_8 = 0;
assign kernel_8 = AESL_REG_kernel_8;
initial begin : read_file_process_kernel_8
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [223  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_kernel_8,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_kernel_8);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_kernel_8);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 0);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 0);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        integer fp1;
        integer fp2;
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
    fp1 = $fopen("./rtl.processImage.autotvout_outStream_V_data_V.dat", "r");
    fp2 = $fopen("./impl_rtl.processImage.autotvout_outStream_V_data_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.processImage.autotvout_outStream_V_data_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.processImage.autotvout_outStream_V_data_V.dat\"!");
    else begin
        $display("Comparing rtl.processImage.autotvout_outStream_V_data_V.dat with impl_rtl.processImage.autotvout_outStream_V_data_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.processImage.autotvout_outStream_V_keep_V.dat", "r");
    fp2 = $fopen("./impl_rtl.processImage.autotvout_outStream_V_keep_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.processImage.autotvout_outStream_V_keep_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.processImage.autotvout_outStream_V_keep_V.dat\"!");
    else begin
        $display("Comparing rtl.processImage.autotvout_outStream_V_keep_V.dat with impl_rtl.processImage.autotvout_outStream_V_keep_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.processImage.autotvout_outStream_V_strb_V.dat", "r");
    fp2 = $fopen("./impl_rtl.processImage.autotvout_outStream_V_strb_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.processImage.autotvout_outStream_V_strb_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.processImage.autotvout_outStream_V_strb_V.dat\"!");
    else begin
        $display("Comparing rtl.processImage.autotvout_outStream_V_strb_V.dat with impl_rtl.processImage.autotvout_outStream_V_strb_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.processImage.autotvout_outStream_V_user_V.dat", "r");
    fp2 = $fopen("./impl_rtl.processImage.autotvout_outStream_V_user_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.processImage.autotvout_outStream_V_user_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.processImage.autotvout_outStream_V_user_V.dat\"!");
    else begin
        $display("Comparing rtl.processImage.autotvout_outStream_V_user_V.dat with impl_rtl.processImage.autotvout_outStream_V_user_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.processImage.autotvout_outStream_V_last_V.dat", "r");
    fp2 = $fopen("./impl_rtl.processImage.autotvout_outStream_V_last_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.processImage.autotvout_outStream_V_last_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.processImage.autotvout_outStream_V_last_V.dat\"!");
    else begin
        $display("Comparing rtl.processImage.autotvout_outStream_V_last_V.dat with impl_rtl.processImage.autotvout_outStream_V_last_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.processImage.autotvout_outStream_V_id_V.dat", "r");
    fp2 = $fopen("./impl_rtl.processImage.autotvout_outStream_V_id_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.processImage.autotvout_outStream_V_id_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.processImage.autotvout_outStream_V_id_V.dat\"!");
    else begin
        $display("Comparing rtl.processImage.autotvout_outStream_V_id_V.dat with impl_rtl.processImage.autotvout_outStream_V_id_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.processImage.autotvout_outStream_V_dest_V.dat", "r");
    fp2 = $fopen("./impl_rtl.processImage.autotvout_outStream_V_dest_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.processImage.autotvout_outStream_V_dest_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.processImage.autotvout_outStream_V_dest_V.dat\"!");
    else begin
        $display("Comparing rtl.processImage.autotvout_outStream_V_dest_V.dat with impl_rtl.processImage.autotvout_outStream_V_dest_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
        $display("Simulation Passed.");
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_inStream_V_data_V;
reg [31:0] size_inStream_V_data_V;
reg [31:0] size_inStream_V_data_V_backup;
reg end_inStream_V_keep_V;
reg [31:0] size_inStream_V_keep_V;
reg [31:0] size_inStream_V_keep_V_backup;
reg end_inStream_V_strb_V;
reg [31:0] size_inStream_V_strb_V;
reg [31:0] size_inStream_V_strb_V_backup;
reg end_inStream_V_user_V;
reg [31:0] size_inStream_V_user_V;
reg [31:0] size_inStream_V_user_V_backup;
reg end_inStream_V_last_V;
reg [31:0] size_inStream_V_last_V;
reg [31:0] size_inStream_V_last_V_backup;
reg end_inStream_V_id_V;
reg [31:0] size_inStream_V_id_V;
reg [31:0] size_inStream_V_id_V_backup;
reg end_inStream_V_dest_V;
reg [31:0] size_inStream_V_dest_V;
reg [31:0] size_inStream_V_dest_V_backup;
reg end_outStream_V_data_V;
reg [31:0] size_outStream_V_data_V;
reg [31:0] size_outStream_V_data_V_backup;
reg end_outStream_V_keep_V;
reg [31:0] size_outStream_V_keep_V;
reg [31:0] size_outStream_V_keep_V_backup;
reg end_outStream_V_strb_V;
reg [31:0] size_outStream_V_strb_V;
reg [31:0] size_outStream_V_strb_V_backup;
reg end_outStream_V_user_V;
reg [31:0] size_outStream_V_user_V;
reg [31:0] size_outStream_V_user_V_backup;
reg end_outStream_V_last_V;
reg [31:0] size_outStream_V_last_V;
reg [31:0] size_outStream_V_last_V_backup;
reg end_outStream_V_id_V;
reg [31:0] size_outStream_V_id_V;
reg [31:0] size_outStream_V_id_V_backup;
reg end_outStream_V_dest_V;
reg [31:0] size_outStream_V_dest_V;
reg [31:0] size_outStream_V_dest_V_backup;
reg end_kernel_0;
reg [31:0] size_kernel_0;
reg [31:0] size_kernel_0_backup;
reg end_kernel_1;
reg [31:0] size_kernel_1;
reg [31:0] size_kernel_1_backup;
reg end_kernel_2;
reg [31:0] size_kernel_2;
reg [31:0] size_kernel_2_backup;
reg end_kernel_3;
reg [31:0] size_kernel_3;
reg [31:0] size_kernel_3_backup;
reg end_kernel_4;
reg [31:0] size_kernel_4;
reg [31:0] size_kernel_4_backup;
reg end_kernel_5;
reg [31:0] size_kernel_5;
reg [31:0] size_kernel_5_backup;
reg end_kernel_6;
reg [31:0] size_kernel_6;
reg [31:0] size_kernel_6_backup;
reg end_kernel_7;
reg [31:0] size_kernel_7;
reg [31:0] size_kernel_7_backup;
reg end_kernel_8;
reg [31:0] size_kernel_8;
reg [31:0] size_kernel_8_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 1;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    rst = 0;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 0);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt >= AUTOTB_TRANSACTION_NUM) begin
            // keep pushing garbage in
            #0 start = 1;
        end
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
initial begin : proc_gen_inStream_V_data_V_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    inStream_V_data_V_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_inStream_V_data_V > internal_trans_num) begin
            inStream_V_data_V_ready_reg <= 1;
            @(posedge AESL_clock);
            inStream_V_data_V_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    inStream_V_data_V_ready_reg <= 0;
end
initial begin : proc_gen_inStream_V_keep_V_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    inStream_V_keep_V_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_inStream_V_keep_V > internal_trans_num) begin
            inStream_V_keep_V_ready_reg <= 1;
            @(posedge AESL_clock);
            inStream_V_keep_V_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    inStream_V_keep_V_ready_reg <= 0;
end
initial begin : proc_gen_inStream_V_strb_V_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    inStream_V_strb_V_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_inStream_V_strb_V > internal_trans_num) begin
            inStream_V_strb_V_ready_reg <= 1;
            @(posedge AESL_clock);
            inStream_V_strb_V_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    inStream_V_strb_V_ready_reg <= 0;
end
initial begin : proc_gen_inStream_V_user_V_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    inStream_V_user_V_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_inStream_V_user_V > internal_trans_num) begin
            inStream_V_user_V_ready_reg <= 1;
            @(posedge AESL_clock);
            inStream_V_user_V_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    inStream_V_user_V_ready_reg <= 0;
end
initial begin : proc_gen_inStream_V_last_V_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    inStream_V_last_V_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_inStream_V_last_V > internal_trans_num) begin
            inStream_V_last_V_ready_reg <= 1;
            @(posedge AESL_clock);
            inStream_V_last_V_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    inStream_V_last_V_ready_reg <= 0;
end
initial begin : proc_gen_inStream_V_id_V_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    inStream_V_id_V_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_inStream_V_id_V > internal_trans_num) begin
            inStream_V_id_V_ready_reg <= 1;
            @(posedge AESL_clock);
            inStream_V_id_V_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    inStream_V_id_V_ready_reg <= 0;
end
initial begin : proc_gen_inStream_V_dest_V_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    inStream_V_dest_V_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_inStream_V_dest_V > internal_trans_num) begin
            inStream_V_dest_V_ready_reg <= 1;
            @(posedge AESL_clock);
            inStream_V_dest_V_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    inStream_V_dest_V_ready_reg <= 0;
end
    
    `define STREAM_SIZE_IN_inStream_V_data_V "./stream_size_in_inStream_V_data_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_inStream_V_data_V
        integer fp_inStream_V_data_V;
        reg [127:0] token_inStream_V_data_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_inStream_V_data_V = 0;
        end_inStream_V_data_V = 0;
        wait (AESL_reset === 0);
        
        fp_inStream_V_data_V = $fopen(`STREAM_SIZE_IN_inStream_V_data_V, "r");
        if(fp_inStream_V_data_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_inStream_V_data_V);
            $finish;
        end
        read_token(fp_inStream_V_data_V, token_inStream_V_data_V); // should be [[[runtime]]]
        if (token_inStream_V_data_V != "[[[runtime]]]") begin
            $display("ERROR: token_inStream_V_data_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_inStream_V_data_V = 0;
        size_inStream_V_data_V_backup = 0;
        while (size_inStream_V_data_V == 0 && end_inStream_V_data_V == 0) begin
            ap_c_n_tvin_trans_num_inStream_V_data_V = ap_c_n_tvin_trans_num_inStream_V_data_V + 1;
            read_token(fp_inStream_V_data_V, token_inStream_V_data_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_inStream_V_data_V == "[[transaction]]") begin
                read_token(fp_inStream_V_data_V, token_inStream_V_data_V); // should be transaction number
                read_token(fp_inStream_V_data_V, token_inStream_V_data_V); // should be size for hls::stream
                ret = $sscanf(token_inStream_V_data_V, "%d", size_inStream_V_data_V);
                if (size_inStream_V_data_V > 0) begin
                    size_inStream_V_data_V_backup = size_inStream_V_data_V;
                end
                read_token(fp_inStream_V_data_V, token_inStream_V_data_V); // should be [[/transaction]]
            end else if (token_inStream_V_data_V == "[[[/runtime]]]") begin
                $fclose(fp_inStream_V_data_V);
                end_inStream_V_data_V = 1;
            end else begin
                $display("ERROR: unknown token_inStream_V_data_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_inStream_V_data_V == 0) begin
                if (inStream_V_data_V_read == 1) begin
                    if (size_inStream_V_data_V > 0) begin
                        size_inStream_V_data_V = size_inStream_V_data_V - 1;
                        while (size_inStream_V_data_V == 0 && end_inStream_V_data_V == 0) begin
                            ap_c_n_tvin_trans_num_inStream_V_data_V = ap_c_n_tvin_trans_num_inStream_V_data_V + 1;
                            read_token(fp_inStream_V_data_V, token_inStream_V_data_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_inStream_V_data_V == "[[transaction]]") begin
                                read_token(fp_inStream_V_data_V, token_inStream_V_data_V); // should be transaction number
                                read_token(fp_inStream_V_data_V, token_inStream_V_data_V); // should be size for hls::stream
                                ret = $sscanf(token_inStream_V_data_V, "%d", size_inStream_V_data_V);
                                if (size_inStream_V_data_V > 0) begin
                                    size_inStream_V_data_V_backup = size_inStream_V_data_V;
                                end
                                read_token(fp_inStream_V_data_V, token_inStream_V_data_V); // should be [[/transaction]]
                            end else if (token_inStream_V_data_V == "[[[/runtime]]]") begin
                                size_inStream_V_data_V = size_inStream_V_data_V_backup;
                                $fclose(fp_inStream_V_data_V);
                                end_inStream_V_data_V = 1;
                            end else begin
                                $display("ERROR: unknown token_inStream_V_data_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (inStream_V_data_V_read == 1) begin
                    if (size_inStream_V_data_V > 0) begin
                        size_inStream_V_data_V = size_inStream_V_data_V - 1;
                        if (size_inStream_V_data_V == 0) begin
                            ap_c_n_tvin_trans_num_inStream_V_data_V = ap_c_n_tvin_trans_num_inStream_V_data_V + 1;
                            size_inStream_V_data_V = size_inStream_V_data_V_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_inStream_V_keep_V "./stream_size_in_inStream_V_keep_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_inStream_V_keep_V
        integer fp_inStream_V_keep_V;
        reg [127:0] token_inStream_V_keep_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_inStream_V_keep_V = 0;
        end_inStream_V_keep_V = 0;
        wait (AESL_reset === 0);
        
        fp_inStream_V_keep_V = $fopen(`STREAM_SIZE_IN_inStream_V_keep_V, "r");
        if(fp_inStream_V_keep_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_inStream_V_keep_V);
            $finish;
        end
        read_token(fp_inStream_V_keep_V, token_inStream_V_keep_V); // should be [[[runtime]]]
        if (token_inStream_V_keep_V != "[[[runtime]]]") begin
            $display("ERROR: token_inStream_V_keep_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_inStream_V_keep_V = 0;
        size_inStream_V_keep_V_backup = 0;
        while (size_inStream_V_keep_V == 0 && end_inStream_V_keep_V == 0) begin
            ap_c_n_tvin_trans_num_inStream_V_keep_V = ap_c_n_tvin_trans_num_inStream_V_keep_V + 1;
            read_token(fp_inStream_V_keep_V, token_inStream_V_keep_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_inStream_V_keep_V == "[[transaction]]") begin
                read_token(fp_inStream_V_keep_V, token_inStream_V_keep_V); // should be transaction number
                read_token(fp_inStream_V_keep_V, token_inStream_V_keep_V); // should be size for hls::stream
                ret = $sscanf(token_inStream_V_keep_V, "%d", size_inStream_V_keep_V);
                if (size_inStream_V_keep_V > 0) begin
                    size_inStream_V_keep_V_backup = size_inStream_V_keep_V;
                end
                read_token(fp_inStream_V_keep_V, token_inStream_V_keep_V); // should be [[/transaction]]
            end else if (token_inStream_V_keep_V == "[[[/runtime]]]") begin
                $fclose(fp_inStream_V_keep_V);
                end_inStream_V_keep_V = 1;
            end else begin
                $display("ERROR: unknown token_inStream_V_keep_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_inStream_V_keep_V == 0) begin
                if (inStream_V_keep_V_read == 1) begin
                    if (size_inStream_V_keep_V > 0) begin
                        size_inStream_V_keep_V = size_inStream_V_keep_V - 1;
                        while (size_inStream_V_keep_V == 0 && end_inStream_V_keep_V == 0) begin
                            ap_c_n_tvin_trans_num_inStream_V_keep_V = ap_c_n_tvin_trans_num_inStream_V_keep_V + 1;
                            read_token(fp_inStream_V_keep_V, token_inStream_V_keep_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_inStream_V_keep_V == "[[transaction]]") begin
                                read_token(fp_inStream_V_keep_V, token_inStream_V_keep_V); // should be transaction number
                                read_token(fp_inStream_V_keep_V, token_inStream_V_keep_V); // should be size for hls::stream
                                ret = $sscanf(token_inStream_V_keep_V, "%d", size_inStream_V_keep_V);
                                if (size_inStream_V_keep_V > 0) begin
                                    size_inStream_V_keep_V_backup = size_inStream_V_keep_V;
                                end
                                read_token(fp_inStream_V_keep_V, token_inStream_V_keep_V); // should be [[/transaction]]
                            end else if (token_inStream_V_keep_V == "[[[/runtime]]]") begin
                                size_inStream_V_keep_V = size_inStream_V_keep_V_backup;
                                $fclose(fp_inStream_V_keep_V);
                                end_inStream_V_keep_V = 1;
                            end else begin
                                $display("ERROR: unknown token_inStream_V_keep_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (inStream_V_keep_V_read == 1) begin
                    if (size_inStream_V_keep_V > 0) begin
                        size_inStream_V_keep_V = size_inStream_V_keep_V - 1;
                        if (size_inStream_V_keep_V == 0) begin
                            ap_c_n_tvin_trans_num_inStream_V_keep_V = ap_c_n_tvin_trans_num_inStream_V_keep_V + 1;
                            size_inStream_V_keep_V = size_inStream_V_keep_V_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_inStream_V_strb_V "./stream_size_in_inStream_V_strb_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_inStream_V_strb_V
        integer fp_inStream_V_strb_V;
        reg [127:0] token_inStream_V_strb_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_inStream_V_strb_V = 0;
        end_inStream_V_strb_V = 0;
        wait (AESL_reset === 0);
        
        fp_inStream_V_strb_V = $fopen(`STREAM_SIZE_IN_inStream_V_strb_V, "r");
        if(fp_inStream_V_strb_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_inStream_V_strb_V);
            $finish;
        end
        read_token(fp_inStream_V_strb_V, token_inStream_V_strb_V); // should be [[[runtime]]]
        if (token_inStream_V_strb_V != "[[[runtime]]]") begin
            $display("ERROR: token_inStream_V_strb_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_inStream_V_strb_V = 0;
        size_inStream_V_strb_V_backup = 0;
        while (size_inStream_V_strb_V == 0 && end_inStream_V_strb_V == 0) begin
            ap_c_n_tvin_trans_num_inStream_V_strb_V = ap_c_n_tvin_trans_num_inStream_V_strb_V + 1;
            read_token(fp_inStream_V_strb_V, token_inStream_V_strb_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_inStream_V_strb_V == "[[transaction]]") begin
                read_token(fp_inStream_V_strb_V, token_inStream_V_strb_V); // should be transaction number
                read_token(fp_inStream_V_strb_V, token_inStream_V_strb_V); // should be size for hls::stream
                ret = $sscanf(token_inStream_V_strb_V, "%d", size_inStream_V_strb_V);
                if (size_inStream_V_strb_V > 0) begin
                    size_inStream_V_strb_V_backup = size_inStream_V_strb_V;
                end
                read_token(fp_inStream_V_strb_V, token_inStream_V_strb_V); // should be [[/transaction]]
            end else if (token_inStream_V_strb_V == "[[[/runtime]]]") begin
                $fclose(fp_inStream_V_strb_V);
                end_inStream_V_strb_V = 1;
            end else begin
                $display("ERROR: unknown token_inStream_V_strb_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_inStream_V_strb_V == 0) begin
                if (inStream_V_strb_V_read == 1) begin
                    if (size_inStream_V_strb_V > 0) begin
                        size_inStream_V_strb_V = size_inStream_V_strb_V - 1;
                        while (size_inStream_V_strb_V == 0 && end_inStream_V_strb_V == 0) begin
                            ap_c_n_tvin_trans_num_inStream_V_strb_V = ap_c_n_tvin_trans_num_inStream_V_strb_V + 1;
                            read_token(fp_inStream_V_strb_V, token_inStream_V_strb_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_inStream_V_strb_V == "[[transaction]]") begin
                                read_token(fp_inStream_V_strb_V, token_inStream_V_strb_V); // should be transaction number
                                read_token(fp_inStream_V_strb_V, token_inStream_V_strb_V); // should be size for hls::stream
                                ret = $sscanf(token_inStream_V_strb_V, "%d", size_inStream_V_strb_V);
                                if (size_inStream_V_strb_V > 0) begin
                                    size_inStream_V_strb_V_backup = size_inStream_V_strb_V;
                                end
                                read_token(fp_inStream_V_strb_V, token_inStream_V_strb_V); // should be [[/transaction]]
                            end else if (token_inStream_V_strb_V == "[[[/runtime]]]") begin
                                size_inStream_V_strb_V = size_inStream_V_strb_V_backup;
                                $fclose(fp_inStream_V_strb_V);
                                end_inStream_V_strb_V = 1;
                            end else begin
                                $display("ERROR: unknown token_inStream_V_strb_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (inStream_V_strb_V_read == 1) begin
                    if (size_inStream_V_strb_V > 0) begin
                        size_inStream_V_strb_V = size_inStream_V_strb_V - 1;
                        if (size_inStream_V_strb_V == 0) begin
                            ap_c_n_tvin_trans_num_inStream_V_strb_V = ap_c_n_tvin_trans_num_inStream_V_strb_V + 1;
                            size_inStream_V_strb_V = size_inStream_V_strb_V_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_inStream_V_user_V "./stream_size_in_inStream_V_user_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_inStream_V_user_V
        integer fp_inStream_V_user_V;
        reg [127:0] token_inStream_V_user_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_inStream_V_user_V = 0;
        end_inStream_V_user_V = 0;
        wait (AESL_reset === 0);
        
        fp_inStream_V_user_V = $fopen(`STREAM_SIZE_IN_inStream_V_user_V, "r");
        if(fp_inStream_V_user_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_inStream_V_user_V);
            $finish;
        end
        read_token(fp_inStream_V_user_V, token_inStream_V_user_V); // should be [[[runtime]]]
        if (token_inStream_V_user_V != "[[[runtime]]]") begin
            $display("ERROR: token_inStream_V_user_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_inStream_V_user_V = 0;
        size_inStream_V_user_V_backup = 0;
        while (size_inStream_V_user_V == 0 && end_inStream_V_user_V == 0) begin
            ap_c_n_tvin_trans_num_inStream_V_user_V = ap_c_n_tvin_trans_num_inStream_V_user_V + 1;
            read_token(fp_inStream_V_user_V, token_inStream_V_user_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_inStream_V_user_V == "[[transaction]]") begin
                read_token(fp_inStream_V_user_V, token_inStream_V_user_V); // should be transaction number
                read_token(fp_inStream_V_user_V, token_inStream_V_user_V); // should be size for hls::stream
                ret = $sscanf(token_inStream_V_user_V, "%d", size_inStream_V_user_V);
                if (size_inStream_V_user_V > 0) begin
                    size_inStream_V_user_V_backup = size_inStream_V_user_V;
                end
                read_token(fp_inStream_V_user_V, token_inStream_V_user_V); // should be [[/transaction]]
            end else if (token_inStream_V_user_V == "[[[/runtime]]]") begin
                $fclose(fp_inStream_V_user_V);
                end_inStream_V_user_V = 1;
            end else begin
                $display("ERROR: unknown token_inStream_V_user_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_inStream_V_user_V == 0) begin
                if (inStream_V_user_V_read == 1) begin
                    if (size_inStream_V_user_V > 0) begin
                        size_inStream_V_user_V = size_inStream_V_user_V - 1;
                        while (size_inStream_V_user_V == 0 && end_inStream_V_user_V == 0) begin
                            ap_c_n_tvin_trans_num_inStream_V_user_V = ap_c_n_tvin_trans_num_inStream_V_user_V + 1;
                            read_token(fp_inStream_V_user_V, token_inStream_V_user_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_inStream_V_user_V == "[[transaction]]") begin
                                read_token(fp_inStream_V_user_V, token_inStream_V_user_V); // should be transaction number
                                read_token(fp_inStream_V_user_V, token_inStream_V_user_V); // should be size for hls::stream
                                ret = $sscanf(token_inStream_V_user_V, "%d", size_inStream_V_user_V);
                                if (size_inStream_V_user_V > 0) begin
                                    size_inStream_V_user_V_backup = size_inStream_V_user_V;
                                end
                                read_token(fp_inStream_V_user_V, token_inStream_V_user_V); // should be [[/transaction]]
                            end else if (token_inStream_V_user_V == "[[[/runtime]]]") begin
                                size_inStream_V_user_V = size_inStream_V_user_V_backup;
                                $fclose(fp_inStream_V_user_V);
                                end_inStream_V_user_V = 1;
                            end else begin
                                $display("ERROR: unknown token_inStream_V_user_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (inStream_V_user_V_read == 1) begin
                    if (size_inStream_V_user_V > 0) begin
                        size_inStream_V_user_V = size_inStream_V_user_V - 1;
                        if (size_inStream_V_user_V == 0) begin
                            ap_c_n_tvin_trans_num_inStream_V_user_V = ap_c_n_tvin_trans_num_inStream_V_user_V + 1;
                            size_inStream_V_user_V = size_inStream_V_user_V_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_inStream_V_last_V "./stream_size_in_inStream_V_last_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_inStream_V_last_V
        integer fp_inStream_V_last_V;
        reg [127:0] token_inStream_V_last_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_inStream_V_last_V = 0;
        end_inStream_V_last_V = 0;
        wait (AESL_reset === 0);
        
        fp_inStream_V_last_V = $fopen(`STREAM_SIZE_IN_inStream_V_last_V, "r");
        if(fp_inStream_V_last_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_inStream_V_last_V);
            $finish;
        end
        read_token(fp_inStream_V_last_V, token_inStream_V_last_V); // should be [[[runtime]]]
        if (token_inStream_V_last_V != "[[[runtime]]]") begin
            $display("ERROR: token_inStream_V_last_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_inStream_V_last_V = 0;
        size_inStream_V_last_V_backup = 0;
        while (size_inStream_V_last_V == 0 && end_inStream_V_last_V == 0) begin
            ap_c_n_tvin_trans_num_inStream_V_last_V = ap_c_n_tvin_trans_num_inStream_V_last_V + 1;
            read_token(fp_inStream_V_last_V, token_inStream_V_last_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_inStream_V_last_V == "[[transaction]]") begin
                read_token(fp_inStream_V_last_V, token_inStream_V_last_V); // should be transaction number
                read_token(fp_inStream_V_last_V, token_inStream_V_last_V); // should be size for hls::stream
                ret = $sscanf(token_inStream_V_last_V, "%d", size_inStream_V_last_V);
                if (size_inStream_V_last_V > 0) begin
                    size_inStream_V_last_V_backup = size_inStream_V_last_V;
                end
                read_token(fp_inStream_V_last_V, token_inStream_V_last_V); // should be [[/transaction]]
            end else if (token_inStream_V_last_V == "[[[/runtime]]]") begin
                $fclose(fp_inStream_V_last_V);
                end_inStream_V_last_V = 1;
            end else begin
                $display("ERROR: unknown token_inStream_V_last_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_inStream_V_last_V == 0) begin
                if (inStream_V_last_V_read == 1) begin
                    if (size_inStream_V_last_V > 0) begin
                        size_inStream_V_last_V = size_inStream_V_last_V - 1;
                        while (size_inStream_V_last_V == 0 && end_inStream_V_last_V == 0) begin
                            ap_c_n_tvin_trans_num_inStream_V_last_V = ap_c_n_tvin_trans_num_inStream_V_last_V + 1;
                            read_token(fp_inStream_V_last_V, token_inStream_V_last_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_inStream_V_last_V == "[[transaction]]") begin
                                read_token(fp_inStream_V_last_V, token_inStream_V_last_V); // should be transaction number
                                read_token(fp_inStream_V_last_V, token_inStream_V_last_V); // should be size for hls::stream
                                ret = $sscanf(token_inStream_V_last_V, "%d", size_inStream_V_last_V);
                                if (size_inStream_V_last_V > 0) begin
                                    size_inStream_V_last_V_backup = size_inStream_V_last_V;
                                end
                                read_token(fp_inStream_V_last_V, token_inStream_V_last_V); // should be [[/transaction]]
                            end else if (token_inStream_V_last_V == "[[[/runtime]]]") begin
                                size_inStream_V_last_V = size_inStream_V_last_V_backup;
                                $fclose(fp_inStream_V_last_V);
                                end_inStream_V_last_V = 1;
                            end else begin
                                $display("ERROR: unknown token_inStream_V_last_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (inStream_V_last_V_read == 1) begin
                    if (size_inStream_V_last_V > 0) begin
                        size_inStream_V_last_V = size_inStream_V_last_V - 1;
                        if (size_inStream_V_last_V == 0) begin
                            ap_c_n_tvin_trans_num_inStream_V_last_V = ap_c_n_tvin_trans_num_inStream_V_last_V + 1;
                            size_inStream_V_last_V = size_inStream_V_last_V_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_inStream_V_id_V "./stream_size_in_inStream_V_id_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_inStream_V_id_V
        integer fp_inStream_V_id_V;
        reg [127:0] token_inStream_V_id_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_inStream_V_id_V = 0;
        end_inStream_V_id_V = 0;
        wait (AESL_reset === 0);
        
        fp_inStream_V_id_V = $fopen(`STREAM_SIZE_IN_inStream_V_id_V, "r");
        if(fp_inStream_V_id_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_inStream_V_id_V);
            $finish;
        end
        read_token(fp_inStream_V_id_V, token_inStream_V_id_V); // should be [[[runtime]]]
        if (token_inStream_V_id_V != "[[[runtime]]]") begin
            $display("ERROR: token_inStream_V_id_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_inStream_V_id_V = 0;
        size_inStream_V_id_V_backup = 0;
        while (size_inStream_V_id_V == 0 && end_inStream_V_id_V == 0) begin
            ap_c_n_tvin_trans_num_inStream_V_id_V = ap_c_n_tvin_trans_num_inStream_V_id_V + 1;
            read_token(fp_inStream_V_id_V, token_inStream_V_id_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_inStream_V_id_V == "[[transaction]]") begin
                read_token(fp_inStream_V_id_V, token_inStream_V_id_V); // should be transaction number
                read_token(fp_inStream_V_id_V, token_inStream_V_id_V); // should be size for hls::stream
                ret = $sscanf(token_inStream_V_id_V, "%d", size_inStream_V_id_V);
                if (size_inStream_V_id_V > 0) begin
                    size_inStream_V_id_V_backup = size_inStream_V_id_V;
                end
                read_token(fp_inStream_V_id_V, token_inStream_V_id_V); // should be [[/transaction]]
            end else if (token_inStream_V_id_V == "[[[/runtime]]]") begin
                $fclose(fp_inStream_V_id_V);
                end_inStream_V_id_V = 1;
            end else begin
                $display("ERROR: unknown token_inStream_V_id_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_inStream_V_id_V == 0) begin
                if (inStream_V_id_V_read == 1) begin
                    if (size_inStream_V_id_V > 0) begin
                        size_inStream_V_id_V = size_inStream_V_id_V - 1;
                        while (size_inStream_V_id_V == 0 && end_inStream_V_id_V == 0) begin
                            ap_c_n_tvin_trans_num_inStream_V_id_V = ap_c_n_tvin_trans_num_inStream_V_id_V + 1;
                            read_token(fp_inStream_V_id_V, token_inStream_V_id_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_inStream_V_id_V == "[[transaction]]") begin
                                read_token(fp_inStream_V_id_V, token_inStream_V_id_V); // should be transaction number
                                read_token(fp_inStream_V_id_V, token_inStream_V_id_V); // should be size for hls::stream
                                ret = $sscanf(token_inStream_V_id_V, "%d", size_inStream_V_id_V);
                                if (size_inStream_V_id_V > 0) begin
                                    size_inStream_V_id_V_backup = size_inStream_V_id_V;
                                end
                                read_token(fp_inStream_V_id_V, token_inStream_V_id_V); // should be [[/transaction]]
                            end else if (token_inStream_V_id_V == "[[[/runtime]]]") begin
                                size_inStream_V_id_V = size_inStream_V_id_V_backup;
                                $fclose(fp_inStream_V_id_V);
                                end_inStream_V_id_V = 1;
                            end else begin
                                $display("ERROR: unknown token_inStream_V_id_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (inStream_V_id_V_read == 1) begin
                    if (size_inStream_V_id_V > 0) begin
                        size_inStream_V_id_V = size_inStream_V_id_V - 1;
                        if (size_inStream_V_id_V == 0) begin
                            ap_c_n_tvin_trans_num_inStream_V_id_V = ap_c_n_tvin_trans_num_inStream_V_id_V + 1;
                            size_inStream_V_id_V = size_inStream_V_id_V_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_inStream_V_dest_V "./stream_size_in_inStream_V_dest_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_inStream_V_dest_V
        integer fp_inStream_V_dest_V;
        reg [127:0] token_inStream_V_dest_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_inStream_V_dest_V = 0;
        end_inStream_V_dest_V = 0;
        wait (AESL_reset === 0);
        
        fp_inStream_V_dest_V = $fopen(`STREAM_SIZE_IN_inStream_V_dest_V, "r");
        if(fp_inStream_V_dest_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_inStream_V_dest_V);
            $finish;
        end
        read_token(fp_inStream_V_dest_V, token_inStream_V_dest_V); // should be [[[runtime]]]
        if (token_inStream_V_dest_V != "[[[runtime]]]") begin
            $display("ERROR: token_inStream_V_dest_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_inStream_V_dest_V = 0;
        size_inStream_V_dest_V_backup = 0;
        while (size_inStream_V_dest_V == 0 && end_inStream_V_dest_V == 0) begin
            ap_c_n_tvin_trans_num_inStream_V_dest_V = ap_c_n_tvin_trans_num_inStream_V_dest_V + 1;
            read_token(fp_inStream_V_dest_V, token_inStream_V_dest_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_inStream_V_dest_V == "[[transaction]]") begin
                read_token(fp_inStream_V_dest_V, token_inStream_V_dest_V); // should be transaction number
                read_token(fp_inStream_V_dest_V, token_inStream_V_dest_V); // should be size for hls::stream
                ret = $sscanf(token_inStream_V_dest_V, "%d", size_inStream_V_dest_V);
                if (size_inStream_V_dest_V > 0) begin
                    size_inStream_V_dest_V_backup = size_inStream_V_dest_V;
                end
                read_token(fp_inStream_V_dest_V, token_inStream_V_dest_V); // should be [[/transaction]]
            end else if (token_inStream_V_dest_V == "[[[/runtime]]]") begin
                $fclose(fp_inStream_V_dest_V);
                end_inStream_V_dest_V = 1;
            end else begin
                $display("ERROR: unknown token_inStream_V_dest_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_inStream_V_dest_V == 0) begin
                if (inStream_V_dest_V_read == 1) begin
                    if (size_inStream_V_dest_V > 0) begin
                        size_inStream_V_dest_V = size_inStream_V_dest_V - 1;
                        while (size_inStream_V_dest_V == 0 && end_inStream_V_dest_V == 0) begin
                            ap_c_n_tvin_trans_num_inStream_V_dest_V = ap_c_n_tvin_trans_num_inStream_V_dest_V + 1;
                            read_token(fp_inStream_V_dest_V, token_inStream_V_dest_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_inStream_V_dest_V == "[[transaction]]") begin
                                read_token(fp_inStream_V_dest_V, token_inStream_V_dest_V); // should be transaction number
                                read_token(fp_inStream_V_dest_V, token_inStream_V_dest_V); // should be size for hls::stream
                                ret = $sscanf(token_inStream_V_dest_V, "%d", size_inStream_V_dest_V);
                                if (size_inStream_V_dest_V > 0) begin
                                    size_inStream_V_dest_V_backup = size_inStream_V_dest_V;
                                end
                                read_token(fp_inStream_V_dest_V, token_inStream_V_dest_V); // should be [[/transaction]]
                            end else if (token_inStream_V_dest_V == "[[[/runtime]]]") begin
                                size_inStream_V_dest_V = size_inStream_V_dest_V_backup;
                                $fclose(fp_inStream_V_dest_V);
                                end_inStream_V_dest_V = 1;
                            end else begin
                                $display("ERROR: unknown token_inStream_V_dest_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (inStream_V_dest_V_read == 1) begin
                    if (size_inStream_V_dest_V > 0) begin
                        size_inStream_V_dest_V = size_inStream_V_dest_V - 1;
                        if (size_inStream_V_dest_V == 0) begin
                            ap_c_n_tvin_trans_num_inStream_V_dest_V = ap_c_n_tvin_trans_num_inStream_V_dest_V + 1;
                            size_inStream_V_dest_V = size_inStream_V_dest_V_backup;
                        end
                    end
                end
            end
        end
    end
    

reg dump_tvout_finish_outStream_V_data_V;

initial begin : dump_tvout_runtime_sign_outStream_V_data_V
    integer fp;
    dump_tvout_finish_outStream_V_data_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_outStream_V_data_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_outStream_V_data_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_outStream_V_data_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_outStream_V_data_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_outStream_V_data_V = 1;
end


reg dump_tvout_finish_outStream_V_keep_V;

initial begin : dump_tvout_runtime_sign_outStream_V_keep_V
    integer fp;
    dump_tvout_finish_outStream_V_keep_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_outStream_V_keep_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_outStream_V_keep_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_outStream_V_keep_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_outStream_V_keep_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_outStream_V_keep_V = 1;
end


reg dump_tvout_finish_outStream_V_strb_V;

initial begin : dump_tvout_runtime_sign_outStream_V_strb_V
    integer fp;
    dump_tvout_finish_outStream_V_strb_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_outStream_V_strb_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_outStream_V_strb_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_outStream_V_strb_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_outStream_V_strb_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_outStream_V_strb_V = 1;
end


reg dump_tvout_finish_outStream_V_user_V;

initial begin : dump_tvout_runtime_sign_outStream_V_user_V
    integer fp;
    dump_tvout_finish_outStream_V_user_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_outStream_V_user_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_outStream_V_user_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_outStream_V_user_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_outStream_V_user_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_outStream_V_user_V = 1;
end


reg dump_tvout_finish_outStream_V_last_V;

initial begin : dump_tvout_runtime_sign_outStream_V_last_V
    integer fp;
    dump_tvout_finish_outStream_V_last_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_outStream_V_last_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_outStream_V_last_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_outStream_V_last_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_outStream_V_last_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_outStream_V_last_V = 1;
end


reg dump_tvout_finish_outStream_V_id_V;

initial begin : dump_tvout_runtime_sign_outStream_V_id_V
    integer fp;
    dump_tvout_finish_outStream_V_id_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_outStream_V_id_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_outStream_V_id_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_outStream_V_id_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_outStream_V_id_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_outStream_V_id_V = 1;
end


reg dump_tvout_finish_outStream_V_dest_V;

initial begin : dump_tvout_runtime_sign_outStream_V_dest_V
    integer fp;
    dump_tvout_finish_outStream_V_dest_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_outStream_V_dest_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_outStream_V_dest_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_outStream_V_dest_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_outStream_V_dest_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_outStream_V_dest_V = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    clk_cnt <= clk_cnt + 1;
    AESL_ready_p1 <= AESL_ready;
    AESL_start_p1 <= AESL_start;
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
event report_progress;

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 0);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 0);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = finish_timestamp[i] - start_timestamp[i]+1;
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

endmodule
