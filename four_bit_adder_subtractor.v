module four_bit_adder_subtractor(A, B, subtract, Result, Cout);
    input [3:0] A;
    input [3:0] B;
    input subtract;
    output [3:0] Result;
    output Cout;

    // Your code goes here.  DO NOT change anything that is already given! Otherwise, you will not be able to pass the tests!
    wire[3:0] complement;
    wire[3:0] muxout;
    two_s_complement complementer (.In(B), 
        .Out(complement));
    four_bit_2x1_mux mux(.In_0(B), 
        .In_1(complement), 
        .Select(subtract), 
        .Out(muxout));
    four_bit_rca adder (
        .A(A),
        .B(muxout),
        .Cin(0),
        .S(Result),
        .Cout(Cout)
    );
endmodule