module counter12(clk,rst,CNT12);

input clk;
input rst;
output [3:0] CNT12;

wire  w2;
wire  w22;
wire  w30;
wire  w31;
wire  w32;
wire  w33;
wire  w34;
wire  w36;
wire  w37;
wire  w38;
wire  w39;
wire  w40;
wire  w41;
wire [3:0] b29;
wire  w45;
wire  w24;
wire  w44;
wire  w35;
wire  w29;
wire  w42;
wire  w46;
wire  w47;
wire  w48;
wire  w51;
wire  w52;
wire  w53;
wire  w54;
wire  b29_3;
wire  b29_3_w28;
wire  b29_2;
wire  b29_2_w49;
wire  b29_1;
wire  b29_1_w43;
wire  b29_0;
wire  b29_0_w50;

assign w22 = clk;
assign w2 = rst;
assign CNT12 = b29;

assign b29[3] = b29_3;
assign b29[2] = b29_2;
assign b29[1] = b29_1;
assign b29[0] = b29_0;

assign b29_3_w28 = {b29[3]};
assign b29_2_w49 = {b29[2]};
assign b29_1_w43 = {b29[1]};
assign b29_0_w50 = {b29[0]};

PNU_DFF
     s0 (
      .reset(w2),
      .clock(w22),
      .D(w35),
      .Q(b29_3));

PNU_DFF
     s1 (
      .reset(w2),
      .clock(w22),
      .Q(b29_2),
      .D(w54));

PNU_DFF
     s2 (
      .reset(w2),
      .clock(w22),
      .D(w34),
      .Q(b29_1));

PNU_DFF
     s3 (
      .reset(w2),
      .clock(w22),
      .D(w41),
      .Q(b29_0));

PNU_AND2
     s4 (
      .i2(w45),
      .o1(w24),
      .i1(b29_3_w28));

PNU_NOT
     s5 (
      .o1(w45),
      .i1(b29_2_w49));

PNU_AND3
     s6 (
      .o1(w44),
      .i1(b29_2_w49),
      .i2(b29_1_w43),
      .i3(b29_0_w50));

PNU_AND2
     s16 (
      .i1(w30),
      .o1(w32),
      .i2(b29_0_w50));

PNU_NOT
     s17 (
      .o1(w30),
      .i1(b29_1_w43));

PNU_AND2
     s18 (
      .i2(w31),
      .o1(w33),
      .i1(b29_1_w43));

PNU_NOT
     s19 (
      .o1(w31),
      .i1(b29_0_w50));

PNU_OR2
     s20 (
      .i1(w32),
      .i2(w33),
      .o1(w34));

PNU_AND2
     s21 (
      .i2(w36),
      .i1(w37),
      .o1(w39));

PNU_NOT
     s22 (
      .o1(w37),
      .i1(b29_1_w43));

PNU_NOT
     s23 (
      .o1(w36),
      .i1(b29_0_w50));

PNU_AND2
     s24 (
      .i2(w38),
      .o1(w40),
      .i1(b29_1_w43));

PNU_NOT
     s25 (
      .o1(w38),
      .i1(b29_0_w50));

PNU_OR2
     s26 (
      .i1(w39),
      .i2(w40),
      .o1(w41));

PNU_OR2
     s27 (
      .i1(w24),
      .i2(w44),
      .o1(w35));

PNU_AND3
     s28 (
      .i1(w29),
      .i3(w42),
      .i2(b29_2_w49),
      .o1(w51));

PNU_NOT
     s29 (
      .o1(w29),
      .i1(b29_3_w28));

PNU_NOT
     s30 (
      .o1(w42),
      .i1(b29_1_w43));

PNU_AND3
     s31 (
      .i1(w46),
      .i3(w47),
      .i2(b29_2_w49),
      .o1(w52));

PNU_NOT
     s32 (
      .i1(b29_3_w28),
      .o1(w46));

PNU_NOT
     s33 (
      .o1(w47),
      .i1(b29_0_w50));

PNU_AND3
     s34 (
      .i1(w48),
      .i2(b29_1_w43),
      .i3(b29_0_w50),
      .o1(w53));

PNU_NOT
     s35 (
      .o1(w48),
      .i1(b29_2_w49));

PNU_OR3
     s36 (
      .i1(w51),
      .i2(w52),
      .i3(w53),
      .o1(w54));

endmodule

