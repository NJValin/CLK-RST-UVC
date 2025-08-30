task monitor_frequency(input time monitor_period, input int expected_freq);
	time start_time = $time;
	time positive_edges[$];
	`uvm_info("Monitor Frequency", $sformatf("\n*********************************************************************"), UVM_MEDIUM)
	`uvm_info("Monitor Frequency", $sformatf("Monitoring %s"), UVM_MEDIUM)
	
	do begin
		@(posedge vif.clk) begin
			positive_edges.push_back($time);
		end
	end while (($time-start_time)< monitor_period);
endtask

task clk_monitor::frequency_dump(input int monitor_period_us);
endtask
