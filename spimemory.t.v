
`include "spimemory.v"
`include "inputWave.v"



module spimemory_test();

	reg clk, sclk_pin, cs_pin, mosi_pin;
	wire dataOut;
	always #10 clk = !clk;
	always #100 sclk_pin = !sclk_pin;
	wire miso_pin;
	wire[3:0] leds;
	parameter write_op = 16'b0101011011110101;
	parameter read_op = 8'b01010111;
	parameter ad_test = 6'b000000;


	spiMemory dut(.clk(clk), .sclk_pin(sclk_pin), .cs_pin(cs_pin), .miso_pin(miso_pin), .mosi_pin(mosi_pin), .leds(leds));
	inputWave inWave(.dataIn(write_op),.sclk(sclk_pin),.enable(cs_pin),.dataOut(dataOut));



	initial sclk_pin = 0;
	initial clk = 0;


	initial begin
    $dumpfile("spi.vcd"); //Creating .vcd file for timing analysis
    $dumpvars;

	cs_pin <= 1;#200
	$display("STARTING NOW! Mosi=%b",dataOut);
	cs_pin <= 0;#200
	mosi_pin <= dataOut;#100
	mosi_pin <= dataOut;#100
	mosi_pin <= dataOut;#100
	mosi_pin <= dataOut;#100
	mosi_pin <= dataOut;#100
	mosi_pin <= dataOut;#100
	mosi_pin <= dataOut;#100
	mosi_pin <= dataOut;#100
	mosi_pin <= dataOut;#100
	mosi_pin <= dataOut;#100
	mosi_pin <= dataOut;#100
	mosi_pin <= dataOut;#100
	mosi_pin <= dataOut;#100
	mosi_pin <= dataOut;#100
	mosi_pin <= dataOut;#100
	mosi_pin <= dataOut;#100
	mosi_pin <= dataOut;#100
	mosi_pin <= dataOut;#100
	mosi_pin <= dataOut;#100
	mosi_pin <= dataOut;#100
		mosi_pin <= dataOut;#100
		mosi_pin <= dataOut;#100
		mosi_pin <= dataOut;#100
		mosi_pin <= dataOut;#100
		mosi_pin <= dataOut;#100
		mosi_pin <= dataOut;#100
		mosi_pin <= dataOut;#100
		mosi_pin <= dataOut;#100
		mosi_pin <= dataOut;#100
		mosi_pin <= dataOut;#100
		mosi_pin <= dataOut;#100
		mosi_pin <= dataOut;#100
		mosi_pin <= dataOut;#100
		mosi_pin <= dataOut;#100
		mosi_pin <= dataOut;#100
		mosi_pin <= dataOut;#100
		mosi_pin <= dataOut;#100
		mosi_pin <= dataOut;#100
	$display("Address: %b",dut.data_mem.address);
	//#10000;
	$finish;

	end

endmodule
