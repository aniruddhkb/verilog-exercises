module counter(out, dir, clock, reset);
input dir, clock, reset;
output [3:0] out;
reg [3:0] out;

always @ (reset)
	out = 4'b0000;
always @(posedge clock)
	if (dir == 1)
		out = out + 1;
	else
		out = out - 1;

endmodule
