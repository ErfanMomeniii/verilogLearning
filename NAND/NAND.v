module NAND(
input  A,
input  B,
output reg ans
);
    always @(*)begin
       //pmos
       #7
       if ((((~A)||(~B))) == 1) begin
       ans=1;
       end
       //nmos
       #5
       if ((((A)&&(B))) == 1) begin
       ans=0;
       end
    end   
endmodule