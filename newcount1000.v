module newcount1000(clk,rst,MIL001,MIL010,MIL100);

input clk;
input rst;
output [3:0] MIL001;
output [3:0] MIL010;
output [3:0] MIL100;

wire  w0;
wire [3:0] b21;
wire  w7;
wire  w8;
wire  w9;
wire  w10;
wire  w11;
wire [3:0] b22;
wire  w17;
wire  w18;
wire  w19;
wire  w20;
wire  w21;
wire  w22;
wire [3:0] b23;
wire  b21_3_w3;
wire  b21_2_w4;
wire  b21_1_w5;
wire  b21_0_w6;
wire  b22_3_w13;
wire  b22_2_w14;
wire  b22_1_w15;
wire  b22_0_w16;

assign w0 = clk;
assign w22 = rst;
assign MIL001 = b21;
assign MIL010 = b22;
assign MIL100 = b23;

assign b21_3_w3 = {b21[3]};
assign b21_2_w4 = {b21[2]};
assign b21_1_w5 = {b21[1]};
assign b21_0_w6 = {b21[0]};
assign b22_3_w13 = {b22[3]};
assign b22_2_w14 = {b22[2]};
assign b22_1_w15 = {b22[1]};
assign b22_0_w16 = {b22[0]};

counter10
     s0 (
      .clk(w0),
      .rst(w22),
      .CNT10(b21));

counter10
     s1 (
      .clk(w11),
      .rst(w22),
      .CNT10(b22));

counter10
     s2 (
      .clk(w21),
      .rst(w22),
      .CNT10(b23));

PNU_NOT
     s3 (
      .i1(b21_3_w3),
      .o1(w7));

PNU_NOT
     s4 (
      .i1(b21_2_w4),
      .o1(w8));

PNU_NOT
     s5 (
      .i1(b21_1_w5),
      .o1(w9));

PNU_NOT
     s6 (
      .i1(b21_0_w6),
      .o1(w10));

PNU_AND4
     s7 (
      .i1(w7),
      .i2(w8),
      .i3(w9),
      .i4(w10),
      .o1(w11));

PNU_NOT
     s8 (
      .i1(b22_3_w13),
      .o1(w17));

PNU_NOT
     s9 (
      .i1(b22_2_w14),
      .o1(w18));

PNU_NOT
     s10 (
      .i1(b22_1_w15),
      .o1(w19));

PNU_NOT
     s11 (
      .i1(b22_0_w16),
      .o1(w20));

PNU_AND4
     s12 (
      .i1(w17),
      .i2(w18),
      .i3(w19),
      .i4(w20),
      .o1(w21));

endmodule

