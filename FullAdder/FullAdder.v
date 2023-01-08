module XOR(
input  A,
input  B,
output reg ans
);
    initial begin
     ans = 0;
    end
    always @(*)begin
       ans = ((A&(~B)) | ((B)&(~A)));
    end
endmodule
module FullAdder(
input reg A,
input reg B,
input reg Carry_in,
output Sum,
output Carry_out,
);
    reg a;
    reg b;
    initial begin
        Sum =0;
        Carry_out=0;
    end
    always @(*)begin
        a=A;
        b=B;
        #10
        //
        Sum = x.ans();
        a = Sum;
        b=Carry_in
        #10
        Sum =x.ans();
        //
        a=A;
        b=B;
        #10
        Carry_out=((x.ans()&Carry_in)|(A&B));
        //
    end
    XOR x(.A(a),B(b),.ans());
endmodule    