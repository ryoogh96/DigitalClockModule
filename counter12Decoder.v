module counter12Decoder(CNT12,cntHOUR10,cntHOUR1);

input [3:0] CNT12;
output cntHOUR10;
output [3:0] cntHOUR1;

wire [3:0] b2;
wire  w7;
wire  w8;
wire  w10;
wire  w12;
wire  w14;
wire  w15;
wire  w16;
wire [3:0] b12;
wire  w17;
wire  w22;
wire  w23;
wire  w24;
wire  w26;
wire  w27;
wire  w28;
wire  w30;
wire  w34;
wire  b12_3;
wire  b2_3_w19;
wire  b12_1;
wire  b12_2;
wire  b2_0_w25;
wire  b12_0;
wire  b2_1_w31;
wire  b2_2_w35;

assign b2 = CNT12;
assign cntHOUR10 = w16;
assign cntHOUR1 = b12;

assign b12[3] = b12_3;
assign b12[2] = b12_2;
assign b12[1] = b12_1;
assign b12[0] = b12_0;

assign b2_3_w19 = {b2[3]};
assign b2_0_w25 = {b2[0]};
assign b2_1_w31 = {b2[1]};
assign b2_2_w35 = {b2[2]};

PNU_AND2
     s0 (
      .o1(w14),
      .i1(b2_3_w19),
      .i2(b2_1_w31));

PNU_AND4
     s1 (
      .i1(w7),
      .i2(w8),
      .i3(w10),
      .i4(w12),
      .o1(w15));

PNU_NOT
     s2 (
      .o1(w7),
      .i1(b2_3_w19));

PNU_NOT
     s3 (
      .o1(w8),
      .i1(b2_2_w35));

PNU_NOT
     s4 (
      .o1(w10),
      .i1(b2_1_w31));

PNU_NOT
     s5 (
      .o1(w12),
      .i1(b2_0_w25));

PNU_OR2
     s6 (
      .i1(w14),
      .i2(w15),
      .o1(w16));

PNU_AND2
     s7 (
      .i1(w17),
      .o1(b12_3),
      .i2(b2_3_w19));

PNU_NOT
     s8 (
      .o1(w17),
      .i1(b2_1_w31));

PNU_AND3
     s9 (
      .i1(w22),
      .i2(w23),
      .i3(w24),
      .o1(w27));

PNU_NOT
     s10 (
      .o1(w22),
      .i1(b2_3_w19));

PNU_NOT
     s11 (
      .o1(w23),
      .i1(b2_2_w35));

PNU_NOT
     s12 (
      .o1(w24),
      .i1(b2_0_w25));

PNU_AND2
     s13 (
      .i1(w26),
      .o1(w28),
      .i2(b2_1_w31));

PNU_NOT
     s14 (
      .o1(w26),
      .i1(b2_3_w19));

PNU_OR2
     s15 (
      .i1(w27),
      .i2(w28),
      .o1(b12_1));

PNU_ONE
     s16 (
      .o1(w30));

PNU_AND2
     s17 (
      .i1(w30),
      .o1(b12_2),
      .i2(b2_2_w35));

PNU_AND2
     s18 (
      .i1(b2_0_w25),
      .o1(b12_0),
      .i2(w34));

PNU_ONE
     s19 (
      .o1(w34));

endmodule

