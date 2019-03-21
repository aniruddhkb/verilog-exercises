`timescale 10ns/1ps

module test_bench();
	reg clock, reset;
	initial clock = 0;
	initial reset = 0;
	r_t_flipflop dut(out, clock, reset);
	always #10 clock = ~clock;
	initial begin
		$dumpfile("test_r_t_flipflop.vcd");
		$dumpvars;
		reset = 1;
		#10;
		reset = 0;
	end
endmodule
