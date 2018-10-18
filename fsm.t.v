`include "fsm.v"

module testfsm();

  reg  cs;
  reg clk;
  reg sclk;
  reg  shiftRegOut0;
  wire add_WE;
  wire DM_WE;
  wire SR_WE;
  wire MISO_Buff;
  initial clk = 0;
  always #10 clk = !clk;
  initial shiftRegOut0 =1;


  fsm fsm1(.cs(cs),
            .clk(clk),
            .sclk(sclk),
            .shiftRegOut0(shiftRegOut0),
            .add_WE(add_WE),
            .DM_WE(DM_WE),
            .SR_WE(SR_WE),
            .MISO_Buff(MISO_Buff));
    reg dutpassed;
    initial begin
    cs = 1;
    sclk = 0; #1000
    sclk = 1; #1000

    cs = 0;
    shiftRegOut0 = 1;


    sclk = 0; #1000
    sclk = 1; #1000
    $display("addr |  DM  |  SR  |  BUFF");
    $display("%b   |  %b  |  %b  |  %b  ",add_WE,DM_WE,SR_WE,MISO_Buff);

    sclk = 0; #1000
    sclk = 1; #1000
    $display("%b   |  %b  |  %b  |  %b  ",add_WE,DM_WE,SR_WE,MISO_Buff);

    sclk = 0; #1000
    sclk = 1; #1000
    $display("%b   |  %b  |  %b  |  %b  ",add_WE,DM_WE,SR_WE,MISO_Buff);

    sclk = 0; #1000
    sclk = 1; #1000
    $display("%b   |  %b  |  %b  |  %b  ",add_WE,DM_WE,SR_WE,MISO_Buff);

    sclk = 0; #1000
    sclk = 1; #1000
    $display("%b   |  %b  |  %b  |  %b  ",add_WE,DM_WE,SR_WE,MISO_Buff);

    sclk = 0; #1000
    sclk = 1; #1000
    $display("%b   |  %b  |  %b  |  %b  ",add_WE,DM_WE,SR_WE,MISO_Buff);

    sclk = 0; #1000
    sclk = 1; #1000
    $display("%b   |  %b  |  %b  |  %b  ",add_WE,DM_WE,SR_WE,MISO_Buff);

    sclk = 0; #1000
    sclk = 1; #1000
    $display("%b   |  %b  |  %b  |  %b  ",add_WE,DM_WE,SR_WE,MISO_Buff);

    sclk = 0; #1000
    sclk = 1; #1000
    $display("%b   |  %b  |  %b  |  %b  ",add_WE,DM_WE,SR_WE,MISO_Buff);

    sclk = 0; #1000
    sclk = 1; #1000
    $display("%b   |  %b  |  %b  |  %b  ",add_WE,DM_WE,SR_WE,MISO_Buff);

    sclk = 0; #1000
    sclk = 1; #1000
    $display("%b   |  %b  |  %b  |  %b  ",add_WE,DM_WE,SR_WE,MISO_Buff);

    sclk = 0; #1000
    sclk = 1; #1000
    $display("%b   |  %b  |  %b  |  %b  ",add_WE,DM_WE,SR_WE,MISO_Buff);

    sclk = 0; #1000
    sclk = 1; #1000
    $display("%b   |  %b  |  %b  |  %b  ",add_WE,DM_WE,SR_WE,MISO_Buff);

    sclk = 0; #1000
    sclk = 1; #1000
    $display("%b   |  %b  |  %b  |  %b  ",add_WE,DM_WE,SR_WE,MISO_Buff);

    sclk = 0; #1000
    sclk = 1; #1000
    $display("%b   |  %b  |  %b  |  %b  ",add_WE,DM_WE,SR_WE,MISO_Buff);

    sclk = 0; #1000
    sclk = 1; #1000
    $display("%b   |  %b  |  %b  |  %b  ",add_WE,DM_WE,SR_WE,MISO_Buff);

    sclk = 0; #1000
    sclk = 1; #1000
    $display("%b   |  %b  |  %b  |  %b  ",add_WE,DM_WE,SR_WE,MISO_Buff);

    sclk = 0; #1000
    sclk = 1; #1000
    $display("%b   |  %b  |  %b  |  %b  ",add_WE,DM_WE,SR_WE,MISO_Buff);

    sclk = 0; #1000
    sclk = 1; #1000
    $display("%b   |  %b  |  %b  |  %b  ",add_WE,DM_WE,SR_WE,MISO_Buff);

    sclk = 0; #1000
    sclk = 1; #1000
    $display("%b   |  %b  |  %b  |  %b  ",add_WE,DM_WE,SR_WE,MISO_Buff);
    cs = 1;

    $finish;

    end
    endmodule
