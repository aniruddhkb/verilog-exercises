module r_6_bit_counter(out0, out1, out2, out3, out4, out5, clock, reset);
	input clock, reset;
	output out0, out1, out2, out3, out4, out5;
	r_t_flipflop main0(out0, clock, reset);
	r_t_flipflop main1(out1, out0, reset);
	r_t_flipflop main2(out2, out1, reset);
	r_t_flipflop main3(out3, out2, reset);
	r_t_flipflop main4(out4, out3, reset);
	r_t_flipflop main5(out5, out4, reset);

endmodule
