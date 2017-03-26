

module counter_tb();
  reg clk, rst, ld, upDown, d;
  wire [3:0] q;
   
  counter DUT (.rst(rst), .q(q), .d(d), .ld(ld), .upDown(upDown), .clk(clk));
  
  initial
  begin
    $monitor($time, " clk=%b, rst=%b, q=%b ,ld=%b, d=%b", rst, clk, q, ld, d);
    $dumpfile("dump.vcd");
    $dumpvars(0, DUT);
  end  
  
  always begin
    #5 clk = ~clk;
  end
  
  initial begin
    upDown = 1'b0;
    ld = 1'b0;
    clk = 1'b0; rst = 1'b1;
    #22 rst = 1'b0; 
    #12 rst = 1'b1;
    #12 upDown = 1'b1;
    #12 upDown = 1'b0;
    #12 upDown = 1'b0;
    #12 upDown = 1'b0;
    #12 upDown = 1'b1;
    #12 upDown = 1'b1;
    #12 upDown = 1'b1;
    #12 ld = 1'b1;
    
    
    #200    $finish;
  end
   
endmodule
