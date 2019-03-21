module d_flipflop(q, d, clock);
	input d, clock;
	output q;
	wire clockBar, q1, q1Bar, aBar;

	not not1(clockBar, clock);
	d_latch master(q1, q1Bar, d, clockBar);
	d_latch slave(q, qBar, q1, clock);
endmodule
