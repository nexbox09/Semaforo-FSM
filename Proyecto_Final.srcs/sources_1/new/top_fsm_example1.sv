module fsm
    (
    input logic CLK100MHZ,
    input logic [5:0]sw,
    output logic [8:0]LED
    );
    
    // Internal signal declaration
    logic internal_psc_clock;
    logic int_reset = 1'b0;
    
    // Body
    clock_psc clk (CLK100MHZ, internal_psc_clock);
    
    fsm_example1 smfr (internal_psc_clock, sw[5], sw[0], sw[1], sw[2], sw[3], sw[4],
                   LED[0], LED[1], LED[2], LED[3], LED[4], LED[5], LED[6], LED[7]);
    
    assign LED[8] = internal_psc_clock;
endmodule