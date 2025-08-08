class clk_rst_driver extends uvm_driver #(clk_rst_sequence);
	
	
	`uvm_component_utils(clk_rst_driver);

	function new(string name = "clk_rst_driver", uvm_component parent);
		super.new(name, parent);
	endfunction

	task run_phase(uvm_phase phase);
	    
	endtask 

	
endclass
