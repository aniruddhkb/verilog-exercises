module four_bit_counter(out0, out1, out2, out3, clock, reset);
	input clock, reset;
	output out0, out1, out2, out3;
	single_counter count0(out0, clock, reset);
	single_counter count1(out1, out0, reset);
	single_counter count2(out2, out1, reset);
	single_counter count3(out3, out2, reset);
endmodule
