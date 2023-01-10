module NOR(
input  A,
input  B,
output reg ans
);
    always @(*)begin
    //pmos
        #4    
       if (((~A)&&(~B))==1)begin
        ans=1;
       end
    //nmos   
       #6
       if (((A)||(B))==1)begin
        ans=0;
       end
    end   
endmodule