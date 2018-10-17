module counter
(
  input clk,
  output waiting
);
parameter waittime = 7;

reg counter;
initial counter <= 0;
always @(posedge clk) begin
  if( counter == waittime) begin
      waiting <= 1;
      counter <= 0;
  end
  else begin
      counter <= counter+1;
      waiting <= 0;
  end
end
endmodule // counter
