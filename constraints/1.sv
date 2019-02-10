
//write a system verilog code for random variable data of type bit [7:0] 0 to 100

class transaction;
randc bit [7:0] a;

constraint data_type{ a>0 ;
                    a<100;}
endclass

module tb;
transaction tr;

initial begin
repeat(10) begin
    tr= new();
     tr.randomize();
    $display("random number : %0d",tr.a);
    end
end
endmodule

