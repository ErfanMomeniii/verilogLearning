module TestBenchNOR(
);
    reg a,b;
    reg has_problem=0;
    initial begin
    
        a=0;
        b=0;
        #100
        if (x.ans !==1)begin
            has_problem=1;
            $display("have problem on calc 0 0");
            end
       
        a=1;
        b=0;
        #100
        if (x.ans !==0)begin
            has_problem=1;
            $display("have problem on calc 1 0");
            end
       
        a=0;
        b=1;
        #100
        if (x.ans !==0)begin
            has_problem=1;
            $display("have problem on calc 0 1");
            end
            
        a=1;
        b=1;
        #100
        if (x.ans !==0)begin
            has_problem=1;
            $display("have problem on calc 1 1");
            end
            
        if (has_problem === 0)
            $display("everything is ok");  
            
    end
    
    NOR x(.A(a),.B(b),.ans());
endmodule