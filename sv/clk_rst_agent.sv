//////////////////////////////////////////////////////
// Copyright (c) 2025 Neil Valin. All Rights Reserved.
//
//
//////////////////////////////////////////////////////
`ifndef __clk_rst_agent_sv__
`define __clk_rst_agent_sv__

class clk_rst_agent extends uvm_agent;

	clk_rst_cfg       cfg;
	clk_rst_driver    driver;
	clk_rst_sequencer sequencer;
	clk_rst_monitor   mon;

	`uvm_component_utils(clk_rst_agent)

	function new(string name="clk_rst_agent", uvm_component parent = null);
		super.new(name, parent);
	endfunction

	function void build_phase(uvm_phase phase);
	    super.build_phase();

		cfg = clk_rst_cfg::type_id::create("cfg", this);
		mon = clk_rst_monitor::type_id::create("mon", this);
		mon.cfg = cfg;
		if (get_is_active() == UVM_ACTIVE) begin
			driver = clk_rst_driver::type_id::create("driver", this);
			driver.cfg = cfg;
			sequencer = clk_rst_sequencer::type_id::create("sequencer", this);
		end
	endfunction : build_phase

	function void connect_phase(uvm_phase phase);
		driver.seq_item_port.connect(sequencer.seq_item_export);
	endfunction : connect_phase
endclass
`endif
