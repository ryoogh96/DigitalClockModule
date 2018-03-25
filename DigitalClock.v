module DigitalClock(CLK,RST,SW_MODE,SW_F1,SW_F2,BEEP,AMPM,ComOut,segOut);

input CLK;
input RST;
input SW_MODE;
input SW_F1;
input SW_F2;
output BEEP;
output AMPM;
output [7:0] ComOut;
output [6:0] segOut;

wire  w5;
wire  w6;
wire  w7;
wire  w8;
wire  w9;
wire [3:0] b19;
wire  w23;
wire [3:0] b39;
wire [3:0] b43;
wire  w43;
wire [3:0] b52;
wire  w49;
wire  w51;
wire [3:0] b60;
wire [3:0] b28;
wire [3:0] b25;
wire [3:0] b54;
wire  w56;
wire [3:0] b53;
wire [3:0] b61;
wire [3:0] b63;
wire [3:0] b55;
wire [3:0] b65;
wire  w46;
wire  w45;
wire [7:0] b67;
wire [2:0] b66;
wire [3:0] b68;
wire [6:0] b69;
wire [6:0] b70;
wire [3:0] b71;
wire [6:0] b72;
wire [3:0] b73;
wire [3:0] b74;
wire [3:0] b75;
wire [6:0] b76;
wire [3:0] b77;
wire [6:0] b78;
wire [3:0] b79;
wire [3:0] b81;
wire [3:0] b82;
wire [6:0] b80;
wire [6:0] b83;
wire [6:0] b84;
wire  w62;
wire  w64;
wire  w66;
wire  w65;
wire  w67;
wire  w68;
wire  w69;
wire  w70;
wire [6:0] b85;
wire [3:0] b64;
wire [3:0] b86;
wire [3:0] b88;
wire [2:0] b60_2to0;
wire [2:0] b60_2to0_b35;
wire [2:0] b54_2to0;
wire [2:0] b61_2to0;
wire [2:0] b63_2to0;
wire  b71_0;
wire  b71_1;
wire  b71_2;
wire  b71_3;
wire [2:0] b88_2to0;
wire  b88_3;
wire  b88_3_w71;

assign w65 = CLK;
assign w70 = RST;
assign w62 = SW_MODE;
assign w69 = SW_F1;
assign w68 = SW_F2;
assign BEEP = w23;
assign AMPM = w5;
assign ComOut = b67;
assign segOut = b85;

assign b52[3] = b88_3;
assign b52[2] = b88_3;
assign b52[1] = b88_3;
assign b52[0] = b88_3;
assign b60[3] = b88_3;
assign b60[2:0] = b60_2to0[2:0];
assign b54[3] = b88_3;
assign b54[2:0] = b54_2to0[2:0];
assign b61[3] = b88_3;
assign b61[2:0] = b61_2to0[2:0];
assign b63[3] = b88_3;
assign b63[2:0] = b63_2to0[2:0];
assign b71[3] = b71_3;
assign b71[2] = b71_2;
assign b71[1] = b71_1;
assign b71[0] = b71_0;
assign b88[3] = b88_3;
assign b88[2:0] = b88_2to0[2:0];

assign b60_2to0_b35[2:0] = {b60[2:0]};
assign b88_3_w71 = {b88[3]};

ModeSet
     s0 (
      .TIMESET_RUN(w56),
      .STOPWATCH_RUN(w46),
      .ALARMSET_RUN(w45),
      .SW_MODE(w64),
      .CLK(w65),
      .RST(w70));

ALARM
     s1 (
      .HOUR(b19),
      .BEEP(w23),
      .ALM_AMPM(w43),
      .AMPM(w49),
      .MINHIGH(b60_2to0_b35),
      .ALM_MINLOW(b28),
      .ALM_HOUR(b25),
      .ALM_MINHIGH(b54_2to0),
      .MINLOW(b55),
      .ALARMSET_RUN(w45),
      .SW_F1(w66),
      .CLK(w65),
      .SW_F2(w67),
      .RST(w70));

MuxB4
     s4 (
      .TIM(b19),
      .STW(b43),
      .ALM(b25),
      .STOPWATCH_RUN(w46),
      .ALARMSET_RUN(w45),
      .Z(b74));

MuxB4
     s6 (
      .STW(b39),
      .ALM(b28),
      .TIM(b55),
      .STOPWATCH_RUN(w46),
      .ALARMSET_RUN(w45),
      .Z(b75));

MuxB4
     s9 (
      .ALM(b52),
      .TIM(b52),
      .STOPWATCH_RUN(w46),
      .ALARMSET_RUN(w45),
      .Z(b82),
      .STW(b86));

MuxB4
     s10 (
      .ALM(b52),
      .TIM(b52),
      .STOPWATCH_RUN(w46),
      .ALARMSET_RUN(w45),
      .Z(b81),
      .STW(b64));

PNU_NOT
     s12 (
      .o1(w5),
      .i1(w6));

PNU_AND2
     s13 (
      .o1(w7),
      .i1(w43),
      .i2(w45));

PNU_AND2
     s14 (
      .o1(w8),
      .i2(w46),
      .i1(b88_3_w71));

PNU_AND2
     s15 (
      .o1(w9),
      .i1(w49),
      .i2(w51));

PNU_XNOR3
     s16 (
      .o1(w6),
      .i1(w7),
      .i2(w8),
      .i3(w9));

MuxB4
     s5 (
      .TIM(b60),
      .STW(b63),
      .STOPWATCH_RUN(w46),
      .ALARMSET_RUN(w45),
      .ALM(b54),
      .Z(b73));

PNU_XOR2
     s18 (
      .o1(w51),
      .i2(w46),
      .i1(w45));

PNU_ZERO
     s19 (
      .o1(b88_3));

TIME
     s2 (
      .TIM_HOUR(b19),
      .TIM_AMPM(w49),
      .TIM_MINHIGH(b60_2to0),
      .TIMESET_RUN(w56),
      .TIM_SECLOW(b53),
      .TIM_SECHIGH(b61_2to0),
      .TIM_MINLOW(b55),
      .SW_F1(w66),
      .CLK(w65),
      .SW_F2(w67),
      .RST(w70));

STOPWATCH
     s3 (
      .MINLOW(b39),
      .HOUR(b43),
      .MINHIGH(b63_2to0),
      .SECLOW(b65),
      .STOPWATCH_RUN(w46),
      .SW_F1(w66),
      .CLK(w65),
      .SW_F2(w67),
      .RST(w70),
      .MSEC1ST(b64),
      .MSEC2ND(b86),
      .SECHIGH(b88_2to0),
      .MSE00());

count8
     s20 (
      .out(b66),
      .clk(w65),
      .rst(w70));

comSelector
     s21 (
      .ComOut(b67),
      .InCNT8(b66));

counter12Decoder
     s23 (
      .cntHOUR1(b68),
      .cntHOUR10(b71_0),
      .CNT12(b74));

week08_7segment
     s24 (
      .inDtB(b68),
      .p1(b69));

seg7toMux
     s22 (
      .CIn(b66),
      .p1(b69),
      .p0(b70),
      .p2(b72),
      .p3(b76),
      .p4(b78),
      .p5(b80),
      .p6(b83),
      .p7(b84),
      .seg7out(b85));

week08_7segment
     s25 (
      .p1(b70),
      .inDtB(b71));

PNU_ZERO
     s26 (
      .o1(b71_1));

PNU_ZERO
     s27 (
      .o1(b71_2));

PNU_ZERO
     s28 (
      .o1(b71_3));

week08_7segment
     s29 (
      .p1(b72),
      .inDtB(b73));

week08_7segment
     s30 (
      .inDtB(b75),
      .p1(b76));

week08_7segment
     s31 (
      .inDtB(b77),
      .p1(b78));

week08_7segment
     s32 (
      .inDtB(b79),
      .p1(b80));

MuxB4
     s7 (
      .ALM(b52),
      .STOPWATCH_RUN(w46),
      .ALARMSET_RUN(w45),
      .Z(b77),
      .TIM(b61),
      .STW(b88));

week08_7segment
     s33 (
      .inDtB(b82),
      .p1(b83));

week08_7segment
     s34 (
      .inDtB(b81),
      .p1(b84));

LtoP
     s35 (
      .L(w62),
      .P(w64),
      .clk(w65),
      .rst(w70));

LtoP
     s36 (
      .P(w66),
      .clk(w65),
      .L(w69),
      .rst(w70));

LtoP
     s37 (
      .clk(w65),
      .P(w67),
      .L(w68),
      .rst(w70));

MuxB4
     s8 (
      .ALM(b52),
      .TIM(b53),
      .STW(b65),
      .STOPWATCH_RUN(w46),
      .ALARMSET_RUN(w45),
      .Z(b79));

endmodule

