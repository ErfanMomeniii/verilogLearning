module TestBenchFullAdder(
);
    reg a,b,c;
    reg has_problem=0;
    initial begin
    
        a=0;
        b=0;
        c=0;
        #100
        if (fu.Sum!==0 || fu.Carry_out !==0)begin
            has_problem=1;
            $display("have problem on calc a=0 b=0 c=0");
            end
       
        a=1;
        b=0;
        c=0;
        #100
        if (fu.Sum !==1 || fu.Carry_out !==0)begin
            has_problem=1;
            $display("have problem on calc a=1 b=0 c=0");
            end
       
        a=0;
        b=1;
        c=0;
        #100
        if (fu.Sum !==1 || fu.Carry_out !==0)begin
            has_problem=1;
            $display("have problem on calc a=0 b=1 c=0");
            end
            
        a=1;
        b=1;
        c=0;
        #100
        if (fu.Sum !==0 || fu.Carry_out !==1)begin
            has_problem=1;
            $display("have problem on calc a=1 b=1 c=0");
            end
        
        a=0;
        b=0;
        c=1;
        #100
        if (fu.Sum!==1 || fu.Carry_out !==0)begin
            has_problem=1;
            $display("have problem on calc a=0 b=0 c=1");
            end
       
        a=1;
        b=0;
        c=1;
        #100
        if (fu.Sum !==0 || fu.Carry_out !==1)begin
            has_problem=1;
            $display("have problem on calc a=1 b=0 c=1");
            end
       
        a=0;
        b=1;
        c=1;
        #100
        if (fu.Sum !==0 || fu.Carry_out !==1)begin
            has_problem=1;
            $display("have problem on calc a=0 b=1 c=1");
            end
            
        a=1;
        b=1;
        c=1;
        #100
        if (fu.Sum !==1 || fu.Carry_out !==1)begin
            has_problem=1;
            $display("have problem on calc a=1 b=1 c=1");
            end    
        if (has_problem === 0)
            $display("everything is ok");  
            
    end
    
    FullAdder fu(.A(a),.B(b),.Carry_in(c),.Sum(),.Carry_out());
endmodule    