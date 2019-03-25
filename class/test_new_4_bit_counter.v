`timescale 1ns/1ps

module test_bench();
	reg dir, clock, reset;
	wire [3:0] out;
	initial clock = 0;
	initial reset = 0;
	initial dir = 0;
	always #10 clock = ~clock;
	counter main(out, dir, clock, reset);
	initial begin
		$dumpfile("new_test_4_bit_counter.vcd");
		$dumpvars;
		reset = 1;
		#10 reset = 0;
		#170 dir = 1;
		#340 dir = 0;
	end
	endmodule
