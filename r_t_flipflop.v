module r_t_flipflop(out, clock, reset);
	output out;
	input reset, clock;
	wire outBar;
	not not1(outBar, out);
	r_d_flipflop main(out, outBar, clock, reset);
endmodule
