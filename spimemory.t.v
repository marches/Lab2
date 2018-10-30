
`include "spimemory.v"

module spimemory_test();

	reg clk, sclk_pin, cs_pin, mosi_pin;
	wire miso_pin;
	wire[3:0] leds;
	wire[4:0] counter;	//leftover for debug


	always #10 clk = !clk;

	parameter write_op = 16'b1010101001110000;
	parameter read_op = 8'b11110000;

	//mosi_pin is input
	//miso_pin is output
	spiMemory dut(.clk(clk), .sclk_pin(sclk_pin), .cs_pin(cs_pin), .miso_pin(miso_pin), .mosi_pin(mosi_pin), .leds(leds));

	initial sclk_pin = 0;
	initial clk = 0;
	initial cs_pin = 1;
	initial mosi_pin = 0;

	initial begin

    $dumpfile("spimemory.vcd"); //Creating .vcd file for timing analysis
    $dumpvars;


    // Write op
    sclk_pin = 1; # 100
    sclk_pin = 0;
	cs_pin = 0;
	mosi_pin = write_op[0]; # 100
	sclk_pin = 1; # 100
    sclk_pin = 0;
	mosi_pin = write_op[1]; # 100
	sclk_pin = 1; # 100
    sclk_pin = 0;
	mosi_pin = write_op[2]; # 100
	sclk_pin = 1; # 100
    sclk_pin = 0;
	mosi_pin = write_op[3]; # 100
	sclk_pin = 1; # 100
    sclk_pin = 0;
	mosi_pin = write_op[4]; # 100
	sclk_pin = 1; # 100
    sclk_pin = 0;
	mosi_pin = write_op[5]; # 100
	sclk_pin = 1; # 100
    sclk_pin = 0;
	mosi_pin = write_op[6]; # 100
	sclk_pin = 1; # 100
    sclk_pin = 0;
	mosi_pin = write_op[7]; # 100
	sclk_pin = 1; # 100
    sclk_pin = 0;
	mosi_pin = write_op[8]; # 100
	sclk_pin = 1; # 100
    sclk_pin = 0;
	mosi_pin = write_op[9]; # 100
	sclk_pin = 1; # 100
    sclk_pin = 0;
	mosi_pin = write_op[10]; # 100
	sclk_pin = 1; # 100
    sclk_pin = 0;
	mosi_pin = write_op[11]; # 100
	sclk_pin = 1; # 100
    sclk_pin = 0;
	mosi_pin = write_op[12]; # 100
	sclk_pin = 1; # 100
    sclk_pin = 0;
	mosi_pin = write_op[13]; # 100
	sclk_pin = 1; # 100
    sclk_pin = 0;
	mosi_pin = write_op[14]; # 100
	sclk_pin = 1; # 100
    sclk_pin = 0;
	mosi_pin = write_op[15]; # 100
	sclk_pin = 1; # 100


	sclk_pin = 0; # 100

    cs_pin = 1; 
    sclk_pin = 1; # 100
    sclk_pin = 0; # 100
    sclk_pin = 1; # 100
    sclk_pin = 0; # 100

    // Read op
    sclk_pin = 1; # 100
    sclk_pin = 0;
	cs_pin = 0;
	mosi_pin = read_op[0]; # 100
	sclk_pin = 1; # 100
    sclk_pin = 0;
	mosi_pin = read_op[1]; # 100
	sclk_pin = 1; # 100
    sclk_pin = 0;
	mosi_pin = read_op[2]; # 100
	sclk_pin = 1; # 100
    sclk_pin = 0;
	mosi_pin = read_op[3]; # 100
	sclk_pin = 1; # 100
    sclk_pin = 0;
	mosi_pin = read_op[4]; # 100
	sclk_pin = 1; # 100
    sclk_pin = 0;
	mosi_pin = read_op[5]; # 100
	sclk_pin = 1; # 100
    sclk_pin = 0;
	mosi_pin = read_op[6]; # 100
	sclk_pin = 1; # 100
    sclk_pin = 0;
	mosi_pin = read_op[7]; # 100
	sclk_pin = 1; # 100

    sclk_pin = 0; # 100
    sclk_pin = 1; # 100
    sclk_pin = 0; # 100
    sclk_pin = 1; # 100
    sclk_pin = 0; # 100
    sclk_pin = 1; # 100
    sclk_pin = 0; # 100

    sclk_pin = 1; # 100
    sclk_pin = 0; # 100
    sclk_pin = 1; # 100
    sclk_pin = 0; # 100
    sclk_pin = 1; # 100
    sclk_pin = 0; # 100
    sclk_pin = 1; # 100
    sclk_pin = 0; # 100
    sclk_pin = 1; # 100
    sclk_pin = 0; # 100
    sclk_pin = 1; # 100
    sclk_pin = 0; # 100
    sclk_pin = 1; # 100
    sclk_pin = 0; # 100
    sclk_pin = 1; # 100
    sclk_pin = 0; # 100
    sclk_pin = 1; # 100
    sclk_pin = 0; # 100
    sclk_pin = 1; # 100
    sclk_pin = 0; # 100


	$finish;

	end

endmodule
