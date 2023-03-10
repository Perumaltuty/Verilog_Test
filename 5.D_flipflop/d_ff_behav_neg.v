`timescale 1ns / 1ps
module d_flip_flop(clk, d, q);
  input clk, d;
  output q;
  reg q;

  always @(negedge clk) begin
    q <= d;
  end

endmodule
