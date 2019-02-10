
class transaction;
rand bit a;
rand bit b;
constraint a_1{ a dist {0:=50 ,1:=50};} 
constraint b_1{ b dist {0:=50 ,1:=50};} 
endclass

module tb;
transaction tr;
    initial begin
    repeat(10) begin
    tr =new();
    tr.randomize();
    $display("a = %0d, b = %0d",tr.a ,tr.b);
    end
    end

endmodule
