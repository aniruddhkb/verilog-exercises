`timescale 10ns/1ps

module test_bench();
	reg clock;
	wire out;
	initial clock = 0;
	toggle_flipflop dut(out, clock);
	always #10 clock = ~clock;
	initial begin
		$dumpfile("test_toggle_flipflop.vcd");
		$dumpvars;
	end
endmodule
