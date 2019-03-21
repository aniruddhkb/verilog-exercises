module mux4(out, in0, in1, in2, in3, ctrl0, ctrl1);
	output out;
	reg out;
	input in0, in1, in2, in3, ctrl0, ctrl1;
	always @ (in0, in1, in2, in3, ctrl0, ctrl1)
	begin
	case({ctrl1, ctrl0})
		2'b00: out = in0;
		2'b01: out = in1;
		2'b10: out = in2;
		2'b11: out = in3;
			
	endcase
end
endmodule
