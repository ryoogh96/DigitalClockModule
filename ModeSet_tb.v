module ModeSet_tb;

reg SW_MODE;
reg CLK;
reg RST;
wire ALARMSET_RUN;
wire STOPWATCH_RUN;
wire TIMESET_RUN;

ModeSet
 U0 (
  .SW_MODE(SW_MODE),
  .CLK(CLK),
  .RST(RST),
  .ALARMSET_RUN(ALARMSET_RUN),
  .STOPWATCH_RUN(STOPWATCH_RUN),
  .TIMESET_RUN(TIMESET_RUN));

  initial
  begin
    SW_MODE = 1'b0;
    #200 SW_MODE = 1'b1;
    #600 SW_MODE = 1'b0;
    #200 SW_MODE = 1'b1;
    #100 SW_MODE = 1'b0;
    #200 SW_MODE = 1'b1;
    #100 SW_MODE = 1'b0;
    #200 SW_MODE = 1'b1;
    #100 SW_MODE = 1'b0;
    #200 SW_MODE = 1'b1;
    #100 SW_MODE = 1'b0;
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
    RST = 1'b1;
    #100 RST = 1'b0;
  end

endmodule
