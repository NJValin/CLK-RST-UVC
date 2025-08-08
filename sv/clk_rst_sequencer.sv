
class clk_rst_sequencer extends uvm_sequencer #(clk_rst_seq_item);
	
	
	`uvm_component_utils(clk_rst_sequencer);

	function new(string name = "clk_rst_sequencer", uvm_component parent);
		super.new(name, parent);

		uvm_config_db#(uvm_sequencer)::set(null, "", "clk_rst_sequencer", 0);
	endfunction

	
endclass
