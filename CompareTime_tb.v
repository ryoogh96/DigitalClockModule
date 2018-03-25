module CompareTime_tb;

reg AMPM1;
reg AMPM2;
reg [3:0] HOUR1;
reg [3:0] HOUR2;
reg [2:0] MINHIGH1;
reg [2:0] MINHIGH2;
reg [3:0] MINLOW1;
reg [3:0] MINLOW2;
wire SAME;

CompareTime
 U0 (
  .AMPM1(AMPM1),
  .AMPM2(AMPM2),
  .HOUR1(HOUR1),
  .HOUR2(HOUR2),
  .MINHIGH1(MINHIGH1),
  .MINHIGH2(MINHIGH2),
  .MINLOW1(MINLOW1),
  .MINLOW2(MINLOW2),
  .SAME(SAME));

  initial
  begin
    AMPM1 = 1'b0;
    #600 AMPM1 = 1'b1;
    #1200 AMPM1 = 1'b0;
  end

  initial
  begin
    AMPM2 = 1'b0;
    #600 AMPM2 = 1'b1;
    #1200 AMPM2 = 1'b0;
    #300 AMPM2 = 1'b1;
  end

  initial
  begin
    HOUR1 = 4'b0100;
    #300 HOUR1 = 4'b1000;
    #300 HOUR1 = 4'b0000;
    #300 HOUR1 = 4'b1001;
    #300 HOUR1 = 4'b1101;
    #300 HOUR1 = 4'b1100;
    #300 HOUR1 = 4'b0001;
    #700 HOUR1 = 4'b0000;
  end

  initial
  begin
    HOUR2 = 4'b1011;
    #300 HOUR2 = 4'b1100;
    #300 HOUR2 = 4'b0001;
    #300 HOUR2 = 4'b1011;
    #300 HOUR2 = 4'b1101;
    #300 HOUR2 = 4'b1010;
    #300 HOUR2 = 4'b0100;
    #300 HOUR2 = 4'b1000;
    #400 HOUR2 = 4'b0000;
  end

  initial
  begin
    MINHIGH1 = 3'b001;
    #600 MINHIGH1 = 3'b000;
    #300 MINHIGH1 = 3'b010;
    #300 MINHIGH1 = 3'b111;
    #300 MINHIGH1 = 3'b100;
    #300 MINHIGH1 = 3'b110;
    #300 MINHIGH1 = 3'b000;
  end

  initial
  begin
    MINHIGH2 = 3'b001;
    #300 MINHIGH2 = 3'b101;
    #300 MINHIGH2 = 3'b100;
    #300 MINHIGH2 = 3'b101;
    #300 MINHIGH2 = 3'b111;
    #300 MINHIGH2 = 3'b001;
    #300 MINHIGH2 = 3'b100;
    #300 MINHIGH2 = 3'b111;
    #400 MINHIGH2 = 3'b000;
  end

  initial
  begin
    MINLOW1 = 4'b0011;
    #300 MINLOW1 = 4'b1111;
    #300 MINLOW1 = 4'b0010;
    #300 MINLOW1 = 4'b1010;
    #300 MINLOW1 = 4'b1000;
    #300 MINLOW1 = 4'b1110;
    #300 MINLOW1 = 4'b1010;
    #300 MINLOW1 = 4'b0001;
    #400 MINLOW1 = 4'b0000;
  end

  initial
  begin
    MINLOW2 = 4'b0010;
    #300 MINLOW2 = 4'b1111;
    #300 MINLOW2 = 4'b0001;
    #300 MINLOW2 = 4'b1011;
    #300 MINLOW2 = 4'b1000;
    #600 MINLOW2 = 4'b0000;
  end

endmodule
