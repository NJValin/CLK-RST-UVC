class clk_rst_cfg extends uvm_object;
	
	uvm_active_passive_enum is_active;
	
	// --------------------------------- Clock variables ---------------------------------//
	string           clk_name;
	bit              clk_enable          = 1;    // Determines if the clock will toggle or not
	real             duty_cycle          = 0.5;  // percentage of the period that the clock is high range of 0-1
	real             ffo                 = 0;    // [ppm] TODO implement. Fractional frequency offset
	real             glitch_prob         = 0.0;  // TODO implement. randomly insert a glitch in the clock (for a tiny duration clk=z or clk=~clk
	int              time_to_run         = -1;   // [ns] amount of time the clock will toggle.
	int unsigned     num_of_cycles       = -1;   // Number of clock cycles the clock should run
	bit              clk_is_differential = 1'b0; // outputs two outputs clk and clkb (clkb = ~clk)
	clk_state_t      clk_state           = CLK_STOP;
	int unsigned     expected_frequency;         // Only valid in passive mode

	rand int unsigned clk_freq;   // [Hz] range is 4.294967295 GHz - 0 Hz
	
	
	// --------------------------------- Reset variables ---------------------------------//
	bit              rst_enable          = 1;    // Enables the rst to toggle
	time             rst_cycle_duration  = 10;   // Num of cycle long the reset signal is held low/high for
	time             rst_delay           = 0;    // Time after 0s the rst triggers
	bit              rst_polarity        = 1;    // Active high (1) or low (0)
	
	// enable all field operations: copy, compare, print, record, and pack
	`uvm_object_utils_begin(clk_rst_cfg)
		`uvm_info
		`uvm_field_int(clk_enable, UVM_ALL_ON)
		`uvm_field_int(clk_freq, UVM_ALL_ON)
		`uvm_field_int(ffo, UVM_ALL_ON)
		`uvm_field_real(glitch_prob, UVM_ALL_ON)
		`uvm_field_int(duration, UVM_ALL_ON)
		`uvm_field_string(clk_name, UVM_ALL_ON)
	`uvm_object_utils_end

	function new(string name = "clk_rst_cfg");
		super.new(name);
	endfunction

	function string convert2string();
		string s = super.convert2string();
		$sformat(s, "%s", s);
		$sformat(s, "%s\n===================================", s);
		$sformat(s, "%s\n|       Clock Configuration       |", s);
		$sformat(s, "%s\n-----------------------------------", s);
		$sformat(s, "%s\n| Clock enabled   : %0d", s, clk_enable);
		$sformat(s, "%s\n-----------------------------------", s);
		$sformat(s, "%s\n| Clock Frequency : %0d", s, clk_freq);
		$sformat(s, "%s\n===================================", s);
		$sformat(s, "%s\n", s);
		$sformat(s, "%s\n===================================", s);
		$sformat(s, "%s\n|       Reset Configuration       |", s);
		$sformat(s, "%s\n-----------------------------------", s);
		$sformat(s, "%s\n| Reset Duration : %0d ns", s, duration);
		$sformat(s, "%s\n-----------------------------------", s);
		$sformat(s, "%s\n| Reset Polarity : %0d", s, polarity);
		$sformat(s, "%s\n===================================", s);
	endfunction

	// --------------------------------- Assertions ---------------------------------//
	assert (1/(real'(clk_freq)) >= 10**$timeprecision) else `uvm_fatal("clk_rst_cfg", "Clock period is smaller than the simulation time precision");
	
	assert (duty_cycle inside {[0:1]})  else `uvm_fatal("clk_rst_cfg", "Duty cycle must be in the range 0 to 1");
			
	assert (glitch_prob inside {[0:1]}) else `uvm_fatal("clk_rst_cfg", "Glitch probability must be in range 0 to 1");
	
	assert 
endclass
