module xor_gate(out, a, b);

input a, b;
output out;

wire aBar, bBar, abBar, aBarb;

not nota(aBar, a);
not notb(bBar, b);
and and1(abBar, a, bBar);
and and2(aBarb, aBar, b);
or or1(out, aBarb, abBar);

endmodule

