//////////////////////////////////////////////////////////
// Copyright (c) 2025 Neil Valin. All Rights Reserved.
//
//////////////////////////////////////////////////////////
`ifndef __clk_rst_pkg_sv__
`define __clk_rst_pkg_sv__

`default_nettype none
package clk_rst_pkg;
	`timescale 1ns/1fs;

	import uvm_pkg::*;
	`include "uvm_macros.svh
	
	typedef enum bit {CLK_START, CLK_STOP} clk_state_t;

	`include "sv/clk_rst_seq_item.sv"
	`include "sv/clk_rst_cfg.sv"
	`include "sv/clk_rst_driver.sv"
	`include "sv/clk_monitor.sv"
	`include "sv/clk_rst_sequence.sv"
	`include "sv/clk_rst_sequencer.sv"
	`include "sv/clk_rst_agent.sv"
	`include "sv/clk_rst_if.sv"
	`include "sv/clk_rst_uvc.sv"
endpackage
`endif
