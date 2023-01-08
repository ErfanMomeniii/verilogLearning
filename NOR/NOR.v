module NOR(
input  A,
input  B,
output reg ans
);
    initial begin
     ans = 0;
    end
    always @(*)
       ans = (((~A)&(~B)));
endmodule