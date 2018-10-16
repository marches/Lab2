`define WAITING 3'd00
`define ADDRESS 3'd01
`define MISO_REG 3'd02
`define MISO_OUT 3'd03
`define MOSI_MEM 3'd04
`define MOSI_WRI 3'd05
`define OFF 3'd06
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
      reg statechange0, statechange1, statechange2;
      parameter waittime = 7;
      reg counter;
      initial counter <= 0;

      always @(posedge clk) begin
        if( counter == waittime) begin
            waiting <= 1;
            counter <= 0;
        end
        else begin
            counter <= counter+1;
            waiting <= 0;
        end
      end

      always @(posedge sclk) begin
      if (cs)begin
        state <= `OFF;
      end
      else if (cs == 0 && state==`OFF)begin
        counter count1(sclk,statechange1);
        counter <= 0;
        if (statechange0 == 1)
          state <= `ADDRESS;
      end
      else if (state == `ADDRESS && shiftRegOut0 == 0)begin
        state <= `MISO_REG;
      end
      else if (state == `MISO_REG)begin
        state <= `MISO_OUT;
      end
      else if (state == `MISO_OUT)begin
        counter count1(sclk,statechange1);
        if (statechange1 == 1)
          state <= `OFF;
      end
      else if (state == `ADDRESS && shiftRegOut0 == 1)begin
        state <= `MOSI_MEM;
      end
      else if(state == `MOSI_MEM)begin
        counter count2(sclk,statechange2);
        if (statechange2 == 1)
          state <= `MOSI_WRI;
      end
      else if (state == `MOSI_WRI)
        state <= `OFF;
      end

  always @(posedge clk) begin
  case (state)
    `WAITING:   begin continue; end
    `ADDRESS:   begin add_WE = 1; DM_WE=0; SR_WE = 0; MISO_Buff = 0; end
    `MISO_REG:  begin add_WE = 0; DM_WE=0; SR_WE = 1; MISO_Buff = 0; end
    `MISO_OUT:  begin add_WE = 0; DM_WE=0; SR_WE = 0; MISO_Buff = 1; end
    `MOSI_MEM:  begin add_WE = 0; DM_WE=0; SR_WE = 0; MISO_Buff = 0; end
    `MOSI_WRI:  begin add_WE = 0; DM_WE=1; SR_WE = 0; MISO_Buff = 0; end
    `OFF:       begin add_WE = 0; DM_WE=0; SR_WE = 0; MISO_Buff = 0; end
  endcase
  end

  endmodule

module counter
(
  input clk,
  output waiting
);
parameter waittime = 7;

reg counter;
initial counter <= 0;
always @(posedge clk) begin
  if( counter == waittime) begin
      waiting <= 1;
      counter <= 0;
  end
  else begin
      counter <= counter+1;
      waiting <= 0;
  end
end
endmodule // counter
