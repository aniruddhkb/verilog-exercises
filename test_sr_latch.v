`timescale 10ns/1ps

module test_bench();
reg s, r;
wire q, qbar;
sr_latch my_sr_latch(q, qbar, s, r);
initial begin
	$dumpfile("test_sr_latch.vcd");
	$dumpvars(0, my_sr_latch);
	s = 1;
	r = 0;
	#10;
	s = 0;
	r = 0;
	#10;
	s = 0;
	r = 1;
	#10;
	s = 0;
	r = 0;
	#10;
end

endmodule
