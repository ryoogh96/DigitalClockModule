module StwControl(reset, clock, SW_F1, SW_F2, STW_ON, STW_RST_N, CLK, RST);
  input reset;
  input clock;
  input SW_F1;
  input SW_F2;
  output STW_ON;
  output STW_RST_N;
  input CLK;
  input RST;

  reg STW_ON;
  reg STW_RST_N;

  parameter [1:0] IDLE = 0, RUN = 1, HOLD = 2;
  reg [1:0] current_state, next_state;

  always @(posedge clock or posedge reset)
  begin: SYNCH
    if (reset == 1'b1)
       current_state <= IDLE;
    else
       current_state <= next_state;
  end

  always @(current_state or SW_F1 or SW_F2 or CLK or RST)
  begin: COMBIN
     case (current_state)
        IDLE:
        begin
          if (!(SW_F1))
             begin
             next_state <= IDLE;
             end
          else if (SW_F1)
             begin
             next_state <= RUN;
             end
          else
             begin
             next_state <= IDLE;
             end
          STW_ON <= 1'b0;

        end

        RUN:
        begin
          if (!(SW_F1) && !(SW_F2))
             begin
             next_state <= RUN;
             end
          else if (SW_F2)
             begin
             next_state <= IDLE;
             end
          else if (SW_F1 && !(SW_F2))
             begin
             next_state <= HOLD;
             end
          STW_ON <= 1'b1;

        end

        HOLD:
        begin
          if (!(SW_F1) && !(SW_F2))
             begin
             next_state <= HOLD;
             end
          else if (SW_F2)
             begin
             next_state <= IDLE;
             end
          else if (SW_F1 && !(SW_F2))
             begin
             next_state <= RUN;
             end
          STW_ON <= 1'b0;

        end


        default:
          next_state <= IDLE;
     endcase
  end

endmodule
