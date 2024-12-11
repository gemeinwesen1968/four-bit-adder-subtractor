`timescale 1 ns/10 ps
module full_adder_tb;

    // Your code goes here.  DO NOT change anything that is already given! Otherwise, you will not be able to pass the tests!
    localparam period = 20;
    reg A, B, Cin;
    wire S;
    wire Cout;
    integer i;
    full_adder uut(.A(A), .B(B), .Cin(Cin), .S(S), .Cout(Cout));
    initial begin
        $dumpfile("result.vcd");
        $dumpvars;
        for (i = 0; i < 8; i++) begin
            {A, B, Cin} = i;
            #period;
      end
      $finish;
    end
endmodule