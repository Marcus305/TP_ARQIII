`timescale 1 ps / 100 fs

module MIPS_TB();
  parameter ClockDelay = 5000;

  reg clk, reset;
  mips myMIPS(clk, reset);

  initial begin
    clk = 0;
    reset = 1;
    #(ClockDelay/4);
    reset = 0;
  end

  always # (ClockDelay/2) clk = ~clk;

  always @(posedge clk) begin
    if (myMIPS.Instruction) begin
      $display("PC: %b | Instruction: %b | ReadData1: %b | ReadData2: %b | WB_WriteData: %b | Bus_A_ALU: %b | Bus_B_ALU: %b", 
               myMIPS.PC, myMIPS.Instruction, myMIPS.ReadData1, myMIPS.ReadData2, myMIPS.WB_WriteData, myMIPS.Bus_A_ALU, myMIPS.Bus_B_ALU);
    end
  end
endmodule
