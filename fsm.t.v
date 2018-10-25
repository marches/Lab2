`include "fsm.v"

module testfsm();

  reg  cs;
  reg sclk;
  reg  shiftRegOut0;
  wire add_WE;
  wire DM_WE;
  wire SR_WE;
  wire MISO_Buff;

  initial shiftRegOut0 = 1;
  initial cs = 1;
  initial sclk = 1;


  fsm fsm1(.cs(cs),
            .clk(clk),
            .sclk(sclk),
            .shiftRegOut0(shiftRegOut0),
            .add_WE(add_WE),
            .DM_WE(DM_WE),
            .SR_WE(SR_WE),
            .MISO_Buff(MISO_Buff));
    

    initial begin

    $dumpfile("fsm.vcd");
    $dumpvars();

    $display("Initial FMS State");
    $display(fsm1.state);

    sclk <= 0; # 10
    sclk <= 1; # 10

    //  WRITE OP TSTING

    shiftRegOut0 <= 0; 

    sclk <= 0; 
    cs <= 0; # 10
    sclk = 1; # 10

    $display("Testing Write Op");


    $display(fsm1.state);

    sclk <= 0; # 10
    sclk <= 1; # 10

    $display(fsm1.state);

    sclk <= 0; # 10
    sclk <= 1; # 10

    $display(fsm1.state);

    sclk <= 0; # 10
    sclk <= 1; # 10

    $display(fsm1.state);

    sclk <= 0; # 10
    sclk <= 1; # 10

    $display(fsm1.state);

    sclk <= 0; # 10
    sclk <= 1; # 10

    $display(fsm1.state);

    sclk <= 0; # 10
    sclk <= 1; # 10

    $display(fsm1.state);

    sclk <=0; # 10
    sclk = 1; # 10

    $display(fsm1.state);

    sclk <= 0; # 10
    sclk <= 1; # 10

    $display(fsm1.state);

    sclk <= 0; # 10
    sclk <= 1; # 10

    $display(fsm1.state);

    sclk <= 0; # 10
    sclk <= 1; # 10

    $display(fsm1.state); 

    sclk <= 0; # 10
    sclk <= 1; # 10

    $display(fsm1.state);

    sclk <= 0; # 10
    sclk <= 1; # 10

    $display(fsm1.state);

    sclk <= 0; # 10
    sclk <= 1; # 10

    $display(fsm1.state);

    sclk <= 0; # 10
    sclk <= 1; # 10

    $display(fsm1.state);

    sclk <= 0; # 10
    sclk <= 1; # 10

    $display(fsm1.state);

    sclk <= 0; 
    cs <=1; #10
    sclk <= 1; # 10

    $display(fsm1.state);

    //READ OP TESTING

    shiftRegOut0 <= 1; 

    sclk <= 0; 
    cs <= 0; # 10
    sclk = 1; # 10

    $display("Testing Read Op");

    $display(fsm1.state);

    sclk <= 0; # 10
    sclk <= 1; # 10

    $display(fsm1.state);

    sclk <= 0; # 10
    sclk <= 1; # 10

    $display(fsm1.state);

    sclk <= 0; # 10
    sclk <= 1; # 10

    $display(fsm1.state);

    sclk <= 0; # 10
    sclk <= 1; # 10

    $display(fsm1.state);

    sclk <= 0; # 10
    sclk <= 1; # 10

    $display(fsm1.state);

    sclk <= 0; # 10
    sclk <= 1; # 10

    $display(fsm1.state);

    sclk <=0; # 10
    sclk = 1; # 10

    $display(fsm1.state);

    sclk <= 0; # 10
    sclk <= 1; # 10

    $display(fsm1.state);

    sclk <= 0; # 10
    sclk <= 1; # 10

    $display(fsm1.state);

    sclk <= 0; # 10
    sclk <= 1; # 10

    $display(fsm1.state); 

    sclk <= 0; # 10
    sclk <= 1; # 10

    $display(fsm1.state);

    sclk <= 0; # 10
    sclk <= 1; # 10

    $display(fsm1.state);

    sclk <= 0; # 10
    sclk <= 1; # 10

    $display(fsm1.state);

    sclk <= 0; # 10
    sclk <= 1; # 10

    $display(fsm1.state);

    sclk <= 0; # 10
    sclk <= 1; # 10

    $display(fsm1.state);

    sclk <= 0; 
    cs <=1; #10
    sclk <= 1; # 10

    $display(fsm1.state);

    $finish; 

    end
    endmodule
