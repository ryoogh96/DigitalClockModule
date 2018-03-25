module AlarmControlnstance_tb;

reg SW_F1;
reg CLK;
reg RST;
reg SW_F2;
wire ALM_HOUR;
wire ALM_MIN;
wire ALM_ONOFF;

AlarmControlnstance
 U0 (
  .SW_F1(SW_F1),
  .CLK(CLK),
  .RST(RST),
  .SW_F2(SW_F2),
  .ALM_HOUR(ALM_HOUR),
  .ALM_MIN(ALM_MIN),
  .ALM_ONOFF(ALM_ONOFF));

  initial
  begin
    SW_F1 = 1'b0;
    #300 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
    #100 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
    #100 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
    #100 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
    #200 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
    #500 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
    #400 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
    #500 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
    #500 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
    #600 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
    #800 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
    #500 SW_F1 = 1'b1;
    #100 SW_F1 = 1'b0;
  end

  initial
    CLK = 1'b0;

  always
  begin : GenCLK
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
  end

  initial
  begin
    RST = 1'b0;
    #100 RST = 1'b1;
    #100 RST = 1'b0;
  end

  initial
  begin
    SW_F2 = 1'b0;
    #1400 SW_F2 = 1'b1;
    #300 SW_F2 = 1'b0;
    #300 SW_F2 = 1'b1;
    #100 SW_F2 = 1'b0;
    #400 SW_F2 = 1'b1;
    #200 SW_F2 = 1'b0;
    #400 SW_F2 = 1'b1;
    #200 SW_F2 = 1'b0;
    #400 SW_F2 = 1'b1;
    #200 SW_F2 = 1'b0;
    #600 SW_F2 = 1'b1;
    #200 SW_F2 = 1'b0;
    #600 SW_F2 = 1'b1;
    #200 SW_F2 = 1'b0;
    #500 SW_F2 = 1'b1;
    #200 SW_F2 = 1'b0;
  end

endmodule
