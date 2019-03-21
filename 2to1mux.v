module mux(out, a, b, ctrl);
	output out;
	input a, b, ctrl;
	wire ctrlBar, w1, w2;
	not not1(ctrlBar, ctrl);
	and and1(w1, ctrlBar, a);
	and and2(w2, ctrl, b);
	or or1(out, w1, w2);
endmodule
