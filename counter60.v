module counter60(clk,rst,CNT10,CNT6,CAR);

input clk;
input rst;
output [3:0] CNT10;
output [2:0] CNT6;
output CAR;

wire [2:0] b13;
wire  w22;
wire  w23;
wire  w24;
wire  w25;
wire  w9;
wire  w10;
wire [3:0] b10;
wire  w15;
wire  w16;
wire  w17;
wire  w18;
wire  w26;
wire  b13_0_w19;
wire  b13_1_w20;
wire  b13_2_w21;
wire  b10_0_w11;
wire  b10_1_w12;
wire  b10_2_w13;
wire  b10_3_w14;

assign w9 = clk;
assign w10 = rst;
assign CNT10 = b10;
assign CNT6 = b13;
assign CAR = w25;

assign b13_0_w19 = {b13[0]};
assign b13_1_w20 = {b13[1]};
assign b13_2_w21 = {b13[2]};
assign b10_0_w11 = {b10[0]};
assign b10_1_w12 = {b10[1]};
assign b10_2_w13 = {b10[2]};
assign b10_3_w14 = {b10[3]};

counter6
     s3 (
      .CNT6A(b13),
      .rst(w10),
      .clk(w26));

PNU_NOT
     s8 (
      .i1(b13_2_w21),
      .o1(w22));

PNU_NOT
     s9 (
      .i1(b13_1_w20),
      .o1(w23));

PNU_NOT
     s10 (
      .i1(b13_0_w19),
      .o1(w24));

PNU_AND3
     s11 (
      .i1(w22),
      .i2(w23),
      .i3(w24),
      .o1(w25));

counter10
     s12 (
      .clk(w9),
      .rst(w10),
      .CNT10(b10));

PNU_NOT
     s6 (
      .i1(b10_3_w14),
      .o1(w15));

PNU_NOT
     s7 (
      .i1(b10_2_w13),
      .o1(w16));

PNU_NOT
     s13 (
      .i1(b10_1_w12),
      .o1(w17));

PNU_NOT
     s14 (
      .i1(b10_0_w11),
      .o1(w18));

PNU_AND4
     s15 (
      .i1(w15),
      .i2(w16),
      .i3(w17),
      .i4(w18),
      .o1(w26));

endmodule

