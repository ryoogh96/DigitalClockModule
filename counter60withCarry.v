module counter60(clk,rst,CNT10,CNT6,CAR);

input clk;
input rst;
output [3:0] CNT10;
output [2:0] CNT6;
output CAR;

wire  w2;
wire  w8;
wire [3:0] b4;
wire  w14;
wire  w15;
wire  w16;
wire  w17;
wire  w18;
wire [2:0] b13;
wire  w22;
wire  w23;
wire  w24;
wire  w25;
wire  b4_0_w9;
wire  b4_1_w11;
wire  b4_2_w12;
wire  b4_3_w13;
wire  b13_0_w19;
wire  b13_1_w20;
wire  b13_2_w21;

assign w2 = clk;
assign w8 = rst;
assign CNT10 = b4;
assign CNT6 = b13;
assign CAR = w25;

assign b4_0_w9 = {b4[0]};
assign b4_1_w11 = {b4[1]};
assign b4_2_w12 = {b4[2]};
assign b4_3_w13 = {b4[3]};
assign b13_0_w19 = {b13[0]};
assign b13_1_w20 = {b13[1]};
assign b13_2_w21 = {b13[2]};

counter10
     s0 (
      .clk(w2),
      .rst(w8),
      .CNT10(b4));

PNU_NOT
     s2 (
      .i1(b4_3_w13),
      .o1(w14));

PNU_NOT
     s4 (
      .i1(b4_2_w12),
      .o1(w15));

PNU_NOT
     s5 (
      .i1(b4_1_w11),
      .o1(w16));

PNU_NOT
     s6 (
      .i1(b4_0_w9),
      .o1(w17));

PNU_AND4
     s7 (
      .i1(w14),
      .i2(w15),
      .i3(w16),
      .i4(w17),
      .o1(w18));

counter6
     s3 (
      .rst(w8),
      .clk(w18),
      .CNT6A(b13));

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

endmodule

