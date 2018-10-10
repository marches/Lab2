//------------------------------------------------------------------------
// Input Conditioner test bench
//------------------------------------------------------------------------

`timescale 1 ns / 1 ps
`include "inputconditioner.v"

module testConditioner();

    reg clk;
    reg pin;
    wire conditioned;
    wire rising;
    wire falling;
    
    inputconditioner dut(.clk(clk),
    			 .noisysignal(pin),
			 .conditioned(conditioned),
			 .positiveedge(rising),
			 .negativeedge(falling));


    // Generate clock (50MHz)
    initial clk=0;
    always # 10 clk=!clk;    // 50MHz Clock

    
    initial begin

       $dumpfile("inputconditioner.vcd");
       $dumpvars();

       // Testing noisy low & high signals: Concerned if "conditioned" switches during noise or doesn't switch after noise

        pin = 0; # 1000 
        pin = 1; # 5
        pin = 0; # 3
        pin = 1; # 5
        if (conditioned == 1)
            $display("Conditioned high and should not be high");
        pin = 0; # 3
        pin = 1; # 1000        
        if (conditioned != 1)
            $display("Conditioned not high and should be high");
        pin = 0; # 3
        pin = 1; # 5
        pin = 0; # 3
        if (conditioned == 0)
            $display("Conditioned low and should not be low");
        pin = 1; # 5
        pin = 0; # 1000
        if (conditioned != 0)
            $display("Conditioned not low and should be low");

        // Testing edge detection: Concerned if pos/neg edges do not go high and "conditioned" switches. 
        // Or concerned if pos/neg edges go high and "conditioned" didn't switch

        pin = 1; # 30
        pin = 0; # 30
        pin = 1; # 300
        pin = 0; # 300
        pin = 1; # 300
        pin = 0; # 100
        pin = 1; # 100
        pin = 0; # 100
        
        // Testing synchronization: Concerned if pos/neg edges switch high while clock is low
        pin = 1; # 253
        pin = 0; # 166
        pin = 1; # 324
        pin = 0; # 383

        $finish();
   end 

// For testing edge detection
   always @ (posedge falling) begin
       if(conditioned != 0)
            $display("Falling flagged but conditioned not 0");
   end
   always @ (posedge rising) begin
       if(conditioned != 1)
            $display("Rising flagged but conditioned not 1");
   end
   always @ (posedge conditioned) begin
        if(falling == 1)
            $display("Falling flagged when condition rising");
        if(rising == 0)
            $display("Rising not flagged when conditin rising");
   end
   always @ (negedge conditioned) begin
        if(falling == 0)
            $display("Flling not flagged when condition falling");
        if(rising == 1)
            $display("Rising flagged when conditin falling");
   end

// For testing synchronization
   always @ (posedge falling) begin
       if(clk == 0)
            $display("Falling not synchronized");
   end
   always @ (posedge rising) begin
       if(clk == 0)
            $display("Rising not synchronized");
   end
    
endmodule
