`timescale 1ns/10ps
module two_s_complement_tb;

   // Your code goes here.  DO NOT change anything that is already given! Otherwise, you will not be able to pass the tests!
   localparam period = 20;
   reg[3:0] in;
   wire[3:0] out;
   reg[3:0] count = 4'b0000;
   integer i;
   two_s_complement uut(.In(in), .Out(out));
   initial begin
      $dumpfile("result.vcd");
      $dumpvars;
      for (i = 0; i < 16; i++) begin
         in = count;
         count = count + 1;
         #period;
      ends
      $finish;   
   end
endmodule 
