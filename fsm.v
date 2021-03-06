`define ADDRESS 3'd00
`define MISO_REG 3'd1
`define MISO_OUT 3'd2
`define MOSI_MEM 3'd3
`define MOSI_WRI 3'd4
`define PreADDRESS 3'd6
`define OFF 3'd5
module fsm
(
  input cs,
  input sclk,
  input  shiftRegOut0,
  output add_WE,
  output DM_WE,
  output SR_WE,
  output MISO_Buff, 
  output[4:0] counter
  );
      reg[2:0] state;

      initial state = `OFF;

      reg[4:0] counter;

      reg add_WE, DM_WE, SR_WE, MISO_Buff;

      always @(posedge sclk) begin


      //case (state)
       // `ADDRESS:   begin add_WE <= 1; DM_WE<=0; SR_WE <= 0; MISO_Buff <= 0; end
      // `MISO_REG:  begin add_WE <= 0; DM_WE<=0; SR_WE <= 1; MISO_Buff <= 0; end
      //   `MOSI_MEM:  begin add_WE <= 0; DM_WE<=0; SR_WE <= 0; MISO_Buff <= 0; end
      //   `MISO_OUT:  begin add_WE <= 0; DM_WE<=0; SR_WE <= 0; MISO_Buff <= 1; end
      //   `MOSI_WRI:  begin add_WE <= 0; DM_WE<=1; SR_WE <= 0; MISO_Buff <= 0; end
      //   `OFF:       begin add_WE <= 0; DM_WE<=0; SR_WE <= 0; MISO_Buff <= 0; end
      // endcase


      $display("Counter %d, State %d, add %b, dm %b, sr %b, buff %b, cs %b, shiftRegOut0, %b", counter, state, add_WE, DM_WE, SR_WE, MISO_Buff, cs, shiftRegOut0);
      counter <= counter+1;

      if (cs) begin
        state <= `OFF;
        counter <= 0;
      end

      else if (cs == 0 && state == `OFF) begin
        counter <= counter+1;
        if (counter == 6) begin  // Wait for 7 bits to clock in. Takes an extra clock for everything to push through the FSM
          state <= `PreADDRESS;
        end
      end
      else if (state == `PreADDRESS)begin
        state <= `ADDRESS;
      end
      else if (state == `ADDRESS && shiftRegOut0 == 1) begin
        state <= `MISO_REG;
      end

      else if (state == `MISO_REG)begin
        state <= `MISO_OUT;
        counter <= 0;
      end

      else if (state == `MISO_OUT)begin
        if (counter == 7 + 1) begin  // Wait for 8 bits to clock out. Takes an extra clock for everything to push through the FSM
          state <= `OFF;
          end
      end

      else if (state == `ADDRESS && shiftRegOut0 == 0) begin
        state <= `MOSI_MEM;
        counter <= 0;
      end

      else if(state == `MOSI_MEM) begin
        if (counter == 6) begin // Wait for 8 bits to clock in (immediately on the 8th, change memory). Takes an extra clock for everything to push through the FSM
          state <= `MOSI_WRI;
          end
      end

      else if (state == `MOSI_WRI)begin
        state <= `OFF;
      end

  end


    always @ (state) begin
          case (state)
        `PreADDRESS: begin add_WE <=1; DM_WE<=0; SR_WE <= 0; MISO_Buff <= 0; end
        `ADDRESS:   begin add_WE <= 0; DM_WE<=0; SR_WE <= 0; MISO_Buff <= 0; end
        `MISO_REG:  begin add_WE <= 0; DM_WE<=0; SR_WE <= 1; MISO_Buff <= 0; end
        `MOSI_MEM:  begin add_WE <= 0; DM_WE<=0; SR_WE <= 0; MISO_Buff <= 0; end
        `MISO_OUT:  begin add_WE <= 0; DM_WE<=0; SR_WE <= 0; MISO_Buff <= 1; end
        `MOSI_WRI:  begin add_WE <= 0; DM_WE<=1; SR_WE <= 0; MISO_Buff <= 0; end
        `OFF:       begin add_WE <= 0; DM_WE<=0; SR_WE <= 0; MISO_Buff <= 0; end
      endcase
      end


  endmodule
