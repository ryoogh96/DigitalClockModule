module comSelector(InCNT8,ComOut);

input [2:0] InCNT8;
output [7:0] ComOut;

wire [2:0] b0;
wire [7:0] b14;
wire  w11;
wire  w13;
wire  w17;
wire  w18;
wire  w20;
wire  w23;
wire  w25;
wire  w28;
wire  w29;
wire  w31;
wire  w32;
wire  w33;
wire  b14_0;
wire  b14_1;
wire  b14_2;
wire  b14_3;
wire  b14_4;
wire  b14_5;
wire  b14_6;
wire  b14_7;
wire  b0_0_w24;
wire  b0_1_w26;
wire  b0_2_w34;

assign b0 = InCNT8;
assign ComOut = b14;

assign b14[7] = b14_7;
assign b14[6] = b14_6;
assign b14[5] = b14_5;
assign b14[4] = b14_4;
assign b14[3] = b14_3;
assign b14[2] = b14_2;
assign b14[1] = b14_1;
assign b14[0] = b14_0;

assign b0_0_w24 = {b0[0]};
assign b0_1_w26 = {b0[1]};
assign b0_2_w34 = {b0[2]};

PNU_NOT
     s2 (
      .o1(w11),
      .i1(b0_0_w24));

PNU_NOT
     s4 (
      .o1(w13),
      .i1(b0_1_w26));

PNU_NOT
     s6 (
      .o1(w17),
      .i1(b0_1_w26));

PNU_NOT
     s7 (
      .o1(w18),
      .i1(b0_0_w24));

PNU_NOT
     s9 (
      .o1(w20),
      .i1(b0_2_w34));

PNU_NOT
     s11 (
      .o1(w25),
      .i1(b0_2_w34));

PNU_NOT
     s12 (
      .o1(w23),
      .i1(b0_0_w24));

PNU_NOT
     s14 (
      .o1(w28),
      .i1(b0_2_w34));

PNU_NOT
     s15 (
      .o1(w29),
      .i1(b0_1_w26));

PNU_NOT
     s17 (
      .o1(w31),
      .i1(b0_2_w34));

PNU_NOT
     s18 (
      .o1(w32),
      .i1(b0_1_w26));

PNU_NOT
     s19 (
      .o1(w33),
      .i1(b0_0_w24));

PNU_OR3
     s13 (
      .o1(b14_7),
      .i1(w31),
      .i2(w32),
      .i3(w33));

PNU_OR3
     s16 (
      .o1(b14_6),
      .i1(w28),
      .i2(w29),
      .i3(b0_0_w24));

PNU_OR3
     s20 (
      .o1(b14_5),
      .i3(w23),
      .i1(w25),
      .i2(b0_1_w26));

PNU_OR3
     s21 (
      .o1(b14_4),
      .i1(w20),
      .i3(b0_0_w24),
      .i2(b0_1_w26));

PNU_OR3
     s22 (
      .o1(b14_3),
      .i2(w17),
      .i3(w18),
      .i1(b0_2_w34));

PNU_OR3
     s23 (
      .o1(b14_2),
      .i2(w13),
      .i3(b0_0_w24),
      .i1(b0_2_w34));

PNU_OR3
     s24 (
      .o1(b14_1),
      .i3(w11),
      .i2(b0_1_w26),
      .i1(b0_2_w34));

PNU_OR3
     s25 (
      .o1(b14_0),
      .i3(b0_0_w24),
      .i2(b0_1_w26),
      .i1(b0_2_w34));

endmodule

