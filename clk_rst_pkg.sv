
`default_nettype none
package clk_rst_pkg;
	`timescale 1ns/1fs;

	import uvm_pkg::*;
	
	typedef enum bit {CLK_START, CLK_STOP} clk_state_t;

	`include "clk_rst_if.sv"
	`include "clk_monitor.sv"
	`include "clk_rst_cfg.sv"
	`include "clk_rst_pkg.sv"
	`include "clk_rst_uvc.sv"
	`include "clk_rst_agent.sv"
	`include "clk_rst_driver.sv"
endpackage
