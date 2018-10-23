//------------------------------------------------------------------------
// SPI Memory
//------------------------------------------------------------------------

`include "shiftregister.v"
`include "inputconditioner.v"
`include "datamemory.v"
`include "fsm.v"


module dff #( parameter W = 8)
(
    input clk,
    input enable,
    input      [W-1:0] d,
    output reg [W-1:0] q
);
    always @(posedge clk) begin
        if(enable) begin
            q <= d;
        end
    end
endmodule

module spiMemory
(
    input           clk,        // FPGA clock
    input           sclk_pin,   // SPI clock
    input           cs_pin,     // SPI chip select
    output          miso_pin,   // SPI master in slave out
    input           mosi_pin,   // SPI master out slave in
    output [3:0]    leds        // LEDs for debugging
);

	wire mosi_cond, mosi_pos, mosi_neg, sclk_cond, sclk_pos, sclk_neg, cs_cond, cs_pos, cs_neg;
    wire miso_bufe, dm_we, addr_we, sr_we;
    wire[7:0] shiftRegOutP, dataMemOut, addressLatchOut;
    wire[6:0] address;
    wire shiftRegOutS, misoPreBufe;

    assign address = addressLatchOut[6:0];

    inputconditioner ic0 (.clk(clk),
    					.noisysignal(mosi_pin),
    					.conditioned(mosi_cond),
    					.positiveedge(mosi_pos),
    					.negativeedge(mosi_neg));
    inputconditioner ic1 (.clk(clk),
    					.noisysignal(sclk_pin),
    					.conditioned(sclk_cond),
    					.positiveedge(sclk_pos),
    					.negativeedge(sclk_neg));
    inputconditioner ic2 (.clk(clk),
    					.noisysignal(cs_pin),
    					.conditioned(cs_cond),
    					.positiveedge(cs_pos),
    					.negativeedge(cs_neg));
	shiftregister #(8) dut(.clk(clk),
    		           .peripheralClkEdge(sclk_pos),
     		           .parallelLoad(sr_we),
     		           .parallelDataIn(dataMemOut),
     		           .serialDataIn(mosi_cond),
     		           .parallelDataOut(shiftRegOutP),
     		           .serialDataOut(shiftRegOutS));
	datamemory data_mem(.clk(clk),
    					.dataOut(dataMemOut),
    					.address(address),	// MSB OF INPUT BECOMES DM_WE
    					.writeEnable(dm_we),
   						.dataIn(shiftRegOutP));
	dff #(1) miso_buff (.clk(clk),
						.enable(sclk_neg),
						.d(shiftRegOutS),
						.q(misoPreBufe));
	dff #(8) addr_latch(.clk(clk),
						.enable(addr_we),
						.d(shiftRegOutP),
						.q(addressLatchOut));

	fsm finite_state_m (.cs(cs_cond),
						.clk(clk),
						.sclk(sclk_pos),
						.shiftRegOut0(shiftRegOutP[0]),
						.add_WE(addr_we),
						.DM_WE(dm_we),
						.SR_WE(sr_we),
						.MISO_Buff(miso_bufe));

	// bufif1(out, in, control)
	//           control
	// in |      0 1 x z
	// -----------------
	// 0  |      z 0 L L
	// 1  |      z 1 H H
	// x  |      z x x x
	// z  |      z x x x
	// L means that output has 0 or z value. H means that output has 1 or z value.
	// x represents an unknown logic value. z represents high impedance logic value.
	bufif1 miso_buffer(miso_pin, misoPreBufe, miso_bufe);

endmodule
