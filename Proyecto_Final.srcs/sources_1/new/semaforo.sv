module fsm_semaforo
    (
    input logic clk,
    input logic reset,
    input logic TA, TB, E, M,
    output logic LaR, LaY, LaG, LbR, LbY, LbG
    );
    
    typedef enum logic [3:0] {S0, S1, S2, S3, S4} statetype;
    statetype state, nextstate;
    
    logic out1, out2, out3, out4, out5, out6, out7, out8;
    
    // State Register
    always_ff @(posedge clk, posedge reset)
        if (reset) state <= S0;
        else state <= nextstate;
    always_comb
        case (state)
        S0: begin
            if (!M) begin
                if (!E) begin
                    if (TA) nextstate = S0;  // Si TA es 1, se mantiene en S0
                    else nextstate = S1;     // Si TA es 0, cambia a S1
                end else begin
                    nextstate = S0;          // Si E es 1, se mantiene en S0
                end
            end else begin
                nextstate = S4;              // Si M es 1, cambia a S4
            end
            end
            S1: begin
                if (!E && TA) nextstate = S0;
                else if (!E && !TA) nextstate = S2;
                else if (E) nextstate = S4;
            end
            S2: begin
                if (!E && !TB && !M) nextstate = S3;
                else if (!E && TB && !M) nextstate = S2;
                else if ((E || M) && !TB) nextstate = S0;
                else if (E || M) nextstate = S4;
            end
            S3: begin
                if (!M) nextstate = S0;
                else nextstate = S4;
            end
            S4: begin
                if (M) nextstate = S4;
                else nextstate = S0;
            end
            default: nextstate = S0;
        endcase

    
    // Output Logic
    always_comb
        case (state)
            S0: begin {out1, out2, out3, out4, out5, out6} = 6'b001100; end
            S1: begin {out1, out2, out3, out4, out5, out6} = 6'b010100; end
            S2: begin {out1, out2, out3, out4, out5, out6} = 6'b100001; end
            S3: begin {out1, out2, out3, out4, out5, out6} = 6'b100010; end
            S4: begin {out1, out2, out3, out4, out5, out6} = 6'b100100; end
            default:;
        endcase            
    
    assign LaR = out1;
    assign LaY = out2; 
    assign LaG = out3;
    assign LbR = out4;
    assign LbY = out5;
    assign LbG = out6;
    
endmodule