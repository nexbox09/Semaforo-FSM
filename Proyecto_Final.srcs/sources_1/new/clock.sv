`timescale 1ns / 1ps

module clock
    (
    input logic clock_input,
    output logic clock_output
    );

    logic[31:0]myreg;

    always @(posedge clock_input)
        myreg +=1;

    assign clock_output = myreg[26];
endmodule
