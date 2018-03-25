module counter60to7seg(clk,rst,MIN1,MIN10,SEC1,SEC10,HOUR1,HOUR10);

input clk;
input rst;
output [6:0] MIN1;
output [6:0] MIN10;
output [6:0] SEC1;
output [6:0] SEC10;
output [6:0] HOUR1;
output [6:0] HOUR10;

wire  w0;
wire  w11;
wire [3:0] b16;
wire [3:0] b21;
wire [6:0] b15;
wire [6:0] b19;
wire [6:0] b18;
wire [6:0] b17;
wire [3:0] b20;
wire [3:0] b22;
wire [6:0] b24;
wire [3:0] b29;
wire [6:0] b31;
wire  w32;
wire  w33;
wire [3:0] b23;
wire [3:0] b25;
wire [2:0] b16_2to0;
wire  b16_3;
wire [2:0] b21_2to0;
wire  b21_3;
wire  b29_1;
wire  b29_2;
wire  b29_3;
wire  b29_0;

assign w0 = clk;
assign w33 = rst;
assign MIN1 = b19;
assign MIN10 = b15;
assign SEC1 = b17;
assign SEC10 = b18;
assign HOUR1 = b24;
assign HOUR10 = b31;

assign b16[3] = b16_3;
assign b16[2:0] = b16_2to0[2:0];
assign b21[3] = b21_3;
assign b21[2:0] = b21_2to0[2:0];
assign b29[3] = b29_3;
assign b29[2] = b29_2;
assign b29[1] = b29_1;
assign b29[0] = b29_0;

PNU_ZERO
     s11 (
      .o1(b16_3));

PNU_ZERO
     s12 (
      .o1(b21_3));

counter60
     s6 (
      .clk(w11),
      .CNT6(b21_2to0),
      .CNT10(b22),
      .CAR(w32),
      .rst(w33));

counter60
     s9 (
      .clk(w0),
      .CAR(w11),
      .CNT6(b16_2to0),
      .CNT10(b20),
      .rst(w33));

week08_7segment
     s4 (
      .p1(b17),
      .inDtB(b20));

week08_7segment
     s5 (
      .p1(b18),
      .inDtB(b16));

week08_7segment
     s7 (
      .p1(b19),
      .inDtB(b22));

week08_7segment
     s8 (
      .p1(b15),
      .inDtB(b21));

counter12
     s10 (
      .clk(w32),
      .rst(w33),
      .CNT12(b23));

week08_7segment
     s20 (
      .inDtB(b29),
      .p1(b31));

PNU_ZERO
     s21 (
      .o1(b29_1));

PNU_ZERO
     s22 (
      .o1(b29_2));

PNU_ZERO
     s23 (
      .o1(b29_3));

counter12Decoder
     s14 (
      .CNT12(b23),
      .cntHOUR1(b25),
      .cntHOUR10(b29_0));

week08_7segment
     s13 (
      .p1(b24),
      .inDtB(b25));

endmodule

