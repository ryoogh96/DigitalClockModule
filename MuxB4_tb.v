module MuxB4_tb;

reg ALARMSET_RUN;
reg [3:0] ALM;
reg STOPWATCH_RUN;
reg [3:0] STW;
reg [3:0] TIM;
wire [3:0] Z;

MuxB4
 U0 (
  .ALARMSET_RUN(ALARMSET_RUN),
  .ALM(ALM),
  .STOPWATCH_RUN(STOPWATCH_RUN),
  .STW(STW),
  .TIM(TIM),
  .Z(Z));

  initial
  begin
    ALARMSET_RUN = 1'b1;
    #300 ALARMSET_RUN = 1'b0;
    #600 ALARMSET_RUN = 1'b1;
    #300 ALARMSET_RUN = 1'b0;
  end

  initial
  begin
    ALM = 4'b0010;
    #300 ALM = 4'b0100;
    #300 ALM = 4'b0010;
    #300 ALM = 4'b1111;
    #300 ALM = 4'b0011;
    #300 ALM = 4'b0000;
  end

  initial
  begin
    STOPWATCH_RUN = 1'b0;
    #300 STOPWATCH_RUN = 1'b1;
    #300 STOPWATCH_RUN = 1'b0;
    #600 STOPWATCH_RUN = 1'b1;
    #300 STOPWATCH_RUN = 1'b0;
  end

  initial
  begin
    STW = 4'b1011;
    #300 STW = 4'b1100;
    #300 STW = 4'b0001;
    #300 STW = 4'b1011;
    #300 STW = 4'b1101;
    #300 STW = 4'b1010;
    #300 STW = 4'b0000;
  end

  initial
  begin
    TIM = 4'b0100;
    #300 TIM = 4'b1000;
    #300 TIM = 4'b0000;
    #300 TIM = 4'b1001;
    #300 TIM = 4'b0101;
    #300 TIM = 4'b1100;
    #300 TIM = 4'b0000;
  end

endmodule
