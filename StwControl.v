module StwControl(SW_F1,SW_F2,CLK,RST,STW_ON,STW_RST_N);

input SW_F1;
input SW_F2;
input CLK;
input RST;
output STW_ON;
output STW_RST_N;

wire  w1;
wire  w3;
wire  w6;
wire  w7;
wire  w8;
wire  w9;
wire  w10;
wire  w11;
wire  w12;
wire  w14;
wire  w18;
wire  w19;
wire  w20;
wire  w21;
wire  w22;
wire  w23;
wire  w24;
wire  w17;

assign w18 = SW_F1;
assign w1 = SW_F2;
assign w20 = CLK;
assign w21 = RST;
assign STW_ON = w22;
assign STW_RST_N = w24;

PNU_AND3
     s1 (
      .i1(w3),
      .o1(w11),
      .i3(w14),
      .i2(w17));

PNU_AND4
     s2 (
      .o1(w12),
      .i1(w18),
      .i3(w23),
      .i4(w24),
      .i2(w17));

PNU_NOT
     s3 (
      .i1(w1),
      .o1(w17));

PNU_AND2
     s4 (
      .o1(w8),
      .i2(w24),
      .i1(w17));

PNU_AND2
     s5 (
      .o1(w9),
      .i1(w18),
      .i2(w17));

PNU_AND2
     s6 (
      .o1(w10),
      .i1(w18),
      .i2(w19));

PNU_OR3
     s7 (
      .o1(w7),
      .i1(w8),
      .i2(w9),
      .i3(w10));

PNU_OR2
     s8 (
      .o1(w6),
      .i1(w11),
      .i2(w12));

PNU_NOT
     s9 (
      .o1(w3),
      .i1(w18));

PNU_DFF
     s10 (
      .D(w6),
      .Q(w14),
      .clock(w20),
      .reset(w21));

PNU_DFF
     s11 (
      .D(w7),
      .clock(w20),
      .reset(w21),
      .Q(w24));

PNU_NOT
     s12 (
      .i1(w14),
      .o1(w23));

PNU_NOT
     s13 (
      .o1(w19),
      .i1(w24));

PNU_AND2
     s14 (
      .o1(w22),
      .i1(w23),
      .i2(w24));

endmodule

