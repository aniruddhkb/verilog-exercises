module sr_latch(q, qbar, s, r);

input r, s;
output q, qbar;
nor nor1(q, r, qbar);
nor nor2(qbar, s, q);

endmodule
