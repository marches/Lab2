`include "fsm.v"

module testfsm();

  reg cs;
  reg sclk;
  reg  shiftRegOut0;
  wire add_WE;
  wire DM_WE;
  wire SR_WE;
  wire MISO_Buff;
  wire [4:0] counter;

  initial shiftRegOut0 = 1;
  initial cs = 1;
  initial sclk = 1;


  fsm fsm1(.cs(cs),
            .sclk(sclk),
            .counter(counter),
            .shiftRegOut0(shiftRegOut0),
            .add_WE(add_WE),
            .DM_WE(DM_WE),
            .SR_WE(SR_WE),
            .MISO_Buff(MISO_Buff));
    

    initial begin

    $dumpfile("fsm.vcd");
    $dumpvars();
  

    sclk <= 0; # 10
    sclk <= 1; # 10

    //  WRITE OP TSTING
    $display("Write op testing");

    shiftRegOut0 <= 0; 

    sclk <= 0; 
    cs <= 0; # 10
    sclk = 1; # 10

    

    sclk <= 0; # 10
    sclk <= 1; # 10

    

    sclk <= 0; # 10
    sclk <= 1; # 10

    

    sclk <= 0; # 10
    sclk <= 1; # 10

    

    sclk <= 0; # 10
    sclk <= 1; # 10

    

    sclk <= 0; # 10
    sclk <= 1; # 10

    

    sclk <= 0; # 10
    sclk <= 1; # 10

    

    sclk <=0; # 10
    sclk = 1; # 10

    

    sclk <= 0; # 10
    sclk <= 1; # 10

    

    sclk <= 0; # 10
    sclk <= 1; # 10

    

    sclk <= 0; # 10
    sclk <= 1; # 10

     

    sclk <= 0; # 10
    sclk <= 1; # 10

    

    sclk <= 0; # 10
    sclk <= 1; # 10

    

    sclk <= 0; # 10
    sclk <= 1; # 10

    

    sclk <= 0; # 10
    sclk <= 1; # 10

    

    sclk <= 0; # 10
    sclk <= 1; # 10

    

    sclk <= 0; 
    cs <=1; #10
    sclk <= 1; # 10

    


    sclk <= 0; # 10
    sclk <= 1; # 10

    sclk <= 0; # 10
    sclk <= 1; # 10

    //READ OP TESTING

    $display("Read op testing");

    shiftRegOut0 <= 1; 

    sclk <= 0; 
    cs <= 0; # 10
    sclk = 1; # 10
    

    sclk <= 0; # 10
    sclk <= 1; # 10

    

    sclk <= 0; # 10
    sclk <= 1; # 10

    

    sclk <= 0; # 10
    sclk <= 1; # 10

    

    sclk <= 0; # 10
    sclk <= 1; # 10

    

    sclk <= 0; # 10
    sclk <= 1; # 10

    

    sclk <= 0; # 10
    sclk <= 1; # 10

    

    sclk <=0; # 10
    sclk = 1; # 10

    

    sclk <= 0; # 10
    sclk <= 1; # 10

    

    sclk <= 0; # 10
    sclk <= 1; # 10

    

    sclk <= 0; # 10
    sclk <= 1; # 10

     

    sclk <= 0; # 10
    sclk <= 1; # 10

    

    sclk <= 0; # 10
    sclk <= 1; # 10

    

    sclk <= 0; # 10
    sclk <= 1; # 10

    

    sclk <= 0; # 10
    sclk <= 1; # 10

    

    sclk <= 0; # 10
    sclk <= 1; # 10

    

    sclk <= 0; 
    cs <=1; #10
    sclk <= 1; # 10

    

    $finish; 

    end
    endmodule
