`timescale 1ns/10ps
module four_bit_2x1_mux_tb;
	
	// Your code goes here.  DO NOT change anything that is already given! Otherwise, you will not be able to pass the tests!
	localparam period = 20;
	reg[3:0] In_0, In_1;
	reg Select;
	wire[3:0] Out;
	integer i;
	integer j;
	four_bit_2x1_mux dut (.In_0(In_0), .In_1(In_1), .Select(Select), .Out(Out));
	initial begin
		$dumpfile("result.vcd");
		$dumpvars;
		for (i = 0; i < 16; i++) begin
			for (j = 0; j < 16; j++) begin
				In_0 = i;
				In_1 = j;
				Select = 0;
				#period;
				Select = 1;
				#period;
			end
		end
		$finish;
	end
endmodule
