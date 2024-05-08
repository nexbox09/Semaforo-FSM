module fsm_example1
    (
    input logic clk,
    input logic reset,
    input logic TAv, TBv, E, P, B,
    output logic AvR, AvY, AvG, BvR, BvY, BvG, BiciG, BiciR
    );
    
    typedef enum logic [2:0] {S0, S1, S2, S3} statetype;
    statetype state, nextstate;
    
    logic [7:0] out1, out2, out3, out4, out5, out6, out7, out8;
    
    // State Register
    always_ff @(posedge clk, posedge reset)
        if (reset) state <= S0;
        else state <= nextstate;
        
    // Next State Logic
    always_comb
        case (state)
            S0: if(TAv && P) nextstate = S1;
                else if(TAv && ~P) nextstate = S2;
                else nextstate = S0;
            S1: if(E) nextstate = S2;
                else nextstate = S0;
            S2: if(TBv && E && B) nextstate = S3;
                else if(TBv && E && ~B) nextstate = S2;
                else if(TBv && ~E) nextstate = S0;
                else nextstate = S2;
            S3: if(P) nextstate = S0;
                else nextstate = S2;
            default: nextstate = S0;
        endcase
    
    // Output Logic
    always_comb
        case (state)
            S0: begin {out1, out2, out3, out4, out5, out6, out7, out8} = 8'b00110001; end
            S1: begin {out1, out2, out3, out4, out5, out6, out7, out8} = 8'b01010001; end
            S2: begin {out1, out2, out3, out4, out5, out6, out7, out8} = 8'b10000110; end
            S3: begin {out1, out2, out3, out4, out5, out6, out7, out8} = 8'b10001001; end
            default:;
        endcase            
    
    assign AvR = out1;
    assign AvY = out2; 
    assign AvG = out3;
    assign BvR = out4;
    assign BvY = out5;
    assign BvG = out6;
    assign BiciG = out7;
    assign BiciR = out8;
    
endmodule