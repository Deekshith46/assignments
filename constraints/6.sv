
class transaction;
randc byte count;
constraint a_range{ 
                    (count >=0 && count <50) || (count >=100 && count <150);}

covergroup a_cg;
a: coverpoint count{
        bins a= {[0:50]};
}
b: coverpoint count{
        bins b= {[100:150]};
}
endgroup

function new();
a_cg = new();
endfunction

endclass

module tb;
transaction tr;

initial begin
repeat(10) begin
tr = new();
//ad = new();
tr.randomize();
tr.a_cg.sample();
$display("count = %0d",tr.count);
end
end
endmodule
