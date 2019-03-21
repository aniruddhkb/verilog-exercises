`timescale 10ns/ 1ps

module test_bench();
	reg CLOCK;
	initial CLOCK = 0;
	initial begin
	$dumpfile("test_clock.vcd");
	$dumpvars;
	forever #10 CLOCK = ~CLOCK;
end

endmodule
