module LtoP(L,P,clk,rst);

input L;
output P;
input clk;
input rst;

wire  w0;
wire  w1;
wire  w3;
wire  w4;
wire  w5;
wire  w6;

assign w6 = L;
assign P = w5;
assign w0 = clk;
assign w1 = rst;

PNU_DFF
     s0 (
      .clock(w0),
      .reset(w1),
      .Q(w3),
      .D(w6));

PNU_NOT
     s1 (
      .i1(w3),
      .o1(w4));

PNU_AND2
     s2 (
      .i2(w4),
      .o1(w5),
      .i1(w6));

endmodule

