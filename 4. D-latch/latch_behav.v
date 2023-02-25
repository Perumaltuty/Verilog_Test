module latch_behav(en, d, q);
  input en, d;
  output q;
  reg q;

  always @(en, d) begin
    if (en) begin
      q <= d;
    end
  end

endmodule
