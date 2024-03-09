`timescale 1ns / 1ps

module tb_mux_4_1_udp( );

    reg sel1, sel0, d0, d1, d2, d3;
    wire y;
    
    mux_4_1_udp mux(.sel1(sel1), .sel0(sel0), .d0(d0), .d1(d1),
                .d2(d2), .d3(d3), .y(y));
                
        always #5 d0=~d0;
        always #5 d1=~d1;
        always #5 d2=~d1;
        always #5 d3=~d3;        
                
        initial
        begin
            $display("displaying the user defined 4_1 mux primitive...");
            $monitor("time=%0t sel1=%0b, sel0=%0b, d0=%0b, d1=%0b, d2=%0b, d3=%0b, y= %0b ",$time, sel1, sel0, d0, d1, d2, d3, y);
            
            sel1=0;
            sel0=0;
            d0=0; d1= 1; d2=0; d3=0;
            #10
            
            sel1=1; sel0=0; #10
            sel0=1; #10
            sel1=0; 
            #10;
            sel1=1; sel0=0; #10
            
            sel1=0; sel0=1; #10
            sel1=0; sel0=0; #10;
            
            #150;
            $finish;
            
        
        end        
    
endmodule
