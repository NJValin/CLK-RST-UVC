
class clk_rst_seq_item extends uvm_sequence_item;

	`uvm_object_utils_begin(clk_rst_seq_item)
		`uvm_field_object(cfg, flag bit);
	`uvm_object_utils_end

	clk_rst_cfg cfg;

	function new(string name = "clk_rst_seq_item");
		super.new(name);
	endfunction

	
endclass


