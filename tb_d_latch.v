`timescale 1ns / 1ps


module tb_d_latch( );
  reg clock, reset, d;
  wire q;
  
  d_latch lch(q, clock, reset, d);
  
  initial clock = 0;
  always #5 clock=~clock;
  
  initial begin
    $monitor("At time = %0t: clock = %b, reset = %b, d = %b, q = %b", $time, clock, reset, d, q);
    reset = 1;
    #10 reset = 0;
    d = 1;
    #20;
    d = 0;
    #10 $finish;
  end
  
endmodule

