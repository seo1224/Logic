module tb2  ;
  
reg     in0   ;
reg     in1   ;
reg     in2 	 ;
reg     in3   ;
reg     [1:0]sel   ;

wire    out1  ;

wire    out2  ;

wire    out3  ;


//4bit_inst
mux4to1_inst dut_1(         .out  (out1) ,
                            .in0  (in0)  ,
                            .in1  (in1)  , 
                            .in2  (in2)  ,
                            .in3  (in3)  ,
                            .sel  (sel)) ;
                
mux4to1_if dut_2  (         .out  (out2) ,
                            .in0  (in0)  ,
                            .in1  (in1)  , 
                            .in2  (in2)  ,
                            .in3  (in3)  ,
                            .sel  (sel)) ;
                            
mux4to1_case dut_3(         .out  (out3) ,
                            .in0  (in0)  ,
                            .in1  (in1)  , 
                            .in2  (in2)  ,
                            .in3  (in3)  ,
                            .sel  (sel)) ;
                            
initial begin
#(50) {sel[0], sel[1], in3, in2, in1, in0} = 6'b000000; #(50) $display("sel[0]:%b, sel[1]:%b, in3:%b, in2:%b, in1:%b, in0:%b - out1:%b, out2:%b, out3:%b", sel[0],sel[1], in3, in2, in1, in0, out1, out2, out3);
#(50) {sel[0], sel[1], in3, in2, in1, in0} = 6'b101010; #(50) $display("sel[0]:%b, sel[1]:%b, in3:%b, in2:%b, in1:%b, in0:%b - out1:%b, out2:%b, out3:%b", sel[0],sel[1], in3, in2, in1, in0, out1, out2, out3);
#(50) {sel[0], sel[1], in3, in2, in1, in0} = 6'b000111; #(50) $display("sel[0]:%b, sel[1]:%b, in3:%b, in2:%b, in1:%b, in0:%b - out1:%b, out2:%b, out3:%b", sel[0],sel[1], in3, in2, in1, in0, out1, out2, out3);
#(50) {sel[0], sel[1], in3, in2, in1, in0} = 6'b010000; #(50) $display("sel[0]:%b, sel[1]:%b, in3:%b, in2:%b, in1:%b, in0:%b - out1:%b, out2:%b, out3:%b", sel[0],sel[1], in3, in2, in1, in0, out1, out2, out3);
#(50) {sel[0], sel[1], in3, in2, in1, in0} = 6'b000011; #(50) $display("sel[0]:%b, sel[1]:%b, in3:%b, in2:%b, in1:%b, in0:%b - out1:%b, out2:%b, out3:%b", sel[0],sel[1], in3, in2, in1, in0, out1, out2, out3);
#(50) {sel[0], sel[1], in3, in2, in1, in0} = 6'b000101; #(50) $display("sel[0]:%b, sel[1]:%b, in3:%b, in2:%b, in1:%b, in0:%b - out1:%b, out2:%b, out3:%b", sel[0],sel[1], in3, in2, in1, in0, out1, out2, out3);
#(50) {sel[0], sel[1], in3, in2, in1, in0} = 6'b111111; #(50) $display("sel[0]:%b, sel[1]:%b, in3:%b, in2:%b, in1:%b, in0:%b - out1:%b, out2:%b, out3:%b", sel[0],sel[1], in3, in2, in1, in0, out1, out2, out3);
#(50) {sel[0], sel[1], in3, in2, in1, in0} = 6'b011110; #(50) $display("sel[0]:%b, sel[1]:%b, in3:%b, in2:%b, in1:%b, in0:%b - out1:%b, out2:%b, out3:%b", sel[0],sel[1], in3, in2, in1, in0, out1, out2, out3);
$finish;
end
endmodule
      


                                                      
                      
                            



