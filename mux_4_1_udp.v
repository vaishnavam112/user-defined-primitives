`timescale 1ns / 1ps

primitive mux_4_1_udp(y, sel1, sel0, d0, d1, d2, d3);
    
    input sel1, sel0, d0, d1, d2, d3;
    output y;
    
    table
    //sel1  sel0  d0  d1  d2  d3 : o/p=y
        0    0     0   ?   ?   ? : 0;
        0    0     1   ?   ?   ? : 1;
        0    1     ?   0   ?   ? : 0;
        0    1     ?   1   ?   ? : 1;
        1    0     ?   ?   0   ? : 0;
        1    0     ?   ?   1   ? : 1;
        1    1     ?   ?   ?   0 : 0;
        1    1     ?   ?   ?   1 : 1;
        x    ?     ?   ?   ?   ? : x; 
        ?    x     ?   ?   ?   ? : x; 
        
    endtable

endprimitive
