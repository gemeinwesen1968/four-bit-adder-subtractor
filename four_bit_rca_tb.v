`timescale 1 ns/10 ps
module four_bit_rca_tb;

  // Your code goes here.  DO NOT change anything that is already given! Otherwise, you will not be able to pass the tests!
  localparam period = 20;

  reg[3:0] A, B;
  reg Cin;
  wire[3:0] S;
  wire Cout;
  integer i, j, k;

  four_bit_rca dut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .S(S),
    .Cout(Cout)
  );

  initial begin
    $dumpfile("result.vcd");
    $dumpvars;
    for (i = 0; i < 16; i = i + 1) begin
      for (j = 0; j < 16; j = j + 1) begin
        for (k = 0; k < 2; k = k + 1) begin
          A = i;
          B = j;
          Cin = k;
          #period;
        end
      end
    end
    $finish;
  end
endmodule