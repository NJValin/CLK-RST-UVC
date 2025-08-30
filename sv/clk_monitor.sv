//////////////////////////////////////////////////////
// Copyright (c) 2025 Neil Valin. All Rights Reserved.
//
//
//////////////////////////////////////////////////////
`ifndef __clk_monitor_sv__
`define __clk_monitor_sv__

class clk_monitor extends uvm_monitor;
	
	
	`uvm_component_utils(clk_monitor);

	function new(string name = "clk_monitor", uvm_component parent);
		super.new(name, parent);
	endfunction

	`include ".cclk_monitor_tasks.sv"
	
endclass
`endif
