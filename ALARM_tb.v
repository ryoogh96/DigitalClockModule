module ALARM_tb;

reg AMPM;
reg [3:0] HOUR;
reg [2:0] MINHIGH;
reg [3:0] MINLOW;
reg RST;
reg CLK;
reg SW_F1;
reg SW_F2;
reg ALARMSET_RUN;
wire ALM_AMPM;
wire [3:0] ALM_HOUR;
wire [2:0] ALM_MINHIGH;
wire [3:0] ALM_MINLOW;
wire BEEP;

ALARM
 U0 (
  .AMPM(AMPM),
  .HOUR(HOUR),
  .MINHIGH(MINHIGH),
  .MINLOW(MINLOW),
  .RST(RST),
  .CLK(CLK),
  .SW_F1(SW_F1),
  .SW_F2(SW_F2),
  .ALARMSET_RUN(ALARMSET_RUN),
  .ALM_AMPM(ALM_AMPM),
  .ALM_HOUR(ALM_HOUR),
  .ALM_MINHIGH(ALM_MINHIGH),
  .ALM_MINLOW(ALM_MINLOW),
  .BEEP(BEEP));

  initial
  begin
    AMPM = 1'b0;
  end

  initial
  begin
    HOUR = 4'b0001;
  end

  initial
  begin
    MINHIGH = 3'b000;
  end

  initial
  begin
    MINLOW = 4'b0001;
    #1000 MINLOW = 4'b0010;
  end

  initial
  begin
    RST = 1'b0;
    #100 RST = 1'b1;
    #100 RST = 1'b0;
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
    SW_F1 = 1'b0;
    #500 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
    #500 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
    #400 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
    #700 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
  end

  initial
  begin
    SW_F2 = 1'b0;
    #700 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
    #500 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
    #400 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
    #200 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
  end

  initial
  begin
    ALARMSET_RUN = 1'b0;
    #300 ALARMSET_RUN = 1'b1;
    #2600 ALARMSET_RUN = 1'b0;
  end

endmodule
