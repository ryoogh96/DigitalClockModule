module TIME(CLK,RST,TIMESET_RUN,SW_F1,SW_F2,TIM_AMPM,TIM_MINHIGH,TIM_HOUR,TIM_MINLOW,TIM_SECHIGH,TIM_SECLOW);

input CLK;
input RST;
input TIMESET_RUN;
input SW_F1;
input SW_F2;
output TIM_AMPM;
output [2:0] TIM_MINHIGH;
output [3:0] TIM_HOUR;
output [3:0] TIM_MINLOW;
output [2:0] TIM_SECHIGH;
output [3:0] TIM_SECLOW;

wire  w0;
wire  w6;
wire  w12;
wire  w15;
wire  w16;
wire  w26;
wire [3:0] b23;
wire [2:0] b27;
wire [3:0] b25;
wire [2:0] b26;
wire  w29;
wire  w24;
wire  w30;
wire  w28;
wire  w31;
wire  w32;
wire  w33;
wire  w34;
wire [3:0] b24;
wire  w35;
wire  w22;
wire  b27_2_w25;
wire  b26_2_w27;

assign w0 = CLK;
assign w24 = RST;
assign w6 = TIMESET_RUN;
assign w29 = SW_F1;
assign w28 = SW_F2;
assign TIM_AMPM = w34;
assign TIM_MINHIGH = b26;
assign TIM_HOUR = b24;
assign TIM_MINLOW = b25;
assign TIM_SECHIGH = b27;
assign TIM_SECLOW = b23;

assign b27_2_w25 = {b27[2]};
assign b26_2_w27 = {b26[2]};

PNU_AND2
     s1 (
      .i1(w0),
      .i2(w6),
      .o1(w30));

PNU_NOT
     s3 (
      .i1(w6),
      .o1(w22));

PNU_XOR2
     s4 (
      .o1(w16),
      .i1(w33),
      .i2(w22));

counter60
     s5 (
      .clk(w16),
      .CNT10(b23),
      .CNT6(b27),
      .rst(w24),
      .CAR());

counter60
     s6 (
      .clk(w15),
      .CNT10(b25),
      .CNT6(b26),
      .rst(w24),
      .CAR());

PNU_XOR2
     s9 (
      .o1(w15),
      .i2(w26),
      .i1(w32));

PNU_NOT
     s10 (
      .i1(b26_2_w27),
      .o1(w35));

PNU_NOT
     s11 (
      .o1(w26),
      .i1(b27_2_w25));

PNU_XOR2
     s8 (
      .o1(w12),
      .i1(w31),
      .i2(w35));

TimeControl
     s13 (
      .SW_F1(w29),
      .RST(w24),
      .CLK(w30),
      .SW_F2(w28),
      .TIME_HOUR(w31),
      .TIME_MIN(w32),
      .TIME_SEC(w33));

Counter24
     s12 (
      .CLK(w12),
      .RST(w24),
      .AMPM(w34),
      .q(b24));

endmodule

