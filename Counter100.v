module Counter100(CLK,RST,MSEC1ST,MSEC2ND);

input CLK;
input RST;
output [3:0] MSEC1ST;
output [3:0] MSEC2ND;

wire  w0;
wire [3:0] b2;
wire  w4;
wire  w5;
wire [3:0] b5;
wire  b2_0_w3;

assign w0 = CLK;
assign w5 = RST;
assign MSEC1ST = b2;
assign MSEC2ND = b5;

assign b2_0_w3 = {b2[0]};

counter10
     s0 (
      .clk(w0),
      .CNT10(b2),
      .rst(w5));

counter10
     s1 (
      .clk(w4),
      .rst(w5),
      .CNT10(b5));

PNU_NOT
     s2 (
      .i1(b2_0_w3),
      .o1(w4));

endmodule

