module counter6(clk,rst,CNT6A);

input clk;
input rst;
output [2:0] CNT6A;

wire  w1;
wire  w2;
wire  w17;
wire  w21;
wire  w22;
wire  w20;
wire  w15;
wire  w12;
wire  w13;
wire  w19;
wire  w23;
wire  w25;
wire  w26;
wire  w27;
wire [2:0] b17;
wire  b17_0;
wire  b17_0_w18;
wire  b17_1;
wire  b17_1_w28;
wire  b17_2;
wire  b17_2_w24;

assign w2 = clk;
assign w1 = rst;
assign CNT6A = b17;

assign b17[2] = b17_2;
assign b17[1] = b17_1;
assign b17[0] = b17_0;

assign b17_0_w18 = {b17[0]};
assign b17_1_w28 = {b17[1]};
assign b17_2_w24 = {b17[2]};

PNU_DFF
     s0 (
      .reset(w1),
      .clock(w2),
      .D(w17),
      .Q(b17_0));

PNU_DFF
     s2 (
      .reset(w1),
      .clock(w2),
      .D(w15),
      .Q(b17_2));

PNU_DFF
     s1 (
      .reset(w1),
      .clock(w2),
      .D(w27),
      .Q(b17_1));

PNU_NOT
     s10 (
      .o1(w17),
      .i1(b17_0_w18));

PNU_AND2
     s11 (
      .o1(w20),
      .i2(b17_0_w18),
      .i1(b17_1_w28));

PNU_AND2
     s12 (
      .i2(w21),
      .o1(w22),
      .i1(b17_2_w24));

PNU_NOT
     s13 (
      .o1(w21),
      .i1(b17_0_w18));

PNU_OR2
     s14 (
      .i1(w22),
      .i2(w20),
      .o1(w15));

PNU_NOT
     s8 (
      .o1(w13),
      .i1(b17_2_w24));

PNU_NOT
     s9 (
      .o1(w12),
      .i1(b17_1_w28));

PNU_AND3
     s15 (
      .i2(w12),
      .i1(w13),
      .o1(w25),
      .i3(b17_0_w18));

PNU_AND3
     s16 (
      .i1(w19),
      .i3(w23),
      .o1(w26),
      .i2(b17_1_w28));

PNU_NOT
     s17 (
      .o1(w19),
      .i1(b17_2_w24));

PNU_NOT
     s18 (
      .o1(w23),
      .i1(b17_0_w18));

PNU_OR2
     s19 (
      .i1(w25),
      .i2(w26),
      .o1(w27));

endmodule

