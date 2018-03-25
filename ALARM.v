module ALARM(CLK,RST,ALARMSET_RUN,SW_F1,SW_F2,AMPM,BEEP,ALM_AMPM,ALM_HOUR,ALM_MINHIGH,ALM_MINLOW,HOUR,MINHIGH,MINLOW);

input CLK;
input RST;
input ALARMSET_RUN;
input SW_F1;
input SW_F2;
input AMPM;
output BEEP;
output ALM_AMPM;
output [3:0] ALM_HOUR;
output [2:0] ALM_MINHIGH;
output [3:0] ALM_MINLOW;
input [3:0] HOUR;
input [2:0] MINHIGH;
input [3:0] MINLOW;

wire  w0;
wire [3:0] b1;
wire [2:0] b2;
wire [3:0] b3;
wire  w4;
wire  w5;
wire  w6;
wire  w7;
wire  w8;
wire  w9;
wire  w10;
wire  w11;
wire  w14;
wire  w15;
wire  w22;
wire  w23;
wire  w21;
wire  w20;
wire [2:0] b20;
wire [3:0] b21;
wire  w24;
wire [3:0] b22;

assign w10 = CLK;
assign w20 = RST;
assign w6 = ALARMSET_RUN;
assign w4 = SW_F1;
assign w5 = SW_F2;
assign w0 = AMPM;
assign BEEP = w9;
assign ALM_AMPM = w24;
assign ALM_HOUR = b21;
assign ALM_MINHIGH = b20;
assign ALM_MINLOW = b22;
assign b1 = HOUR;
assign b2 = MINHIGH;
assign b3 = MINLOW;

CompareTime
     s0 (
      .AMPM2(w0),
      .HOUR2(b1),
      .MINHIGH2(b2),
      .MINLOW2(b3),
      .SAME(w7),
      .MINHIGH1(b20),
      .HOUR1(b21),
      .AMPM1(w24),
      .MINLOW1(b22));

PNU_AND2
     s3 (
      .i1(w6),
      .i2(w10),
      .o1(w11));

counter60
     s4 (
      .clk(w21),
      .rst(w20),
      .CNT6(b20),
      .CNT10(b22),
      .CAR());

PNU_NOT
     s7 (
      .i1(w6),
      .o1(w8));

PNU_AND3
     s8 (
      .i2(w7),
      .i1(w8),
      .o1(w9),
      .i3(w15));

PNU_ONE
     s10 (
      .o1(w14));

AlarmControlnstance
     s11 (
      .SW_F1(w4),
      .SW_F2(w5),
      .CLK(w11),
      .ALM_ONOFF(w22),
      .ALM_HOUR(w23),
      .ALM_MIN(w21),
      .RST(w20));

Counter24
     s12 (
      .CLK(w23),
      .RST(w20),
      .q(b21),
      .AMPM(w24));

PNU_JKFF
     s9 (
      .J(w14),
      .K(w14),
      .Q(w15),
      .clock(w22),
      .reset(w20));

endmodule

