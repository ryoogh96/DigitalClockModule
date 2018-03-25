module seg7toMux(p0,p1,p2,p3,p4,p5,p6,p7,CIn,seg7out);

input [6:0] p0;
input [6:0] p1;
input [6:0] p2;
input [6:0] p3;
input [6:0] p4;
input [6:0] p5;
input [6:0] p6;
input [6:0] p7;
input [2:0] CIn;
output [6:0] seg7out;

wire [6:0] b39;
wire [6:0] b46;
wire [6:0] b45;
wire [6:0] b44;
wire [6:0] b43;
wire [6:0] b41;
wire [6:0] b40;
wire [6:0] b75;
wire [2:0] b64;
wire [6:0] b68;
wire  b39_6_w8;
wire  b46_6_w9;
wire  b45_6_w10;
wire  b44_6_w11;
wire  b43_6_w12;
wire  b41_6_w14;
wire  b40_6_w15;
wire  b39_5_w16;
wire  b40_5_w17;
wire  b41_5_w18;
wire  b43_5_w20;
wire  b44_5_w21;
wire  b45_5_w22;
wire  b46_5_w23;
wire  b39_4_w24;
wire  b40_4_w25;
wire  b41_4_w26;
wire  b43_4_w28;
wire  b44_4_w29;
wire  b45_4_w30;
wire  b46_4_w31;
wire  b39_3_w32;
wire  b40_3_w33;
wire  b41_3_w34;
wire  b43_3_w36;
wire  b44_3_w37;
wire  b45_3_w38;
wire  b46_3_w39;
wire  b39_2_w40;
wire  b40_2_w41;
wire  b41_2_w42;
wire  b75_2_w43;
wire  b43_2_w44;
wire  b44_2_w45;
wire  b45_2_w46;
wire  b46_2_w47;
wire  b39_1_w48;
wire  b40_1_w49;
wire  b41_1_w50;
wire  b75_1_w51;
wire  b43_1_w52;
wire  b44_1_w53;
wire  b45_1_w54;
wire  b46_1_w55;
wire  b39_0_w56;
wire  b40_0_w57;
wire  b41_0_w58;
wire  b75_0_w59;
wire  b43_0_w60;
wire  b44_0_w61;
wire  b45_0_w62;
wire  b46_0_w63;
wire  b75_6_w64;
wire  b75_5_w65;
wire  b75_4_w66;
wire  b75_3_w67;
wire  b64_2_w70;
wire  b64_1_w69;
wire  b64_0_w68;
wire  b68_6;
wire  b68_5;
wire  b68_4;
wire  b68_3;
wire  b68_2;
wire  b68_1;
wire  b68_0;

assign b39 = p0;
assign b40 = p1;
assign b41 = p2;
assign b75 = p3;
assign b43 = p4;
assign b44 = p5;
assign b45 = p6;
assign b46 = p7;
assign b64 = CIn;
assign seg7out = b68;

assign b68[6] = b68_6;
assign b68[5] = b68_5;
assign b68[4] = b68_4;
assign b68[3] = b68_3;
assign b68[2] = b68_2;
assign b68[1] = b68_1;
assign b68[0] = b68_0;

assign b39_6_w8 = {b39[6]};
assign b46_6_w9 = {b46[6]};
assign b45_6_w10 = {b45[6]};
assign b44_6_w11 = {b44[6]};
assign b43_6_w12 = {b43[6]};
assign b41_6_w14 = {b41[6]};
assign b40_6_w15 = {b40[6]};
assign b39_5_w16 = {b39[5]};
assign b40_5_w17 = {b40[5]};
assign b41_5_w18 = {b41[5]};
assign b43_5_w20 = {b43[5]};
assign b44_5_w21 = {b44[5]};
assign b45_5_w22 = {b45[5]};
assign b46_5_w23 = {b46[5]};
assign b39_4_w24 = {b39[4]};
assign b40_4_w25 = {b40[4]};
assign b41_4_w26 = {b41[4]};
assign b43_4_w28 = {b43[4]};
assign b44_4_w29 = {b44[4]};
assign b45_4_w30 = {b45[4]};
assign b46_4_w31 = {b46[4]};
assign b39_3_w32 = {b39[3]};
assign b40_3_w33 = {b40[3]};
assign b41_3_w34 = {b41[3]};
assign b43_3_w36 = {b43[3]};
assign b44_3_w37 = {b44[3]};
assign b45_3_w38 = {b45[3]};
assign b46_3_w39 = {b46[3]};
assign b39_2_w40 = {b39[2]};
assign b40_2_w41 = {b40[2]};
assign b41_2_w42 = {b41[2]};
assign b75_2_w43 = {b75[2]};
assign b43_2_w44 = {b43[2]};
assign b44_2_w45 = {b44[2]};
assign b45_2_w46 = {b45[2]};
assign b46_2_w47 = {b46[2]};
assign b39_1_w48 = {b39[1]};
assign b40_1_w49 = {b40[1]};
assign b41_1_w50 = {b41[1]};
assign b75_1_w51 = {b75[1]};
assign b43_1_w52 = {b43[1]};
assign b44_1_w53 = {b44[1]};
assign b45_1_w54 = {b45[1]};
assign b46_1_w55 = {b46[1]};
assign b39_0_w56 = {b39[0]};
assign b40_0_w57 = {b40[0]};
assign b41_0_w58 = {b41[0]};
assign b75_0_w59 = {b75[0]};
assign b43_0_w60 = {b43[0]};
assign b44_0_w61 = {b44[0]};
assign b45_0_w62 = {b45[0]};
assign b46_0_w63 = {b46[0]};
assign b75_6_w64 = {b75[6]};
assign b75_5_w65 = {b75[5]};
assign b75_4_w66 = {b75[4]};
assign b75_3_w67 = {b75[3]};
assign b64_2_w70 = {b64[2]};
assign b64_1_w69 = {b64[1]};
assign b64_0_w68 = {b64[0]};

PNU_MUX8
     s0 (
      .i1(b39_6_w8),
      .i8(b46_6_w9),
      .i7(b45_6_w10),
      .i6(b44_6_w11),
      .i5(b43_6_w12),
      .i3(b41_6_w14),
      .i2(b40_6_w15),
      .i4(b75_6_w64),
      .e1(b64_2_w70),
      .e2(b64_1_w69),
      .e3(b64_0_w68),
      .o1(b68_6));

PNU_MUX8
     s1 (
      .i1(b39_5_w16),
      .i2(b40_5_w17),
      .i3(b41_5_w18),
      .i5(b43_5_w20),
      .i6(b44_5_w21),
      .i7(b45_5_w22),
      .i8(b46_5_w23),
      .i4(b75_5_w65),
      .e1(b64_2_w70),
      .e2(b64_1_w69),
      .e3(b64_0_w68),
      .o1(b68_5));

PNU_MUX8
     s2 (
      .i1(b39_4_w24),
      .i2(b40_4_w25),
      .i3(b41_4_w26),
      .i5(b43_4_w28),
      .i6(b44_4_w29),
      .i7(b45_4_w30),
      .i8(b46_4_w31),
      .i4(b75_4_w66),
      .e1(b64_2_w70),
      .e2(b64_1_w69),
      .e3(b64_0_w68),
      .o1(b68_4));

PNU_MUX8
     s3 (
      .i1(b39_3_w32),
      .i2(b40_3_w33),
      .i3(b41_3_w34),
      .i5(b43_3_w36),
      .i6(b44_3_w37),
      .i7(b45_3_w38),
      .i8(b46_3_w39),
      .i4(b75_3_w67),
      .e1(b64_2_w70),
      .e2(b64_1_w69),
      .e3(b64_0_w68),
      .o1(b68_3));

PNU_MUX8
     s4 (
      .i1(b39_2_w40),
      .i2(b40_2_w41),
      .i3(b41_2_w42),
      .i4(b75_2_w43),
      .i5(b43_2_w44),
      .i6(b44_2_w45),
      .i7(b45_2_w46),
      .i8(b46_2_w47),
      .e1(b64_2_w70),
      .e2(b64_1_w69),
      .e3(b64_0_w68),
      .o1(b68_2));

PNU_MUX8
     s5 (
      .i1(b39_1_w48),
      .i2(b40_1_w49),
      .i3(b41_1_w50),
      .i4(b75_1_w51),
      .i5(b43_1_w52),
      .i6(b44_1_w53),
      .i7(b45_1_w54),
      .i8(b46_1_w55),
      .e1(b64_2_w70),
      .e2(b64_1_w69),
      .e3(b64_0_w68),
      .o1(b68_1));

PNU_MUX8
     s6 (
      .i1(b39_0_w56),
      .i2(b40_0_w57),
      .i3(b41_0_w58),
      .i4(b75_0_w59),
      .i5(b43_0_w60),
      .i6(b44_0_w61),
      .i7(b45_0_w62),
      .i8(b46_0_w63),
      .e1(b64_2_w70),
      .e2(b64_1_w69),
      .e3(b64_0_w68),
      .o1(b68_0));

endmodule

