`timescale 10ns/1ps

module test_bench();
	reg in, clock, reset;
	wire out;
	initial in = 0;
	initial clock = 0;
	initial reset = 0;
	always #10 clock = ~clock;
	r_d_flipflop dut(out, in, clock, reset);
	initial begin
		$dumpfile("test_d_flipflop.vcd");
		$dumpvars;
		#10;
		reset = 1;
		#5;
		reset = 0;
		in = 1;
		#10;
		in = 0;
		#10;
		in = 1;
		#15;
		in = 0;
		#15;
		in = 1;
		#5;
		reset = 1;
		#10;
		in = 0;
		#10;
		in = 1;
		#10;
		reset = 0;
		#20;
	end
endmodule
