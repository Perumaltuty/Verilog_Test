module d_latchs_tb;
  reg en, d;
  wire q;
  d_latch_with_enable DL(
    .en(en),
    .d(d),
    .q(q)
  );
  initial begin
    en = 0;
    d = 0;
    #10 en = 1;
    #10 d = 1;
    #10 en = 0;
    #10 d = 0;
    #10 en = 1;
    #10 d = 1;
    #10 $finish;
  end
  always @(q) begin
    $display("q = %b", q);
  end
endmodule
