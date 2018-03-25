module week08_7segment(inDtB,p1);

input [3:0] inDtB;
output [6:0] p1;

wire  w8;
wire  w9;
wire  w10;
wire  w13;
wire  w14;
wire  w16;
wire  w17;
wire  w18;
wire  w20;
wire  w21;
wire  w23;
wire  w24;
wire  w25;
wire  w27;
wire  w28;
wire  w29;
wire  w30;
wire  w32;
wire  w33;
wire  w34;
wire  w37;
wire  w38;
wire  w39;
wire  w41;
wire  w42;
wire  w43;
wire  w44;
wire  w45;
wire  w47;
wire  w48;
wire  w49;
wire  w50;
wire  w52;
wire  w53;
wire  w54;
wire  w55;
wire [3:0] b50;
wire  w57;
wire  w58;
wire [6:0] b43;
wire  b50_3_w51;
wire  b50_1_w40;
wire  b43_6;
wire  b43_5;
wire  b43_4;
wire  b43_3;
wire  b43_2;
wire  b43_1;
wire  b43_0;
wire  b50_2_w56;
wire  b50_0_w66;

assign b50 = inDtB;
assign p1 = b43;

assign b43[6] = b43_6;
assign b43[5] = b43_5;
assign b43[4] = b43_4;
assign b43[3] = b43_3;
assign b43[2] = b43_2;
assign b43[1] = b43_1;
assign b43[0] = b43_0;

assign b50_3_w51 = {b50[3]};
assign b50_1_w40 = {b50[1]};
assign b50_2_w56 = {b50[2]};
assign b50_0_w66 = {b50[0]};

PNU_OR4
     s0 (
      .i3(w8),
      .i4(w13),
      .i1(b50_3_w51),
      .i2(b50_1_w40),
      .o1(b43_6));

PNU_AND2
     s2 (
      .i2(w9),
      .i1(w10),
      .o1(w13));

PNU_NOT
     s3 (
      .o1(w10),
      .i1(b50_2_w56));

PNU_NOT
     s4 (
      .o1(w9),
      .i1(b50_0_w66));

PNU_AND2
     s5 (
      .o1(w8),
      .i1(b50_2_w56),
      .i2(b50_0_w66));

PNU_OR3
     s6 (
      .i1(w14),
      .i2(w16),
      .i3(w20),
      .o1(b43_5));

PNU_NOT
     s7 (
      .o1(w14),
      .i1(b50_2_w56));

PNU_AND2
     s8 (
      .o1(w16),
      .i2(b50_1_w40),
      .i1(b50_0_w66));

PNU_AND2
     s9 (
      .i1(w17),
      .i2(w18),
      .o1(w20));

PNU_NOT
     s10 (
      .o1(w17),
      .i1(b50_0_w66));

PNU_NOT
     s11 (
      .o1(w18),
      .i1(b50_1_w40));

PNU_OR3
     s12 (
      .i2(w21),
      .o1(b43_4),
      .i1(b50_2_w56),
      .i3(b50_0_w66));

PNU_NOT
     s13 (
      .o1(w21),
      .i1(b50_1_w40));

PNU_OR4
     s14 (
      .i1(w25),
      .i2(w28),
      .i3(w30),
      .i4(w33),
      .o1(w34));

PNU_AND2
     s15 (
      .i1(w23),
      .i2(w24),
      .o1(w25));

PNU_NOT
     s16 (
      .o1(w23),
      .i1(b50_2_w56));

PNU_NOT
     s17 (
      .o1(w24),
      .i1(b50_0_w66));

PNU_AND2
     s18 (
      .i2(w27),
      .o1(w28),
      .i1(b50_1_w40));

PNU_NOT
     s19 (
      .o1(w27),
      .i1(b50_0_w66));

PNU_AND3
     s20 (
      .i2(w29),
      .o1(w30),
      .i1(b50_2_w56),
      .i3(b50_0_w66));

PNU_NOT
     s21 (
      .o1(w29),
      .i1(b50_1_w40));

PNU_AND2
     s22 (
      .i1(w32),
      .o1(w33),
      .i2(b50_1_w40));

PNU_NOT
     s23 (
      .o1(w32),
      .i1(b50_2_w56));

PNU_OR2
     s24 (
      .i1(w34),
      .i2(b50_3_w51),
      .o1(b43_3));

PNU_OR2
     s25 (
      .i1(w39),
      .i2(w42),
      .o1(b43_2));

PNU_AND2
     s26 (
      .i2(w37),
      .i1(w38),
      .o1(w39));

PNU_NOT
     s27 (
      .o1(w38),
      .i1(b50_2_w56));

PNU_NOT
     s28 (
      .o1(w37),
      .i1(b50_0_w66));

PNU_AND2
     s29 (
      .i2(w41),
      .o1(w42),
      .i1(b50_1_w40));

PNU_NOT
     s30 (
      .o1(w41),
      .i1(b50_0_w66));

PNU_OR4
     s31 (
      .i2(w45),
      .i3(w48),
      .i4(w50),
      .i1(b50_3_w51),
      .o1(b43_1));

PNU_AND2
     s32 (
      .i1(w43),
      .i2(w44),
      .o1(w45));

PNU_NOT
     s33 (
      .o1(w43),
      .i1(b50_1_w40));

PNU_NOT
     s34 (
      .o1(w44),
      .i1(b50_0_w66));

PNU_AND2
     s35 (
      .i2(w47),
      .o1(w48),
      .i1(b50_2_w56));

PNU_NOT
     s36 (
      .o1(w47),
      .i1(b50_1_w40));

PNU_AND2
     s37 (
      .i2(w49),
      .o1(w50),
      .i1(b50_2_w56));

PNU_NOT
     s38 (
      .o1(w49),
      .i1(b50_0_w66));

PNU_OR4
     s39 (
      .i2(w52),
      .i3(w55),
      .i1(b50_3_w51),
      .i4(w58),
      .o1(b43_0));

PNU_AND2
     s40 (
      .o1(w52),
      .i2(w53),
      .i1(b50_2_w56));

PNU_NOT
     s41 (
      .o1(w53),
      .i1(b50_1_w40));

PNU_AND2
     s42 (
      .i1(w54),
      .o1(w55),
      .i2(b50_1_w40));

PNU_NOT
     s43 (
      .o1(w54),
      .i1(b50_2_w56));

PNU_AND2
     s44 (
      .i1(b50_1_w40),
      .i2(w57),
      .o1(w58));

PNU_NOT
     s45 (
      .o1(w57),
      .i1(b50_0_w66));

endmodule

