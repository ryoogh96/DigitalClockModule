module StwControl_tb;

reg SW_F1;
reg CLK;
reg RST;
reg SW_F2;
wire STW_ON;
wire STW_RST_N;

StwControl
 U0 (
  .SW_F1(SW_F1),
  .CLK(CLK),
  .RST(RST),
  .SW_F2(SW_F2),
  .STW_ON(STW_ON),
  .STW_RST_N(STW_RST_N));

  initial
  begin
    SW_F1 = 1'b0;
    #200 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
    #400 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
    #200 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
    #500 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
    #600 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
    #200 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
  end

  initial
    CLK = 1'b0;

  always
  begin : GenCLK
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
  end

  initial
  begin
    RST = 1'b0;
    #100 RST = 1'b1;
    #100 RST = 1'b0;
  end

  initial
  begin
    SW_F2 = 1'b0;
    #1300 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
    #600 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
    #800 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
  end

endmodule
