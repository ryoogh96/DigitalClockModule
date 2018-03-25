module TIME_tb;

reg CLK;
reg RST;
reg SW_F1;
reg SW_F2;
reg TIMESET_RUN;
wire TIM_AMPM;
wire [3:0] TIM_HOUR;
wire [2:0] TIM_MINHIGH;
wire [3:0] TIM_MINLOW;
wire [2:0] TIM_SECHIGH;
wire [3:0] TIM_SECLOW;

TIME
 U0 (
  .CLK(CLK),
  .RST(RST),
  .SW_F1(SW_F1),
  .SW_F2(SW_F2),
  .TIMESET_RUN(TIMESET_RUN),
  .TIM_AMPM(TIM_AMPM),
  .TIM_HOUR(TIM_HOUR),
  .TIM_MINHIGH(TIM_MINHIGH),
  .TIM_MINLOW(TIM_MINLOW),
  .TIM_SECHIGH(TIM_SECHIGH),
  .TIM_SECLOW(TIM_SECLOW));

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
    #600 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
    #500 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
    #600 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
  end

  initial
  begin
    SW_F2 = 1'b0;
    #800 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
    #100 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
    #300 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
    #100 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
    #400 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
    #100 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
  end

  initial
  begin
    TIMESET_RUN = 1'b0;
    #500 TIMESET_RUN = 1'b1;
  end

endmodule
