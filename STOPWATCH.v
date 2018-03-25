module STOPWATCH(CLK,RST,STOPWATCH_RUN,SW_F1,SW_F2,MSEC1ST,MSEC2ND,SECLOW,MINHIGH,MINLOW,HOUR,SECHIGH,MSE00);

input CLK;
input RST;
input STOPWATCH_RUN;
input SW_F1;
input SW_F2;
output [3:0] MSEC1ST;
output [3:0] MSEC2ND;
output [3:0] SECLOW;
output [2:0] MINHIGH;
output [3:0] MINLOW;
output [3:0] HOUR;
output [2:0] SECHIGH;
output [3:0] MSE00;

wire  w0;
wire  w1;
wire  w3;
wire  w5;
wire [3:0] b22;
wire [3:0] b24;
wire  w24;
wire  w23;
wire [3:0] b26;
wire [2:0] b21;
wire  w27;
wire [2:0] b23;
wire  w20;
wire  w26;
wire  w11;
wire  w7;
wire [3:0] b17;
wire [3:0] b18;
wire  w29;
wire  w30;
wire  w25;
wire [3:0] b25;
wire  b18_3_w19;
wire  b18_2_w21;
wire  b18_1_w22;
wire  b18_0_w28;

assign w26 = CLK;
assign w23 = RST;
assign w3 = STOPWATCH_RUN;
assign w0 = SW_F1;
assign w1 = SW_F2;
assign MSEC1ST = b17;
assign MSEC2ND = b18;
assign SECLOW = b22;
assign MINHIGH = b23;
assign MINLOW = b24;
assign HOUR = b26;
assign SECHIGH = b21;
assign MSE00 = b25;

assign b18_3_w19 = {b18[3]};
assign b18_2_w21 = {b18[2]};
assign b18_1_w22 = {b18[1]};
assign b18_0_w28 = {b18[0]};

StwControl
     s0 (
      .SW_F1(w0),
      .SW_F2(w1),
      .CLK(w5),
      .RST(w23),
      .STW_ON(w7),
      .STW_RST_N(w25));

PNU_AND2
     s1 (
      .i1(w3),
      .o1(w5),
      .i2(w26));

counter60
     s6 (
      .CNT10(b24),
      .rst(w24),
      .clk(w27),
      .CNT6(b23),
      .CAR(w20));

counter60
     s5 (
      .CNT10(b22),
      .rst(w24),
      .CNT6(b21),
      .CAR(w27),
      .clk(w29));

PNU_AND2
     s2 (
      .i1(w26),
      .o1(w11),
      .i2(w7));

newcount1000
     s10 (
      .rst(w24),
      .clk(w11),
      .MIL010(b17),
      .MIL100(b18),
      .MIL001(b25));

PNU_AND4
     s7 (
      .i1(b18_3_w19),
      .i2(b18_2_w21),
      .i3(b18_1_w22),
      .i4(b18_0_w28),
      .o1(w29));

Counter24
     s8 (
      .RST(w24),
      .q(b26),
      .CLK(w20),
      .AMPM());

PNU_MUX2
     s9 (
      .o1(w24),
      .i2(w23),
      .i1(w30),
      .e1(w25));

PNU_ONE
     s11 (
      .o1(w30));

endmodule

