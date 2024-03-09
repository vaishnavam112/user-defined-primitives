`timescale 1ns / 1ps
primitive d_ff_udp(q,clk,rst,d);
    output reg q;
    input clk, rst, d;
    
    initial q =0;
    
    table
    
    //clk posedge- 01
    
    // clk  rst  d  : q :  q+1
        ?    1   ?  : ? : 0;
        ?    0   0  : ? : -;
       
      (01)    0   1  : ? : 1;
      (01)    0   0  : ? : 0;
       
      (1x)    0   ?  : ? : -;
      (x1)    0   ?  : ? : -;
    
    endtable
    
    
    
endprimitive
