module inputWave
(
  input[15:0] dataIn,
  input sclk,
  input enable,
  output reg dataOut,
  output reg actualCS
  );
  reg[4:0] pos;
  initial pos = 4'd15;
always @(negedge sclk)begin
  actualCS = enable;
  dataOut = dataIn[pos];
  $display("On bit %b which equals %b", pos, dataIn[pos]);
  if (actualCS == 0)begin
    pos = pos - 1;
    end
  if (pos == 0000 && actualCS == 0)begin
    pos = 4'd15;
   end
end

endmodule
