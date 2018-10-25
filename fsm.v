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
      reg[2:0] state;
      initial state = `OFF;
      parameter waittime = 7;
      reg[4:0] counter;
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
      //$display("Positive sclk edge");
      //$display("state: %b", state);
      if (cs)begin
        state <= `OFF;
        turnOn <= 0;
        $display("In state OFF b/c cs high");
      end

      else if (cs == 0 && state==`OFF)begin
        if (turnOn == 0)begin
          counter = 0;
          turnOn = 1;
          //$display("Turn on = %b",turnOn);
        end
        $display("In state OFF going to address");
        if (counter == waittime-1)begin
          state = `ADDRESS;
          //$display("counter: %b",counter);
        end
        //$display("counter: %b",counter);
      end

      else if (state == `ADDRESS && shiftRegOut0 == 1)begin
        state <= `MISO_REG;
        $display("In state ADDRESS going to miso_reg");
      end

      else if (state == `MISO_REG)begin
        state <= `MISO_OUT;
        miOut <= 0;
        $display("In state going to miso_out");
      end

      else if (state == `MISO_OUT)begin
        if (miOut == 0)begin
          counter <= 0;
          miOut <= 1;
          $display("In state of miso_out");
        end
        if (counter == waittime)
          state <= `OFF;
      end

      else if (state == `ADDRESS && shiftRegOut0 == 0)begin
        state <= `MOSI_MEM;
        moMem <= 0;
        $display("In state ADDRESS going to mosimem");
      end

      else if(state == `MOSI_MEM)begin
        $display("In state of mosimem");
        if (moMem == 0) begin
          moMem = 1;
          counter = 0;
          //$display("MOSI counter: %b",counter);
        end
        if (counter == waittime-1) begin
          state <= `MOSI_WRI;
          $display("MOSI counter: %b",counter);
          end
      end

      else if (state == `MOSI_WRI)begin
        $display("In state mosi_wri");
        state <= `OFF;
      end

      end

  always @(posedge sclk) begin
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
