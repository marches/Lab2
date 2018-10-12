//-----------------------------------------------------------------------------
//  Wrapper for Lab 0: Full Adder
//
//  Rationale:
//     The ZYBO board has 4 buttons, 4 switches, and 4 LEDs. But if we want to
//     show the results of a 4-bit add operation, we will need at least 6 LEDs!
//
//     This wrapper module allows for 4-bit operands to be loaded in one at a
//     time, and multiplexes the LEDs to show the SUM and carryout/overflow at
//     different times.
//
//  Your job:
//     Write FullAdder4bit with the proper port signature. It will be instantiated
//     by the lab0_wrapper module in this file, which interfaces with the buttons,
//     switches, and LEDs for you.
//
//  Usage:
//     btn0 - load operand A from the current switch configuration
//     btn1 - load operand B from the current switch configuration
//     btn2 - show SUM on LEDs
//     btn3 - show carryout on led0, overflow on led1
//
//     Note: Buttons, switches, and LEDs have the least-significant (0) position
//     on the right.
//-----------------------------------------------------------------------------

`include "shiftregister.v"
`include "inputconditioner.v"


//-----------------------------------------------------------------------------
// Basic building block modules
//-----------------------------------------------------------------------------

// D flip-flop with parameterized bit width (default: 1-bit)
// Parameters in Verilog: http://www.asic-world.com/verilog/para_modules1.html
module dff #( parameter W = 1 )
(
    input trigger,
    input enable,
    input      [W-1:0] d,
    output reg [W-1:0] q
);
    always @(posedge trigger) begin
        if(enable) begin
            q <= d;
        end
    end
endmodule

// JK flip-flop
module jkff1
(
    input trigger,
    input j,
    input k,
    output reg q
);
    always @(posedge trigger) begin
        if(j && ~k) begin
            q <= 1'b1;
        end
        else if(k && ~j) begin
            q <= 1'b0;
        end
        else if(k && j) begin
            q <= ~q;
        end
    end
endmodule

// Two-input MUX with parameterized bit width (default: 1-bit)
module mux2 #( parameter W = 1 )
(
    input[W-1:0]    in0,
    input[W-1:0]    in1,
    input           sel,
    output[W-1:0]   out
);
    // Conditional operator - http://www.verilog.renerta.com/source/vrg00010.htm
    assign out = (sel) ? in1 : in0;
endmodule


//-----------------------------------------------------------------------------
// Main Lab 0 wrapper module
//   Interfaces with switches, buttons, and LEDs on ZYBO board. Allows for two
//   4-bit operands to be stored, and two results to be alternately displayed
//   to the LEDs.
//
//   You must write the FullAdder4bit (in your adder.v) to complete this module.
//   Challenge: write your own interface module instead of using this one.
//-----------------------------------------------------------------------------

module lab0_wrapper
(
    input        clk,
    input  [3:0] sw,
    input  [3:0] btn,
    output [3:0] led
);

    wire[3:0] res0, res1;     // Output display options
    wire res_sel;             // Select between display options


    // Capture button input to switch which MUX input to LEDs
    jkff1 src_sel(.trigger(clk), .j(btn[3]), .k(btn[2]), .q(res_sel));
    mux2 #(4) output_select(.in0(res0), .in1(res1), .sel(res_sel), .out(led));

    // TODO: You write this in your adder.v
    wire cout0, cout1, cout2, pos0, pos1, pos2, neg0, neg1, neg2;
    wire[7:0] FixedParallelIn;
    wire[7:0] parallelDataOut;
    wire serialDataOut;

    assign FixedParallelIn= 8'b0100101;

    inputconditioner ic1 (.clk(clk),.noisysignal(btn[1]),.conditioned(cout0),.positiveedge(pos0),.negativeedge(neg0));
    inputconditioner ic2 (.clk(clk),.noisysignal(sw[0]),.conditioned(cout1),.positiveedge(pos1),.negativeedge(neg1));
    inputconditioner ic3 (.clk(clk),.noisysignal(sw[1]),.conditioned(cout2),.positiveedge(pos2),.negativeedge(neg2));
    shiftregister #(8) dut(.clk(clk),
    		           .peripheralClkEdge(pos2),
    		           .parallelLoad(neg0),
    		           .parallelDataIn(FixedParallelIn),
    		           .serialDataIn(cout1),
    		           .parallelDataOut(parallelDataOut),
    		           .serialDataOut(serialDataOut));

    // Assign bits of second display output to show carry out and overflow
    assign res0[0] = parallelDataOut[0];
    assign res0[1] = parallelDataOut[1];
    assign res0[2] = parallelDataOut[2];
    assign res0[3] = parallelDataOut[3];
    assign res1[0] = parallelDataOut[4];
    assign res1[1] = parallelDataOut[5];
    assign res1[2] = parallelDataOut[6];
    assign res1[3] = parallelDataOut[7];

endmodule
