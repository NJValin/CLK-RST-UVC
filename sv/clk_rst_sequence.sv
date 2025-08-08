
class clk_rst_sequence extends uvm_sequence #(clk_rst_seq_item);
	
	`uvm_object_utils_begin(clk_rst_sequence)
	`uvm_object_utils_end
	`uvm_declare_p_sequencer(clk_rst_sequencer)
	REQ req;

	function new(string name="clk_rst_sequence");
		super.new(name)
	endfunction
endclass

class clk_rst_start_clk_seq extends clk_rst_sequence;
	`uvm_object_utils(clk_rst_start_clk_seq)
	function new (string name = "clk_rst_sequence");
		super.new(name);
	endfunction

	virtual task body();
		`uvm_do_with(req, req.)
	endtask
endclass
