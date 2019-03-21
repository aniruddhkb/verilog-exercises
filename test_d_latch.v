`timescale 10ns/1ps

module test_bench();
	reg d, clock;
	wire q, qBar;
	d_latch dut(q, qBar, d, clock);
	initial clock = 0;
	initial begin
		$dumpfile("test_d_latch.vcd");
		$dumpvars;
		forever #10 clock = ~clock;
	end
	initial begin
		d = 0;
		#10;
		d = 1;
		#5;
		d = 0;
		#5;
		d = 1;
		#5;
		d = 0;
		#3;
		d = 1;
		#4;
		d= 0;
		#3;
		d = 1;
		#3;
		d = 0;
		#4;
		d = 1;
		#10;
		d = 0;
		#5;
		d = 1;
		#10;
		d = 1;
		#5;
		d = 0;
		#5;
		d = 1;
		#5;
		d = 0;
		#3;
		d = 1;
		#4;
		d= 0;
		#3;
		d = 1;
		#3;
		d = 0;
		#4;
		d = 1;
		#10;
		d = 0;
		#5;
		d = 1;

	end
	endmodule
