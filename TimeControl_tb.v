module TimeControl_tb;

reg CLK;
reg RST;
reg SW_F1;
reg SW_F2;
wire TIME_HOUR;
wire TIME_MIN;
wire TIME_SEC;

TimeControl
 U0 (
  .CLK(CLK),
  .RST(RST),
  .SW_F1(SW_F1),
  .SW_F2(SW_F2),
  .TIME_HOUR(TIME_HOUR),
  .TIME_MIN(TIME_MIN),
  .TIME_SEC(TIME_SEC));

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

  initial
  begin
    SW_F1 = 1'b0;
    #300 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
    #1000 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
    #900 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
    #700 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
  end

  initial
  begin
    SW_F2 = 1'b0;
    #600 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
    #100 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
    #100 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
    #500 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
    #200 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
    #100 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
    #500 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
    #100 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
  end

endmodule
