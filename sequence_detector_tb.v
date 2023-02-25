`timescale 1ns / 1ps
module sequence_decetor_110110_tb;
 reg din;
 reg clk;
 reg reset;
 wire dout;
 sequence_decetor_110110 tb (
  .din(din), 
  .clk(clk), 
  .reset(reset), 
  .dout(dout)
 );
 initial begin
 clk = 0;
 forever #5 clk = ~clk;
 end 
 initial begin
  din = 0;
  reset = 1;
  #30;
      reset = 0;
  #40;
  din = 1;
  #10;
  din = 1;
  #10;
  din = 0; 
  #20;
  din = 1; 
  #20;
  din = 1; 
  #20;
  din = 0;  
$finish;

 end
      
endmodule
