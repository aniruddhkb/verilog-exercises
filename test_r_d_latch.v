`timescale 10ns/1ps

module test_bench();
	reg in, clock, reset;
	wire out;
	initial clock = 0;
        initial	reset = 0;
       	initial	in = 0;
	always #10 clock = ~clock;
	r_d_latch dut(out, in, clock, reset);
	initial begin
		$dumpfile("test_r_d_latch.vcd");
		$dumpvars;
		reset = 1;
		#10;
		reset = 0;
		in = 1;
		#5;
		in = 0;
		#5;
		in = 1;
		#5;
		reset = 1;
		#27;
		in = 0;
		#13;
		in = 1;
		#20;
		reset = 0;
		in = 1;
		#5;
		in = 0;
		#5;
		in = 1;
		#7;
		in = 0;
		#3;
		#10;
		in = 1;
		#5;
		in = 0;
		#5;
		in = 1;
		#7;
		in = 0;
		#3;
	end
endmodule 
