`timescale 10ns/1ps

module testbench();
	reg clock, reset;
	wire out, a, b, ctrl;
	r_3_bit_counter counter(a, b, ctrl, clock, reset);
	initial clock = 0;
	always #10 clock = ~clock;
	initial reset = 0;
	mux dut(out, a, b, ctrl);
	initial begin
		$dumpfile("test_2to1mux.vcd");
		$dumpvars;
		reset = 1;
		#10;
		reset = 0;
	end
endmodule
