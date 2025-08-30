//////////////////////////////////////////////////////
// Copyright (c) 2025 Neil Valin. All Rights Reserved.
//
//////////////////////////////////////////////////////
`infdef __clk_rst_driver_sv__
`define __clk_rst_driver_sv__

class clk_rst_driver extends uvm_driver #(clk_rst_sequence);
	
	clk_rst_cfg        cfg;
	virtual clk_rst_if vif;
	
	`uvm_component_utils(clk_rst_driver);

	function new(string name = "clk_rst_driver", uvm_component parent);
		super.new(name, parent);
	endfunction

	task run_phase(uvm_phase phase);

	    
	endtask 

	
endclass
`endif
