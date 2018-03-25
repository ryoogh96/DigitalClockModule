module MuxB4(ALARMSET_RUN,STOPWATCH_RUN,ALM,STW,TIM,Z);

input ALARMSET_RUN;
input STOPWATCH_RUN;
input [3:0] ALM;
input [3:0] STW;
input [3:0] TIM;
output [3:0] Z;

wire  w4;
wire  w5;
wire  w6;
wire  w7;
wire [3:0] b7;
wire [3:0] b8;
wire [3:0] b9;
wire [3:0] b10;
wire  w23;
wire  w24;
wire  w25;
wire  w27;
wire  w28;
wire  w29;
wire  w30;
wire  w31;
wire  w32;
wire  w33;
wire  w34;
wire  w35;
wire  w37;
wire  w38;
wire  w43;
wire  b9_3_w12;
wire  b8_3_w13;
wire  b7_3_w14;
wire  b9_2_w15;
wire  b8_2_w16;
wire  b7_2_w17;
wire  b7_1_w18;
wire  b9_1_w19;
wire  b7_0_w20;
wire  b8_0_w21;
wire  b9_3_w22;
wire  b8_1_w26;
wire  b10_0;
wire  b10_1;
wire  b10_2;
wire  b10_3;

assign w23 = ALARMSET_RUN;
assign w24 = STOPWATCH_RUN;
assign b7 = ALM;
assign b8 = STW;
assign b9 = TIM;
assign Z = b10;

assign b10[3] = b10_3;
assign b10[2] = b10_2;
assign b10[1] = b10_1;
assign b10[0] = b10_0;

assign b9_3_w12 = {b9[3]};
assign b8_3_w13 = {b8[3]};
assign b7_3_w14 = {b7[3]};
assign b9_2_w15 = {b9[2]};
assign b8_2_w16 = {b8[2]};
assign b7_2_w17 = {b7[2]};
assign b7_1_w18 = {b7[1]};
assign b9_1_w19 = {b9[1]};
assign b7_0_w20 = {b7[0]};
assign b8_0_w21 = {b8[0]};
assign b9_3_w22 = {b9[3]};
assign b8_1_w26 = {b8[1]};

PNU_NOT
     s0 (
      .i1(w4),
      .o1(b10_0));

PNU_NOT
     s1 (
      .i1(w5),
      .o1(b10_1));

PNU_NOT
     s2 (
      .i1(w6),
      .o1(b10_2));

PNU_NOT
     s3 (
      .i1(w7),
      .o1(b10_3));

PNU_AND2
     s4 (
      .i1(b7_0_w20),
      .i2(w23),
      .o1(w27));

PNU_AND2
     s5 (
      .i1(b8_0_w21),
      .i2(w24),
      .o1(w28));

PNU_AND2
     s6 (
      .i1(b9_3_w22),
      .i2(w25),
      .o1(w29));

PNU_AND2
     s7 (
      .i1(b7_1_w18),
      .i2(w23),
      .o1(w30));

PNU_AND2
     s8 (
      .i1(b8_1_w26),
      .i2(w24),
      .o1(w31));

PNU_AND2
     s9 (
      .i1(b9_1_w19),
      .i2(w25),
      .o1(w32));

PNU_AND2
     s10 (
      .i1(b7_2_w17),
      .i2(w23),
      .o1(w33));

PNU_AND2
     s11 (
      .i1(b8_2_w16),
      .i2(w24),
      .o1(w34));

PNU_AND2
     s12 (
      .i1(b9_2_w15),
      .i2(w25),
      .o1(w35));

PNU_AND2
     s13 (
      .i1(b7_3_w14),
      .i2(w23),
      .o1(w43));

PNU_AND2
     s14 (
      .i1(b8_3_w13),
      .i2(w24),
      .o1(w37));

PNU_AND2
     s15 (
      .i1(b9_3_w12),
      .i2(w25),
      .o1(w38));

PNU_NOR2
     s21 (
      .i1(w23),
      .i2(w24),
      .o1(w25));

PNU_NOR3
     s17 (
      .o1(w4),
      .i1(w27),
      .i2(w28),
      .i3(w29));

PNU_NOR3
     s18 (
      .o1(w5),
      .i1(w30),
      .i2(w31),
      .i3(w32));

PNU_NOR3
     s19 (
      .o1(w6),
      .i1(w33),
      .i2(w34),
      .i3(w35));

PNU_NOR3
     s20 (
      .o1(w7),
      .i2(w37),
      .i3(w38),
      .i1(w43));

endmodule

