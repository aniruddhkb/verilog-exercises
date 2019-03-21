module r_3_bit_counter(out0, out1, out2, clock, reset);
	input clock, reset;
	output out0, out1, out2;
	r_t_flipflop main0(out0, clock, reset);
	r_t_flipflop main1(out1, out0, reset);
	r_t_flipflop main2(out2, out1, reset);
endmodule
