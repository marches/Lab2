
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
	mosi_pin <= dataOut;
    $dumpfile("spi.vcd"); //Creating .vcd file for timing analysis
    $dumpvars;
	cs_pin <= 1;#100
	$display("STARTING NOW!");
	cs_pin <= 0;#200
	mosi_pin <= dataOut;
	//mosi_pin = write_op[0]; #100
	$display(dut.addr_we);
	$display(dut.data_mem.address);#200
	mosi_pin <= dataOut;
	//mosi_pin = write_op[1]; #100
	//mosi_pin = write_op[2]; #100
	//mosi_pin = write_op[3]; #100
	$display(dut.addr_we);
	$display(dut.data_mem.address);#200
	mosi_pin <= dataOut;
	//mosi_pin = write_op[4]; #100
	//mosi_pin = write_op[5]; #100
	$display(dut.addr_we);
	$display(dut.data_mem.address);#200
	mosi_pin <= dataOut;
	//mosi_pin = write_op[6]; #100
	//mosi_pin = write_op[7]; #100
	$display(dut.addr_we);
	$display(dut.data_mem.address);#200
	mosi_pin <= dataOut;
	//mosi_pin = write_op[8]; #100
	$display("Address: %b",dut.addr_we);
	$display("DatMem: %b",dut.dm_we);#200
	mosi_pin <= dataOut;
	//mosi_pin = write_op[9]; #100
	$display("DatMem: %b",dut.dm_we);
	$display("ADDRESS: %b",dut.data_mem.address);#200
	mosi_pin <= dataOut;
	//mosi_pin = write_op[10]; #100
	$display("DatMem: %b",dut.dm_we);
	$display("ADDRESS: %b",dut.data_mem.address);#200
	mosi_pin <= dataOut;
	//mosi_pin = write_op[11]; #100
	$display("DatMem: %b",dut.dm_we);
	$display("ADDRESS: %b",dut.data_mem.address);#200
	mosi_pin <= dataOut;
	$display("DatMem: %b",dut.dm_we);
	$display("ADDRESS: %b",dut.data_mem.address);#200
	//mosi_pin = write_op[13]; #100
	mosi_pin <= dataOut;
	$display("DatMem: %b",dut.dm_we);
	$display("ADDRESS: %b",dut.data_mem.address);#200
	//mosi_pin = write_op[14]; #100
	mosi_pin <= dataOut;
	$display("DatMem: %b",dut.dm_we);
	$display("ADDRESS: %b",dut.data_mem.address);#200
	//mosi_pin = write_op[15]; #100
	mosi_pin <= dataOut;
	$display("DatMem: %b",dut.dm_we);
	$display("ADDRESS: %b",dut.data_mem.address);
	#200 $display("DatMem: %b",dut.dm_we);
	#200 $display("DatMem: %b",dut.dm_we);
	#200 $display("DatMem: %b",dut.dm_we);
	#200 $display("DatMem: %b",dut.dm_we);
	$display("Address: %b",dut.data_mem.address);
	//#10000;
	$finish;

	end

endmodule
