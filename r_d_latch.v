module r_d_latch(out, d, clock, reset);
	output out;
	input d, clock, reset;
	wire dBar, preR, preS, qBar;
	reg reset1, set0;
	initial reset1 = 1;
       	initial	set0 = 0;
	not not1(dBar, d);
	and and1(preR, dBar, clock);
	and and2(preS, d, clock);
	mux mux1(r, preR,reset1, reset);
	mux mux2(s, preS, set0, reset);
	sr_latch main(out,qBar , s, r);
endmodule
