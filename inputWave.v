module inputWave
(
  input[15:0] dataIn,
  input sclk,
  input enable,
  output reg dataOut
  );
  reg[4:0] pos;
  initial pos = 4'd15;
always @(negedge sclk)begin
  //pos = 15;
  dataOut = dataIn[pos];
  $display("On bit %b which equals %b", pos, dataIn[pos]);
  if (enable == 0)begin
    pos = pos - 1;
    end
  if (pos == 0000 && enable == 0)begin
    pos = 4'd15;
   end
end

endmodule
