`timescale 1ns / 1ps

module clock_psc
    (
    input logic my_input,
    output logic my_output
    );
            
    logic[31:0]myreg;
    
    always @(posedge my_input)
        myreg +=1;
        
    assign my_output = myreg[26];
endmodule