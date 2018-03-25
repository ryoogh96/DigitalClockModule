module AlarmControlnstance(SW_F1,SW_F2,CLK,RST,ALM_ONOFF,ALM_HOUR,ALM_MIN);

input SW_F1;
input SW_F2;
input CLK;
input RST;
output ALM_ONOFF;
output ALM_HOUR;
output ALM_MIN;

wire  w0;
wire  w1;
wire  w2;
wire  w5;
wire  w6;
wire  w7;
wire  w8;
wire  w9;
wire  w10;
wire  w11;
wire  w12;
wire  w13;
wire  w14;
wire  w15;
wire  w16;
wire  w17;
wire  w18;
wire  w19;
wire  w20;
wire  w21;
wire  w22;
wire  w25;
wire  w28;
wire  w30;
wire  w26;
wire  w29;
wire  w27;

assign w30 = SW_F1;
assign w5 = SW_F2;
assign w16 = CLK;
assign w17 = RST;
assign ALM_ONOFF = w2;
assign ALM_HOUR = w1;
assign ALM_MIN = w0;

PNU_AND3
     s1 (
      .o1(w7),
      .i2(w25),
      .i3(w28),
      .i1(w30));

PNU_AND3
     s2 (
      .o1(w8),
      .i2(w21),
      .i1(w30),
      .i3(w27));

PNU_OR3
     s3 (
      .i1(w6),
      .i2(w7),
      .i3(w8),
      .o1(w18));

PNU_AND2
     s4 (
      .o1(w9),
      .i2(w22),
      .i1(w30));

PNU_OR3
     s7 (
      .i1(w9),
      .i2(w10),
      .i3(w11),
      .o1(w19));

PNU_AND4
     s8 (
      .i2(w5),
      .o1(w12),
      .i3(w25),
      .i4(w28),
      .i1(w29));

PNU_DFF
     s11 (
      .clock(w16),
      .reset(w17),
      .D(w18),
      .Q(w21));

PNU_DFF
     s12 (
      .clock(w16),
      .reset(w17),
      .D(w19),
      .Q(w25));

PNU_NOT
     s14 (
      .i1(w21),
      .o1(w22));

PNU_NOT
     s15 (
      .i1(w25),
      .o1(w26));

PNU_NOT
     s16 (
      .o1(w28),
      .i1(w27));

PNU_AND3
     s17 (
      .o1(w2),
      .i1(w22),
      .i2(w25),
      .i3(w27));

PNU_AND3
     s19 (
      .o1(w0),
      .i1(w21),
      .i2(w26),
      .i3(w27));

PNU_NOT
     s20 (
      .i1(w30),
      .o1(w29));

PNU_AND2
     s23 (
      .o1(w6),
      .i2(w21),
      .i1(w29));

PNU_DFF
     s25 (
      .clock(w16),
      .reset(w17),
      .D(w20),
      .Q(w27));

PNU_OR2
     s22 (
      .i1(w12),
      .i2(w15),
      .o1(w20));

PNU_AND3
     s18 (
      .o1(w1),
      .i1(w21),
      .i2(w25),
      .i3(w27));

PNU_AND3
     s21 (
      .i2(w5),
      .o1(w13),
      .i3(w21),
      .i1(w29));

PNU_AND2
     s27 (
      .i1(w13),
      .i2(w14),
      .o1(w15));

PNU_AND3
     s24 (
      .o1(w11),
      .i1(w21),
      .i2(w25),
      .i3(w27));

PNU_AND2
     s5 (
      .o1(w10),
      .i2(w25),
      .i1(w29));

PNU_AND2
     s26 (
      .o1(w14),
      .i2(w28),
      .i1(w26));

endmodule

