module DigitalClock_tb;

reg CLK;
reg RST;
reg SW_MODE;
reg SW_F1;
reg SW_F2;
wire AMPM;
wire BEEP;
wire [3:0] HOUR;
wire [3:0] MINHIGH;
wire [3:0] MINLOW;
wire [3:0] MSEC1ST;
wire [3:0] MSEC2ND;
wire [3:0] SECHIGH;
wire [3:0] SECLOW;

DigitalClock
 U0 (
  .CLK(CLK),
  .RST(RST),
  .SW_MODE(SW_MODE),
  .SW_F1(SW_F1),
  .SW_F2(SW_F2),
  .AMPM(AMPM),
  .BEEP(BEEP),
  .HOUR(HOUR),
  .MINHIGH(MINHIGH),
  .MINLOW(MINLOW),
  .MSEC1ST(MSEC1ST),
  .MSEC2ND(MSEC2ND),
  .SECHIGH(SECHIGH),
  .SECLOW(SECLOW));

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
    SW_MODE = 1'b0;
    #100 SW_MODE = 1'b1;
    #100 SW_MODE = 1'b0;
    #2200 SW_MODE = 1'b1;
    #100 SW_MODE = 1'b0;
    #2500 SW_MODE = 1'b1;
    #100 SW_MODE = 1'b0;
    #2200 SW_MODE = 1'b1;
    #100 SW_MODE = 1'b0;
  end

  initial
  begin
    SW_F1 = 1'b0;
    #200 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
    #300 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
    #900 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
    #600 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
    #200 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
    #2400 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
    #200 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
    #800 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
    #800 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
  end

  initial
  begin
    SW_F2 = 1'b0;
    #400 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
    #300 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
    #100 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
    #100 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
    #100 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
    #300 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
    #100 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
    #100 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
    #800 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
    #2400 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
    #200 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
    #100 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
    #300 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
    #100 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
    #100 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
    #100 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
  end

endmodule
