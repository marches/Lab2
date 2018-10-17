`define ADDRESS 3'd00
`define MISO_REG 3'd1
`define MISO_OUT 3'd2
`define MOSI_MEM 3'd3
`define MOSI_WRI 3'd4
`define OFF 3'd5
module fsm
(
  input  cs,
  input clk,
  input sclk,
  input  shiftRegOut0,
  output add_WE,
  output DM_WE,
  output SR_WE,
  output MISO_Buff
  );
      reg state;
      parameter waittime = 7;
      reg counter;
      initial counter <= 0;
      reg miOut, moMem, turnOn;
      reg add_WE, DM_WE, SR_WE, MISO_Buff;

      always @(posedge sclk) begin
        if( counter == waittime) begin
            counter <= 0;
        end
        else begin
            counter <= counter+1;
        end
      end

      always @(posedge sclk) begin
      if (cs)begin
        state <= `OFF;
        turnOn <= 0;
      end
      else if (cs == 0 && state==`OFF)begin
        if (turnOn == 0)begin
          counter <= 0;
          turnOn <= 1;
        end
        if (counter == 3'd7)
          state <= `ADDRESS;
      end
      else if (state == `ADDRESS && shiftRegOut0 == 0)begin
        state <= `MISO_REG;
      end
      else if (state == `MISO_REG)begin
        state <= `MISO_OUT;
        miOut <= 0;
      end
      else if (state == `MISO_OUT)begin
        if (miOut == 0)begin
          counter <= 0;
          miOut <= 1;
        end
        if (counter == 3'd7)
          state <= `OFF;
      end
      else if (state == `ADDRESS && shiftRegOut0 == 1)begin
        state <= `MOSI_MEM;
        moMem <= 0;
      end
      else if(state == `MOSI_MEM)begin
        if (moMem == 0) begin
          moMem <= 1;
          counter <= 0;
        if (counter == 3'd7)
          state <= `MOSI_WRI;
      end
      else if (state == `MOSI_WRI)
        state <= `OFF;
      end
      end

  always @(posedge clk) begin
  case (state)
    `ADDRESS:   begin add_WE <= 1; DM_WE<=0; SR_WE <= 0; MISO_Buff <= 0; end
    `MISO_REG:  begin add_WE <= 0; DM_WE<=0; SR_WE <= 1; MISO_Buff <= 0; end
    `MOSI_MEM:  begin add_WE <= 0; DM_WE<=0; SR_WE <= 0; MISO_Buff <= 0; end
    `MISO_OUT:  begin add_WE <= 0; DM_WE<=0; SR_WE <= 0; MISO_Buff <= 1; end
    `MOSI_WRI:  begin add_WE <= 0; DM_WE<=1; SR_WE <= 0; MISO_Buff <= 0; end
    `OFF:       begin add_WE <= 0; DM_WE<=0; SR_WE <= 0; MISO_Buff <= 0; end
  endcase
  end

  endmodule
