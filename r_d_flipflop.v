module r_d_flipflop(out, in, clock, reset);
	input in, clock, reset;
	output out;
	wire clockBar, in2slave;
	not not1(clockBar, clock);
	r_d_latch master(in2slave, in, clockBar, reset);
	r_d_latch slave(out, in2slave, clock, reset);

endmodule

