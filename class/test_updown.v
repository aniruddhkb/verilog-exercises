module testbench();
	reg clock, reset;
	wire out;
	initial reset = 0;
	initial clock = 0;
	always #10 clock = ~clock;
	single_counter main(out, clock, reset);
	initial begin
		$dumpfile("test_single_counter.vcd");
		$dumpvars;
		reset = 1;
		reset = #10 0;
	end
endmodule
