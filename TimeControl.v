module TimeControl(SW_F1,SW_F2,RST,TIME_SEC,TIME_HOUR,CLK,TIME_MIN);

input SW_F1;
input SW_F2;
input RST;
output TIME_SEC;
output TIME_HOUR;
input CLK;
output TIME_MIN;

wire  w8;
wire  w9;
wire  w5;
wire  w7;
wire  w4;
wire  w6;
wire  w10;

assign w5 = SW_F1;
assign w7 = SW_F2;
assign w9 = RST;
assign TIME_SEC = w10;
assign TIME_HOUR = w6;
assign w8 = CLK;
assign TIME_MIN = w4;

AlarmControlnstance
     s0 (
      .CLK(w8),
      .RST(w9),
      .SW_F1(w5),
      .SW_F2(w7),
      .ALM_HOUR(w4),
      .ALM_MIN(w6),
      .ALM_ONOFF(w10));

endmodule

