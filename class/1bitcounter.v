module single_counter(out, clock, reset);
input clock, reset;
output out;
reg out;
always @(reset)
	if(reset == 1) out = 0;

always @(posedge clock)
	if(reset == 0) out = ~out;
endmodule
