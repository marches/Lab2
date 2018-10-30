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
    //running test for serial loading with 0 serial data out


    $dumpfile("shift.vcd"); //Creating .vcd file for timing analysis
    $dumpvars;

    parallelLoad = 0;
    parallelDataIn = 8'd16;
    peripheralClkEdge = 1;

    #5 clk = 0; #5 clk = 1;
    serialDataIn = 1;
    #5 clk = 0; #5 clk = 1;
    serialDataIn = 0;
    peripheralClkEdge = 0;
    #5 clk = 0; #5 clk = 1;
    peripheralClkEdge = 1;
    #5 clk = 0; #5 clk = 1;
    #5 clk = 0; #5 clk = 1;
    serialDataIn = 0;
    #5 clk = 0; #5 clk = 1;
    serialDataIn = 1;
    #5 clk = 0; #5 clk = 1;
    #5 clk = 0; #5 clk = 1;
    serialDataIn = 1;
    #5 clk = 0; #5 clk = 1;
    #5 clk = 0; #5 clk = 1;

    //testing for 1 serial out and serial loading
    if((parallelDataOut !== 8'b10001111) || (serialDataOut !== 1)) begin
      dutpassed = 0;
      $display("Test Case 1 Failed");
      $display("%b  |  %b", parallelDataOut, serialDataOut);
    end

    //running test for serial loading with 0 serial data out
    parallelLoad = 0;
    parallelDataIn = 8'd16;
    serialDataIn = 1;
    peripheralClkEdge = 1;

    #5 clk = 0; #5 clk = 1;
    serialDataIn = 0;
    #5 clk = 0; #5 clk = 1;
    serialDataIn = 1;
    peripheralClkEdge = 0;
    #5 clk = 0; #5 clk = 1;
    peripheralClkEdge = 1;
    #5 clk = 0; #5 clk = 1;
    #5 clk = 0; #5 clk = 1;
    serialDataIn = 0;
    #5 clk = 0; #5 clk = 1;
    #5 clk = 0; #5 clk = 1;
    #5 clk = 0; #5 clk = 1;
    serialDataIn = 1;
    #5 clk = 0; #5 clk = 1;
    #5 clk = 0; #5 clk = 1;

    //testing for 0 serial out and serial loading
    if((parallelDataOut !== 8'b01100011) || (serialDataOut !== 0)) begin
      dutpassed = 0;
      $display("Test Case 2 Failed");
      $display("%b  |  %b", parallelDataOut, serialDataOut);
    end


    //setup for 0 serial out and parallel loading
    parallelLoad = 1;
    parallelDataIn = 8'd16;
    #10 peripheralClkEdge = 0; #10 peripheralClkEdge = 1; #10
    #5 clk = 0; #5 clk = 1; #5 clk = 0; #5 clk = 1; #5 clk = 0; #5 clk = 1;
    #5 clk = 0; #5 clk = 1; #5 clk = 0; #5 clk = 1; #5 clk = 0; #5 clk = 1;
    #5 clk = 0; #5 clk = 1; #5 clk = 0; #5 clk = 1; #5 clk = 0; #5 clk = 1;

    //testing for 0 serial out and parallel loading
    if((parallelDataOut !== 8'b00010000) || (serialDataOut !== 0)) begin
      dutpassed = 0;
      $display("Test Case 3 Failed");
      $display("%b  |  %b", parallelDataOut, serialDataOut);
    end


    //setting up for 1 serial out and parallel loading
    parallelDataIn = 8'd128;
    parallelLoad = 1;
    #10 peripheralClkEdge = 0; #10 peripheralClkEdge = 1; #10
    #5 clk = 0; #5 clk = 1; #5 clk = 0; #5 clk = 1; #5 clk = 0; #5 clk = 1;
    #5 clk = 0; #5 clk = 1; #5 clk = 0; #5 clk = 1; #5 clk = 0; #5 clk = 1;
    #5 clk = 0; #5 clk = 1; #5 clk = 0; #5 clk = 1; #5 clk = 0; #5 clk = 1;

    //testing for 0 serial out and parallel loading
    if((parallelDataOut !== 8'b10000000) || (serialDataOut !== 1)) begin
      dutpassed = 0;
      $display("Test Case 4 Failed");
      $display("%b  |  %b", parallelDataOut, serialDataOut);
    end

    //testing 0 edge case (parallel loading)

    //setting up for 0 serial out and parallel loading
    parallelDataIn = 8'd0;
    parallelLoad = 1;
    #10 peripheralClkEdge = 0; #10 peripheralClkEdge = 1; #10
    #5 clk = 0; #5 clk = 1; #5 clk = 0; #5 clk = 1; #5 clk = 0; #5 clk = 1;
    #5 clk = 0; #5 clk = 1; #5 clk = 0; #5 clk = 1; #5 clk = 0; #5 clk = 1;
    #5 clk = 0; #5 clk = 1; #5 clk = 0; #5 clk = 1; #5 clk = 0; #5 clk = 1;

    //testing for 0 serial out and parallel loading
    if((parallelDataOut !== 8'b00000000) || (serialDataOut !== 0)) begin
      dutpassed = 0;
      $display("Test Case 5(Zeros Parallel Loading) Failed");
      $display("%b  |  %b", parallelDataOut, serialDataOut);
    end

    //running test for serial loading with 0 serial data out
    parallelLoad = 0;
    parallelDataIn = 8'd101;
    serialDataIn = 0;
    peripheralClkEdge = 1;
    #5 clk = 0; #5 clk = 1; #5 clk = 0; #5 clk = 1; #5 clk = 0; #5 clk = 1;
    #5 clk = 0; #5 clk = 1; #5 clk = 0; #5 clk = 1; #5 clk = 0; #5 clk = 1;
    #5 clk = 0; #5 clk = 1; #5 clk = 0; #5 clk = 1; #5 clk = 0; #5 clk = 1;

    //testing for 0 serial out and serial loading
    if((parallelDataOut !== 8'b00000000) || (serialDataOut !== 0)) begin
      dutpassed = 0;
      $display("Test Case 6 (Zeros Serial Loading) Failed");
      $display("%b  |  %b", parallelDataOut, serialDataOut);
    end


    //testing 0 edge case (parallel loading)

    //setting up for 0 serial out and parallel loading
    parallelDataIn = 8'd255;
    parallelLoad = 1;
    #10 peripheralClkEdge = 0; #10 peripheralClkEdge = 1; #10
    #5 clk = 0; #5 clk = 1; #5 clk = 0; #5 clk = 1; #5 clk = 0; #5 clk = 1;
    #5 clk = 0; #5 clk = 1; #5 clk = 0; #5 clk = 1; #5 clk = 0; #5 clk = 1;
    #5 clk = 0; #5 clk = 1; #5 clk = 0; #5 clk = 1; #5 clk = 0; #5 clk = 1;

    //testing for 0 serial out and parallel loading
    if((parallelDataOut !== 8'b11111111) || (serialDataOut !== 1)) begin
      dutpassed = 0;
      $display("Test Case 5(Zeros Parallel Loading) Failed");
      $display("%b  |  %b", parallelDataOut, serialDataOut);
    end

    //running test for serial loading with 1 serial data out
    parallelLoad = 0;
    parallelDataIn = 8'd101;
    serialDataIn = 1;
    peripheralClkEdge = 1;
    #5 clk = 0; #5 clk = 1; #5 clk = 0; #5 clk = 1; #5 clk = 0; #5 clk = 1;
    #5 clk = 0; #5 clk = 1; #5 clk = 0; #5 clk = 1; #5 clk = 0; #5 clk = 1;
    #5 clk = 0; #5 clk = 1; #5 clk = 0; #5 clk = 1; #5 clk = 0; #5 clk = 1;

    //testing for 1 serial out and serial loading
    if((parallelDataOut !== 8'b11111111) || (serialDataOut !== 1)) begin
      dutpassed = 0;
      $display("Test Case 6 (Zeros Serial Loading) Failed");
      $display("%b  |  %b", parallelDataOut, serialDataOut);
    end

    $finish();

    end

endmodule
