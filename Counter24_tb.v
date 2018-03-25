module Counter24_tb;

reg CLK;
reg RST;
wire AMPM;
wire [3:0] q;

Counter24
 U0 (
  .CLK(CLK),
  .RST(RST),
  .AMPM(AMPM),
  .q(q));

  initial
    CLK = 1'b0;

  always
  begin : GenCLK
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
  end

  initial
  begin
    RST = 1'b1;
    #100 RST = 1'b0;
  end

endmodule
