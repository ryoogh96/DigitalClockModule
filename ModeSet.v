module ModeSet(SW_MODE,CLK,ALARMSET_RUN,TIMESET_RUN,STOPWATCH_RUN,RST);

input SW_MODE;
input CLK;
output ALARMSET_RUN;
output TIMESET_RUN;
output STOPWATCH_RUN;
input RST;

wire  w19;
wire  w20;
wire  w23;
wire  w13;
wire  w15;
wire  w17;
wire  w18;
wire  w22;
wire  w9;
wire  w11;
wire  w10;
wire  w24;
wire  w16;
wire  w25;
wire  w21;
wire  w26;
wire  w27;

assign w25 = SW_MODE;
assign w9 = CLK;
assign ALARMSET_RUN = w19;
assign TIMESET_RUN = w23;
assign STOPWATCH_RUN = w20;
assign w10 = RST;

PNU_NOT
     s0 (
      .o1(w24),
      .i1(w25));

PNU_AND2
     s9 (
      .o1(w19),
      .i1(w21),
      .i2(w27));

PNU_AND2
     s10 (
      .o1(w20),
      .i1(w16),
      .i2(w21));

PNU_AND2
     s13 (
      .o1(w23),
      .i2(w16),
      .i1(w26));

PNU_DFF
     s11 (
      .D(w17),
      .clock(w9),
      .reset(w10),
      .Q(w21));

PNU_NOT
     s15 (
      .i1(w16),
      .o1(w27));

PNU_NOT
     s16 (
      .i1(w21),
      .o1(w26));

PNU_DFF
     s12 (
      .clock(w9),
      .D(w11),
      .reset(w10),
      .Q(w16));

PNU_OR2
     s17 (
      .i1(w13),
      .i2(w15),
      .o1(w17));

PNU_AND2
     s18 (
      .o1(w13),
      .i2(w25),
      .i1(w27));

PNU_AND2
     s19 (
      .o1(w15),
      .i1(w24),
      .i2(w21));

PNU_AND2
     s14 (
      .o1(w18),
      .i2(w24),
      .i1(w16));

PNU_AND2
     s20 (
      .o1(w22),
      .i1(w25),
      .i2(w21));

PNU_OR2
     s21 (
      .i1(w18),
      .i2(w22),
      .o1(w11));

endmodule

