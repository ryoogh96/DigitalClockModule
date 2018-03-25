module Counter100_tb;

reg CLK;
reg RST;
wire [3:0] MSEC1ST;
wire [3:0] MSEC2ND;

Counter100
 U0 (
  .CLK(CLK),
  .RST(RST),
  .MSEC1ST(MSEC1ST),
  .MSEC2ND(MSEC2ND));

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
