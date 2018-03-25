module to12to24(clk,rst,CNT24H1,CNT24H10);

input clk;
input rst;
output [3:0] CNT24H1;
output CNT24H10;

wire [3:0] b2;
wire  w6;
wire  w7;
wire  w8;
wire  w9;
wire  w10;
wire  w12;
wire  w13;
wire  w11;
wire  b2_1_w3;
wire  b2_2_w4;
wire  b2_3_w5;

assign w10 = clk;
assign w9 = rst;
assign CNT24H1 = b2;
assign CNT24H10 = w11;

assign b2_1_w3 = {b2[1]};
assign b2_2_w4 = {b2[2]};
assign b2_3_w5 = {b2[3]};

counter12
     s0 (
      .CNT12(b2),
      .rst(w9),
      .clk(w10));

PNU_NOT
     s1 (
      .i1(b2_3_w5),
      .o1(w6));

PNU_NOT
     s2 (
      .i1(b2_2_w4),
      .o1(w7));

PNU_NOT
     s3 (
      .i1(b2_1_w3),
      .o1(w8));

PNU_AND3
     s4 (
      .i1(w6),
      .i2(w7),
      .i3(w8),
      .o1(w13));

PNU_DFF
     s5 (
      .reset(w9),
      .clock(w10),
      .D(w12),
      .Q(w11));

PNU_XOR2
     s6 (
      .o1(w12),
      .i2(w13),
      .i1(w11));

endmodule

