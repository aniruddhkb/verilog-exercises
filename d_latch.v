module d_latch(q, qBar, d, clock);
input d, clock;
output q, qBar;
wire dBar, s, r;

not not1(dBar, d);
and and1(s, clock, d);
and and2(r, clock, dBar);

sr_latch main(q, qBar, s, r);
endmodule

