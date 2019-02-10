
//temp//
`timescale 1ns/1ps;
class temp;
rand real a;
constraint temp_t{soft a >0;}
endclass

module tb;
temp te;
initial begin
repeat(10) begin
    te = new();
    te.randomize() with {a<100;};
    $display("temp in cel %0f^c ", te.a);
    end
    end
endmodule
