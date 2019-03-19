`timescale 10ns/1ps

module test_xor();
	reg a, b;
	wire out;
	xor_gate dut(out, a, b);

	initial begin
	$dumpfile("test.vcd");
	$dumpvars(0, test_xor);

	a = 0;
	b = 0;
	#10;
	a = 1;
	b = 0;
	#10;
	a = 0;
	b = 1;
	#10;
	a = 1;
	b = 1;
	#10;
	end
endmodule
