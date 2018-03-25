module ModelSet(reset, clock, SW_MODE, ALARMSET_RUN, STOPWATCH_RUN, TIMESET_RUN);
  input reset;
  input clock;
  input SW_MODE;
  output ALARMSET_RUN;
  output STOPWATCH_RUN;
  output TIMESET_RUN;

  reg ALARMSET_RUN;
  reg STOPWATCH_RUN;
  reg TIMESET_RUN;

  parameter [1:0] TIMESET = 0, ALARMSET = 1, STOPWATCH = 2, IDLE = 3;
  reg [1:0] current_state, next_state;

  always @(posedge clock or negedge reset)
  begin: SYNCH
    if (reset == 1'b0)
       current_state <= IDLE;
    else
       current_state <= next_state;
  end

  always @(current_state or SW_MODE)
  begin: COMBIN
     case (current_state)
        TIMESET:
        begin
          if (SW_MODE)
             begin
             next_state <= IDLE;
             end
          else if (!(SW_MODE))
             begin
             next_state <= TIMESET;
             end
          ALARMSET_RUN <= 1'b0;
          STOPWATCH_RUN <= 1'b0;
          TIMESET_RUN <= 1'b1;

        end

        ALARMSET:
        begin
          if (!(SW_MODE))
             begin
             next_state <= ALARMSET;
             end
          else if (SW_MODE)
             begin
             next_state <= STOPWATCH;
             end
          ALARMSET_RUN <= 1'b1;
          STOPWATCH_RUN <= 1'b0;
          TIMESET_RUN <= 1'b0;

        end

        STOPWATCH:
        begin
          if (SW_MODE)
             begin
             next_state <= TIMESET;
             end
          else if (!(SW_MODE))
             begin
             next_state <= STOPWATCH;
             end
          ALARMSET_RUN <= 1'b0;
          STOPWATCH_RUN <= 1'b1;
          TIMESET_RUN <= 1'b0;

        end

        IDLE:
        begin
          if (!(SW_MODE))
             begin
             next_state <= IDLE;
             end
          else if (SW_MODE)
             begin
             next_state <= ALARMSET;
             end
          ALARMSET_RUN <= 1'b0;
          STOPWATCH_RUN <= 1'b0;
          TIMESET_RUN <= 1'b0;

        end


        default:
          next_state <= IDLE;
     endcase
  end

endmodule
