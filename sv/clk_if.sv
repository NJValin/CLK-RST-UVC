//////////////////////////////////////////////////////
// Copyright (c) 2025 Neil Valin. All Rights Reserved.
//
//
//////////////////////////////////////////////////////
`ifndef __clk_if_sv__
`define __clk_if_sv__
`default_nettype none

interface clk_if (
		inout logic clk,
		inout logic clkb,
		output logic rst
	);

	assign rst = (cfg.rst_enable)?vif_rst:1'bz;

	clk_rst_cfg cfg;


	logic vif_clk;
	logic vif_rst;
	int reset_delay = cfg.rst_delay;
	int rst_cycles = cfg.rst_cycle_duration;

	always @(posedge drv_clk) begin
		if (reset_delay > 0) begin
			reset_delay--;
			vif_rst <= (cfg.rst_polarity)?1'b1:1'b0;
		end
		else begin
			if (rst_cycles > 0) begin
				vif_rst <= (cfg.rst_polarity)?1'b0:1'b1;
			end
			else begin
				vif_rst <= (cfg.rst_polarity)?1'b1:1'b0;
			end
		end
	end

	
endinterface
`endif
