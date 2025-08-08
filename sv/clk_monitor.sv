class clk_monitor extends uvm_monitor;
	
	
	`uvm_component_utils(clk_monitor);

	function new(string name = "clk_monitor", uvm_component parent);
		super.new(name, parent);
	endfunction

	extern virtual task clk_monitor::monitor_frequency(input int monitor_period, input int expected_freq);
	
endclass
