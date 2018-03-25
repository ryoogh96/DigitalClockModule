module count8(clk,rst,out);

input clk;
input rst;
output [2:0] out;

wire  w0;
wire  w2;
wire  w5;
wire [2:0] b7;
wire  w11;
wire  w12;
wire  w13;
wire  w14;
wire  b7_2;
wire  b7_2_w10;
wire  b7_1;
wire  b7_1_w15;
wire  b7_0;
wire  b7_0_w16;

assign w13 = clk;
assign w12 = rst;
assign out = b7;

assign b7[2] = b7_2;
assign b7[1] = b7_1;
assign b7[0] = b7_0;

assign b7_2_w10 = {b7[2]};
assign b7_1_w15 = {b7[1]};
assign b7_0_w16 = {b7[0]};

PNU_DFF_Ce
     s0 (
      .Ce(w0),
      .D(w2),
      .reset(w12),
      .clock(w13),
      .Q(b7_0));

PNU_DFF_Ce
     s1 (
      .D(w5),
      .reset(w12),
      .clock(w13),
      .Q(b7_1),
      .Ce(b7_0_w16));

PNU_ONE
     s2 (
      .o1(w0));

PNU_NOT
     s3 (
      .o1(w2),
      .i1(b7_0_w16));

PNU_NOT
     s4 (
      .o1(w5),
      .i1(b7_1_w15));

PNU_DFF_Ce
     s5 (
      .D(w11),
      .Q(b7_2),
      .reset(w12),
      .clock(w13),
      .Ce(w14));

PNU_NOT
     s6 (
      .o1(w11),
      .i1(b7_2_w10));

PNU_AND2
     s7 (
      .o1(w14),
      .i1(b7_1_w15),
      .i2(b7_0_w16));

endmodule

