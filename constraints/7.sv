class packet;
rand byte length;
rand byte type1;

constraint length_c{
                    length inside{[0:100]};}

constraint type1_c{
                    if(length <=20){
                    type1 dist {1:=70 , 2:=30};
                    }else{
                     type1 dist{1:=30 , 2:=70};       
                    }
                    }


endclass

module tb;
packet pkt;
    initial begin
    repeat(10) begin

    pkt = new();
    pkt.randomize();
    $display("packet --> length = %0d  type = %0d" , pkt.length,pkt.type1);
    end
    end
endmodule
