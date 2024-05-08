module top_fsm    (
    input logic CLK100MHZ,    input logic [5:0]sw,
    output logic [8:0]LED,
    output logic [7:0]JA);

    // Internal signal declaration    logic internal_psc_clock;
    
    logic int_reset = 1'b0;
    // Body    
    clock clock_input (.clock_input(CLK100MHZ), .clock_output(internal_psc_clock));
    
    fsm_semaforo smfr (.clk(internal_psc_clock), .reset(sw[5]), .TA(sw[0]), .TB(sw[1]), 
    .E(sw[2]), .M(sw[3]), .LaR(JA[0]), .LaY(JA[1]), .LaG(JA[2]),     
    .LbR(JA[4]), .LbY(JA[5]), .LbG(JA[6])) ;

    assign LED[8] = internal_psc_clock;
endmodule
