
class clk_rst_agent extends uvm_agent;

	`uvm_component_utils(clk_rst_agent)

	function new(string name="clk_rst_agent", uvm_component parent = null);
		super.new(name, parent);
	endfunction
endclass
