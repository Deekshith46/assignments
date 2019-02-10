
////implication constraint//
class transaction;
randc bit a;
randc bit b;
bit mode;

constraint data_t{a -> b==0;}               

endclass

module tb;
transaction tr;
    initial begin
    repeat(3) begin
    tr =new();
    tr.randomize();
    $display("a = %0d , b = %0d" ,tr.a,tr.b);
    end
    end
endmodule
