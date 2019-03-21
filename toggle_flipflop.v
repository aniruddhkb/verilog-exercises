module toggle_flipflop(out, clock);
	input clock;
	output out;
	wire d, outBar;
	reg reg1;
	initial reg1 = 0;
	d_flipflop main(out, d, clock);
	not not1(outBar, out);
	or or1(d, outBar, reg1);
endmodule

