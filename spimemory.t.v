
`include "spimemory.v"


`timescale 1 ns / 1 ps

module spimemory_test();

	reg clk, sclk_pin, cs_pin, mosi_pin;
	wire miso_pin;
	wire[3:0] leds;

	spiMemory dut(.clk(clk), .sclk_pin(sclk_pin), .cs_pin(cs_pin), .miso_pin(miso_pin), .mosi_pin(mosi_pin), .leds(leds));

	parameter write_op = 16'b0101011011110101;
	parameter read_op = 8'b01010111;

	parameter ad_test = 6'b000000;

	initial begin
	$display("I am infact running. Dont mind me.");

	$dumpfile("spimemory.vcd");
	$dumpvars();
		
	sclk_pin = 1;
	cs_pin = 1;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 0;
	cs_pin = 0;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 1;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 0;
	mosi_pin = write_op[0];
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 1;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 0;
	mosi_pin = write_op[1];
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 1;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 0;
	mosi_pin = write_op[2];
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 1;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 0;
	mosi_pin = write_op[3];
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 1;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 0;
	mosi_pin = write_op[4];
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 1;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 0;
	mosi_pin = write_op[5];
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 1;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 0;
	mosi_pin = write_op[6];
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 1;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 0;
	mosi_pin = write_op[7];
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 1;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 0;

	$display(dut.addr_we);
	$display(dut.data_mem.address);
	
	mosi_pin = write_op[8];
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 1;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 0;

	mosi_pin = write_op[9];
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 1;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 0;
	mosi_pin = write_op[10];
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 1;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 0;
	mosi_pin = write_op[11];
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 1;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 0;
	mosi_pin = write_op[12];
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 1;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 0;
	mosi_pin = write_op[13];
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 1;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 0;
	mosi_pin = write_op[14];
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 1;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 0;
	mosi_pin = write_op[15];
	#5 clk = 0; #5 clk = 1;

	cs_pin = 1;
	sclk_pin = 1; #1000

	cs_pin = 1;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 0;
	cs_pin = 0;
	mosi_pin = read_op[0];
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 1;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 0;
	mosi_pin = read_op[1];
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 1;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 0;
	mosi_pin = read_op[2];
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 1;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 0;
	mosi_pin = read_op[3];
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 1;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 0;
	mosi_pin = read_op[4];
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 1;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 0;
	mosi_pin = read_op[5];
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 1;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 0;
	mosi_pin = read_op[6];
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 1;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 0;
	mosi_pin = read_op[7];
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 1;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 0;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 1;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 0;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 1;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 0;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 1;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 0;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 1;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 0;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 1;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 0;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 1;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 0;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 1;
	#5 clk = 0; #5 clk = 1;
	sclk_pin = 0;
	#5 clk = 0; #5 clk = 1;

	$finish();
	end

endmodule