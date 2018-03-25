module AlarmControl(reset, clock, SW_F1, SW_F2, ALM_ONOFF, ALM_HOUR, ALM_MIN);
  input reset;
  input clock;
  input SW_F1;
  input SW_F2;
  output ALM_ONOFF;
  output ALM_HOUR;
  output ALM_MIN;

  reg ALM_ONOFF;
  reg ALM_HOUR;
  reg ALM_MIN;

  parameter [2:0] IDLE = 0, INCMIN = 1, SETMIN = 2, SETONOFF = 3, TOGGLE = 4, SETHOUR = 5, INCHOUR = 6;
  reg [2:0] current_state, next_state;

  always @(posedge clock or negedge reset)
  begin: SYNCH
    if (reset == 1'b0)
       current_state <= IDLE;
    else
       current_state <= next_state;
  end

  always @(current_state or SW_F1 or SW_F2)
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
             next_state <= SETONOFF;
             end
          ALM_ONOFF <= 1'b0;
          ALM_HOUR <= 1'b0;
          ALM_MIN <= 1'b0;

        end

        INCMIN:
        begin
            next_state <= SETMIN;
          ALM_ONOFF <= 1'b0;
          ALM_HOUR <= 1'b0;
          ALM_MIN <= 1'b1;

        end

        SETMIN:
        begin
          if (SW_F1)
             begin
             next_state <= IDLE;
             end
          else if (SW_F2)
             begin
             next_state <= INCMIN;
             end
          else if (!(SW_F1))
             begin
             next_state <= SETMIN;
             end
          ALM_ONOFF <= 1'b0;
          ALM_HOUR <= 1'b0;
          ALM_MIN <= 1'b0;

        end

        SETONOFF:
        begin
          if (SW_F2)
             begin
             next_state <= TOGGLE;
             end
          else if (!(SW_F1))
             begin
             next_state <= SETONOFF;
             end
          else if (SW_F1)
             begin
             next_state <= SETHOUR;
             end
          ALM_ONOFF <= 1'b0;
          ALM_HOUR <= 1'b0;
          ALM_MIN <= 1'b0;

        end

        TOGGLE:
        begin
            next_state <= SETONOFF;
          ALM_ONOFF <= 1'b1;
          ALM_HOUR <= 1'b0;
          ALM_MIN <= 1'b0;

        end

        SETHOUR:
        begin
          if (!(SW_F1))
             begin
             next_state <= SETHOUR;
             end
          else if (SW_F1)
             begin
             next_state <= SETMIN;
             end
          else if (SW_F2)
             begin
             next_state <= INCHOUR;
             end
          ALM_ONOFF <= 1'b0;
          ALM_HOUR <= 1'b0;
          ALM_MIN <= 1'b0;

        end

        INCHOUR:
        begin
            next_state <= SETHOUR;
          ALM_ONOFF <= 1'b0;
          ALM_HOUR <= 1'b1;
          ALM_MIN <= 1'b0;

        end


        default:
          next_state <= IDLE;
     endcase
  end

endmodule
