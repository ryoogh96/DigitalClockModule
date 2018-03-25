module CompareTime(AMPM2,HOUR1,HOUR2,MINHIGH1,MINHIGH2,SAME,MINLOW1,MINLOW2,AMPM1);

input AMPM2;
input [3:0] HOUR1;
input [3:0] HOUR2;
input [2:0] MINHIGH1;
input [2:0] MINHIGH2;
output SAME;
input [3:0] MINLOW1;
input [3:0] MINLOW2;
input AMPM1;

wire  w0;
wire  w2;
wire  w3;
wire [3:0] b3;
wire [3:0] b4;
wire [2:0] b20;
wire [2:0] b21;
wire  w31;
wire [3:0] b32;
wire [3:0] b33;
wire  w46;
wire  w47;
wire  w49;
wire  w48;
wire  w50;
wire  w51;
wire  w52;
wire  w53;
wire  w54;
wire  w56;
wire  w55;
wire  w57;
wire  w59;
wire  w58;
wire  w60;
wire  b3_0_w5;
wire  b4_0_w6;
wire  b3_1_w7;
wire  b4_1_w8;
wire  b3_2_w9;
wire  b4_2_w10;
wire  b3_3_w11;
wire  b4_3_w12;
wire  b20_0_w22;
wire  b20_1_w23;
wire  b20_2_w24;
wire  b21_0_w25;
wire  b21_1_w26;
wire  b21_2_w27;
wire  b32_0_w34;
wire  b32_1_w35;
wire  b32_2_w36;
wire  b32_3_w37;
wire  b33_0_w38;
wire  b33_1_w39;
wire  b33_2_w40;
wire  b33_3_w41;

assign w2 = AMPM2;
assign b3 = HOUR1;
assign b4 = HOUR2;
assign b20 = MINHIGH1;
assign b21 = MINHIGH2;
assign SAME = w0;
assign b32 = MINLOW1;
assign b33 = MINLOW2;
assign w3 = AMPM1;

assign b3_0_w5 = {b3[0]};
assign b4_0_w6 = {b4[0]};
assign b3_1_w7 = {b3[1]};
assign b4_1_w8 = {b4[1]};
assign b3_2_w9 = {b3[2]};
assign b4_2_w10 = {b4[2]};
assign b3_3_w11 = {b3[3]};
assign b4_3_w12 = {b4[3]};
assign b20_0_w22 = {b20[0]};
assign b20_1_w23 = {b20[1]};
assign b20_2_w24 = {b20[2]};
assign b21_0_w25 = {b21[0]};
assign b21_1_w26 = {b21[1]};
assign b21_2_w27 = {b21[2]};
assign b32_0_w34 = {b32[0]};
assign b32_1_w35 = {b32[1]};
assign b32_2_w36 = {b32[2]};
assign b32_3_w37 = {b32[3]};
assign b33_0_w38 = {b33[0]};
assign b33_1_w39 = {b33[1]};
assign b33_2_w40 = {b33[2]};
assign b33_3_w41 = {b33[3]};

PNU_AND3
     s15 (
      .o1(w31),
      .i1(w54),
      .i2(w56),
      .i3(w55));

PNU_AND4
     s16 (
      .o1(w46),
      .i1(w57),
      .i2(w59),
      .i3(w58),
      .i4(w60));

PNU_AND3
     s17 (
      .o1(w0),
      .i2(w31),
      .i3(w46),
      .i1(w48));

PNU_AND4
     s19 (
      .o1(w49),
      .i1(w50),
      .i2(w51),
      .i3(w52),
      .i4(w53));

PNU_AND2
     s20 (
      .i1(w47),
      .i2(w49),
      .o1(w48));

PNU_XNOR2
     s5 (
      .i1(b3_0_w5),
      .i2(b4_0_w6),
      .o1(w50));

PNU_XNOR2
     s6 (
      .i2(w2),
      .i1(w3),
      .o1(w47));

PNU_XNOR2
     s7 (
      .i1(b3_1_w7),
      .i2(b4_1_w8),
      .o1(w51));

PNU_XNOR2
     s8 (
      .i1(b3_2_w9),
      .i2(b4_2_w10),
      .o1(w52));

PNU_XNOR2
     s9 (
      .i1(b3_3_w11),
      .i2(b4_3_w12),
      .o1(w53));

PNU_XNOR2
     s10 (
      .i1(b20_0_w22),
      .i2(b21_0_w25),
      .o1(w54));

PNU_XNOR2
     s11 (
      .i1(b20_1_w23),
      .i2(b21_1_w26),
      .o1(w56));

PNU_XNOR2
     s12 (
      .i1(b20_2_w24),
      .i2(b21_2_w27),
      .o1(w55));

PNU_XNOR2
     s13 (
      .i1(b32_0_w34),
      .i2(b33_0_w38),
      .o1(w57));

PNU_XNOR2
     s14 (
      .i1(b32_1_w35),
      .i2(b33_1_w39),
      .o1(w59));

PNU_XNOR2
     s18 (
      .i1(b32_2_w36),
      .i2(b33_2_w40),
      .o1(w58));

PNU_XNOR2
     s21 (
      .i1(b32_3_w37),
      .i2(b33_3_w41),
      .o1(w60));

endmodule

