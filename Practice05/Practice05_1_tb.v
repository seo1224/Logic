module tb_bnb;
                  
wire    q_blk     ;
wire    q_nblk    ;

reg     d         ;
reg     clk       ;

initial         clk = 1'b0;
always  #(100)  clk = ~clk;

block    dut_0( .q  ( q_blk ),
                .d  ( d     ),
                .clk( clk   ));


nonblock dut_1( .q  ( q_nblk ),
                .d  ( d      ),
                .clk( clk    ));

initial begin

#(0)  {d} = 1'b0;
#(50) {d} = 1'b0;  #(50)  $display(" %b\t%b\t%b ",  d, q_blk, q_nblk);
#(50) {d} = 1'b1;  #(50)  $display(" %b\t%b\t%b ",  d, q_blk, q_nblk);
#(50) {d} = 1'b1;  #(50)  $display(" %b\t%b\t%b ",  d, q_blk, q_nblk);
$finish;
end

endmodule