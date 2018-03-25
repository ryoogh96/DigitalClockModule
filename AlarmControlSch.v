module AlarmControlSch(CLK,RST,SW_F1,SW_F2,ALM_ONOFF,ALM_HOUR,ALM_MIN);

input CLK;
input RST;
input SW_F1;
input SW_F2;
output ALM_ONOFF;
output ALM_HOUR;
output ALM_MIN;

wire  w0;
wire  w1;
wire  w2;
wire  w3;
wire  w4;
wire  w5;
wire  w6;

assign w2 = CLK;
assign w3 = RST;
assign w0 = SW_F1;
assign w1 = SW_F2;
assign ALM_ONOFF = w6;
assign ALM_HOUR = w4;
assign ALM_MIN = w5;

AlarmControl
     #(
      .IDLE(0),
      .INCHOUR(6),
      .INCMIN(1),
      .SETHOUR(5),
      .SETMIN(2),
      .SETONOFF(3),
      .TOGGLE(4))
     s0 (
      .SW_F1(w0),
      .SW_F2(w1),
      .clock(w2),
      .reset(w3),
      .ALM_HOUR(w4),
      .ALM_MIN(w5),
      .ALM_ONOFF(w6));

endmodule

