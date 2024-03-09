`timescale 1ns/1ps
primitive d_latch (q, clock, reset, d);
  output reg q;
  input clock, reset, d;

  
  initial q = 0;
  table
    //clock   reset   d  :  q  :  q_next
        ?       1     ?  :  ?  :  0; // reset condition
        1       0     1  :  ?  :  1; // q = data
        1       0     0  :  ?  :  0; // q = data
        0       0     ?  :  ?  :  -; // retain previous state for clock = 0
  endtable
endprimitive

