//////////////////////////////////////////////////////
// Copyright (c) 2025 Neil Valin. All Rights Reserved.
//
//
//////////////////////////////////////////////////////

class clk_rst_seq_item extends uvm_sequence_item;
	`uvm_object_utils_begin(clk_rst_seq_item)
	`uvm_object_utils_end

	clk_state_t clk_state;

	function new(string name = "clk_rst_seq_item");
		super.new(name);
	endfunction

	
endclass


