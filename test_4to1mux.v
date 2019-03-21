`timescale 1ns/1ps

module testbench();
	reg clock, reset;
	wire in0, in1, in2, in3, in4, ctrl0, ctrl1;
	initial clock = 0;
	initial reset = 0;
	always #10 clock = ~clock;
	r_6_bit_counter counter(in0, in1, in2, in3, ctrl0, ctrl1, clock, reset);
	mux4 dut(out, in0, in1, in2, in3, ctrl0, ctrl1);
	initial begin
		$dumpfile("test_4to1mux.vcd");
		$dumpvars;
		reset = 1;
		#10;
		reset = 0;
	end
endmodule
