//------------------------------------------------------------------------
// Shift Register test bench
//------------------------------------------------------------------------
`include "shiftregister.v"

module testshiftregister();

    reg             clk;
    reg             peripheralClkEdge;
    reg             parallelLoad;
    wire[7:0]       parallelDataOut;
    wire            serialDataOut;
    reg[7:0]        parallelDataIn;
    reg             serialDataIn;

    // Instantiate with parameter width = 8
    shiftregister #(8) dut(.clk(clk),
    		           .peripheralClkEdge(peripheralClkEdge),
    		           .parallelLoad(parallelLoad),
    		           .parallelDataIn(parallelDataIn),
    		           .serialDataIn(serialDataIn),
    		           .parallelDataOut(parallelDataOut),
    		           .serialDataOut(serialDataOut));
    //shiftregister #(8) dut (clk,peripheralClkEdge,parallelLoad,parallelDataOut,serialDataOut,parallelDataIn,serialDataIn);
    reg dutpassed;
    initial begin
    parallelLoad = 0;
    parallelDataIn = 8'd15;
    serialDataIn = 1;
    //#5 clk=1; #5 clk=0; #5 clk=0; #5 clk=1; #5 clk=0; #5 clk=0;
    #10 peripheralClkEdge = 0; #10 peripheralClkEdge = 1; #10

    if((parallelDataOut !== 0) || (serialDataOut !== 0)) begin
      dutpassed = 0;
      $display("Test Case 1 Failed");
      $display("%b  |  %b", parallelDataOut, serialDataOut);
    end
    end

endmodule
