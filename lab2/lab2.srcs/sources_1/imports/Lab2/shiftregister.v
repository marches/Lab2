//------------------------------------------------------------------------
// Shift Register
//   Parameterized width (in bits)
//   Shift register can operate in two modes:
//      - serial in, parallel out
//      - parallel in, serial out
//------------------------------------------------------------------------

module shiftregister
#(parameter width = 8)
(
input               clk,                // FPGA Clock
input               peripheralClkEdge,  // Edge indicator
input               parallelLoad,       // 1 = Load shift reg with parallelDataIn
input  [width-1:0]  parallelDataIn,     // Load shift reg in parallel
input               serialDataIn,       // Load shift reg serially
output [width-1:0]  parallelDataOut,    // Shift reg data contents
output              serialDataOut       // Positive edge synchronized
);

    reg [width-1:0]      shiftregistermem;
    always @(posedge peripheralClkEdge) begin
        if (parallelLoad == 0) begin
          shiftregistermem <= shiftregistermem<<1;
          shiftregistermem[0] <= serialDataIn;
          end
        else begin
        shiftregistermem <= parallelDataIn;
        end
    end
    assign serialDataOut = shiftregistermem[width-1];
    assign parallelDataOut = shiftregistermem;
endmodule
