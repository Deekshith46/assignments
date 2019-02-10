
//array constraint type int with a size of 10 all thr elements in the array are unique

class transaction;
rand bit[2:0] a[5];

constraint data_t{unique {a};}
endclass

module tb;
transaction tr;
    initial begin
    //repeat(4)begin
    tr = new();
   tr.randomize();
    $display("arry = %0p", tr.a);
    //end
    end
endmodule

