module Counter24(CLK,RST,q,AMPM);

input CLK;
input RST;
output [3:0] q;
output AMPM;

wire [3:0] b0;
wire  w5;
wire  w10;
wire  w16;
wire  w14;
wire  w13;
wire  w15;
wire  w11;
wire  b0_0;
wire  b0_0_w2;
wire  b0_1;
wire  b0_1_w3;
wire  b0_3;
wire  b0_3_w6;
wire  b0_2;
wire  b0_2_w12;

assign w5 = CLK;
assign w14 = RST;
assign q = b0;
assign AMPM = w16;

assign b0[3] = b0_3;
assign b0[2] = b0_2;
assign b0[1] = b0_1;
assign b0[0] = b0_0;

assign b0_0_w2 = {b0[0]};
assign b0_1_w3 = {b0[1]};
assign b0_3_w6 = {b0[3]};
assign b0_2_w12 = {b0[2]};

PNU_JKFF
     s0 (
      .clock(w5),
      .Q(b0_0),
      .reset(w14),
      .J(w13),
      .K(w13));

PNU_JKFF
     s1 (
      .Q(b0_1),
      .clock(w10),
      .reset(w14),
      .J(w13),
      .K(w13));

PNU_JKFF
     s3 (
      .Q(b0_3),
      .reset(w14),
      .K(w13),
      .clock(w11),
      .J(b0_2_w12));

PNU_ONE
     s4 (
      .o1(w13));

PNU_NOT
     s5 (
      .i1(b0_0_w2),
      .o1(w10));

PNU_NOT
     s6 (
      .i1(b0_1_w3),
      .o1(w11));

PNU_NOT
     s8 (
      .i1(b0_3_w6),
      .o1(w15));

PNU_JKFF
     s9 (
      .Q(w16),
      .reset(w14),
      .J(w13),
      .K(w13),
      .clock(w15));

PNU_JKFF
     s2 (
      .reset(w14),
      .K(w13),
      .J(w15),
      .clock(w11),
      .Q(b0_2));

endmodule

