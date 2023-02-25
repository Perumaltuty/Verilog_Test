`timescale 1ns / 1ps
module d_ff_behav(clk, d, q);
  input clk, d,reset;
  output q;
  reg q;

  always @(posedge clk or negedge reset) begin
    q <= d;
  end

endmodule
