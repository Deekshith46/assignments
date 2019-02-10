
class memory;
rand bit[15:0] addr;
rand bit[7:0] data;

constraint addr_c{ addr inside{[16'h000 : 16'h0fff]};
    }


constraint data_c{ data inside{[8'h00 : 8'h0ff]};
    }


endclass

module tb;
memory mem;
    initial begin
    repeat(10) begin
    mem =new();
    mem.randomize();
    $display("ADDR = 0*%4h , Data = 0*%2h", mem.addr , mem.data);
    end

    end
endmodule
