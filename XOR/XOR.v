module XOR(
input  A,
input  B,
output reg ans
);
    always @(*)begin
      //pmos
       #5
       if (((A&&(~B))||((B)&&(~A)))==1)begin
       ans = 1;
       end
      //nmos  
        #3
        if ((((~A)||B)&&((~B)||A))==1)begin
        ans = 0;
        end
    end    
endmodule