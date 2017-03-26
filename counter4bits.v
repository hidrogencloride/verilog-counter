/*
Authors: Bryan Pesquera
Description: Up or Down counter design simulated 
using Icarus Verilog 0.10.0 11/23/14 on edaplayground.com
Date: Feb. 22, 2017.
*/

module counter(clk, rst, upDown, ld, q, d);
  output reg [3:0] q;	//output
  input [3:0] d;	//input
  input ld;	//data to load
  input clk, //clock
  		rst, //reset
  		upDown; // up/down control

  always @(posedge clk)
    begin
      if(rst) q <= 4'b0;
      else if(ld) q <= ld;
      else if(upDown) q <= q+1;
      else q <= q-1;
    end
endmodule
