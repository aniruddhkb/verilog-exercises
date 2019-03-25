module test_bench();
	reg clock, reset;
	wire out0, out1, out2, out3;
	initial clock = 0;
	initial reset = 0;
	four_bit_counter main(out0, out1, out2, out3, clock, reset);
	always clock = #10 ~clock;
	initial begin
		$dumpfile("test_four_bit_counter.vcd");
		$dumpvars;
		reset = 1;
		reset = #10 0;
	end
endmodule
