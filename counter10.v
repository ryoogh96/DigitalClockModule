module counter10(clk,rst,CNT10);

input clk;
input rst;
output [3:0] CNT10;

wire  w2;
wire  w1;
wire  w10;
wire  w12;
wire  w13;
wire  w14;
wire  w16;
wire  w18;
wire  w19;
wire  w20;
wire  w22;
wire  w24;
wire  w25;
wire  w29;
wire  w28;
wire  w27;
wire  w26;
wire [3:0] b21;
wire  b21_0;
wire  b21_0_w30;
wire  b21_1;
wire  b21_1_w31;
wire  b21_2;
wire  b21_2_w21;
wire  b21_3;
wire  b21_3_w23;

assign w2 = clk;
assign w1 = rst;
assign CNT10 = b21;

assign b21[3] = b21_3;
assign b21[2] = b21_2;
assign b21[1] = b21_1;
assign b21[0] = b21_0;

assign b21_0_w30 = {b21[0]};
assign b21_1_w31 = {b21[1]};
assign b21_2_w21 = {b21[2]};
assign b21_3_w23 = {b21[3]};

PNU_DFF
     s0 (
      .clock(w2),
      .reset(w1),
      .D(w29),
      .Q(b21_3));

PNU_DFF
     s1 (
      .clock(w2),
      .reset(w1),
      .D(w28),
      .Q(b21_2));

PNU_DFF
     s2 (
      .clock(w2),
      .reset(w1),
      .D(w27),
      .Q(b21_1));

PNU_DFF
     s3 (
      .clock(w2),
      .reset(w1),
      .D(w26),
      .Q(b21_0));

PNU_AND2
     s4 (
      .i2(w10),
      .o1(w12),
      .i1(b21_3_w23));

PNU_NOT
     s5 (
      .o1(w10),
      .i1(b21_0_w30));

PNU_AND3
     s6 (
      .o1(w13),
      .i3(b21_0_w30),
      .i2(b21_1_w31),
      .i1(b21_2_w21));

PNU_OR2
     s7 (
      .i1(w12),
      .i2(w13),
      .o1(w29));

PNU_AND2
     s8 (
      .i2(w14),
      .o1(w18),
      .i1(b21_2_w21));

PNU_NOT
     s9 (
      .o1(w14),
      .i1(b21_1_w31));

PNU_AND2
     s10 (
      .i2(w16),
      .o1(w19),
      .i1(b21_2_w21));

PNU_NOT
     s11 (
      .o1(w16),
      .i1(b21_0_w30));

PNU_OR3
     s12 (
      .i1(w18),
      .i2(w19),
      .i3(w22),
      .o1(w28));

PNU_AND3
     s13 (
      .i1(w20),
      .o1(w22),
      .i3(b21_0_w30),
      .i2(b21_1_w31));

PNU_NOT
     s14 (
      .o1(w20),
      .i1(b21_2_w21));

PNU_XOR2
     s15 (
      .o1(w24),
      .i2(b21_0_w30),
      .i1(b21_1_w31));

PNU_NOT
     s16 (
      .o1(w25),
      .i1(b21_3_w23));

PNU_AND2
     s17 (
      .i1(w24),
      .i2(w25),
      .o1(w27));

PNU_NOT
     s18 (
      .o1(w26),
      .i1(b21_0_w30));

endmodule

