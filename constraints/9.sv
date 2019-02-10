class overlap;
rand byte x;
//logic a;
//randc byte b;

constraint a_q{(x<0) -> (x>-9 && x<= -1);
                (x>=0) -> (x>100);}
endclass

module tb;
overlap ove;

    initial begin
    repeat(10)begin
    ove = new();
    ove.randomize();
    $display("rand x = %0d",ove.x);
    end
    end
endmodule
