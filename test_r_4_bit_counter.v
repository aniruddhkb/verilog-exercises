`timescale 1ns/1ps

module test_bench();
	reg clock, reset;
	wire out0, out1, out2, out3;
	initial reset = 0;
	initial clock = 0;
	always #10 clock = ~clock;
	r_4_bit_counter dut(out0, out1, out2, out3, clock, reset);
	initial begin
		$dumpfile("test_r_4_bit_counter.vcd");
		$dumpvars;
		#10;
		reset = 1;
		#10;
		reset = 0;
		#170;
		reset = 1;
		#10;
		reset = 0;
		#10;
	end
endmodule
