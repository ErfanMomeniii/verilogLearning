module FullAdderWithAssign(
input A,
input B,
input Carry_in,
output Sum,
output Carry_out
);
    assign Sum = {((A^B)^Carry_in)};
    assign Carry_out = (((A^B)&Carry_in)|(A&B));
endmodule