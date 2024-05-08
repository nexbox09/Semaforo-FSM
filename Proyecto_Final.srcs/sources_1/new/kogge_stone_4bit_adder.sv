`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2024 01:58:58
// Design Name: 
// Module Name: kogge_stone_4bit_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module kogge_stone_4bit_adder(
    input logic sw [8:0] ,    // Entradas A0 a B3 y Cin
    output logic LED0, LED1, LED2, LED3, LED4  //carreo de salida
);

    logic P0_rojo, G0_rojo, P1_rojo, G1_rojo, P2_rojo, G2_rojo, P3_rojo, G3_rojo, P0_amarillo, G0_amarillo, P1_amarillo, G1_amarillo, P2_amarillo, G2_amarillo ;
    

Rojo rojo_0 (.Ai(sw[1]), .Bi(sw[5]), .P(P0_rojo), .G(G0_rojo) );
Rojo rojo_1 (.Ai(sw[2]), .Bi(sw[6]), .P(P1_rojo), .G(G1_rojo) );
Rojo rojo_2 (.Ai(sw[3]), .Bi(sw[7]), .P(P2_rojo), .G(G2_rojo) );
Rojo rojo_3 (.Ai(sw[4]), .Bi(sw[8]), .P(P3_rojo), .G(G3_rojo) );

Amarillo amarillo_0 (.Gi_1(G0_rojo), .Pi_1(P0_rojo), .Gi(G1_rojo), .Pi(P1_rojo), .P(P0_amarillo), .G(G0_amarillo) );
Amarillo amarillo_1 (.Gi_1(G1_rojo), .Pi_1(P1_rojo), .Gi(G2_rojo), .Pi(P2_rojo), .P(P1_amarillo), .G(G1_amarillo) );
Amarillo amarillo_2 (.Gi_1(G2_rojo), .Pi_1(P2_rojo), .Gi(G3_rojo), .Pi(P3_rojo), .P(P2_amarillo), .G(G2_amarillo) );

Amarillo amarillo_4 (.Gi_1(G0_rojo), .Pi_1(P0_rojo), .Gi(G1_amarillo), .Pi(P1_amarillo));
Amarillo amarillo_5 (.Gi_1(G0_amarillo), .Pi_1(P0_amarillo), .Gi(G2_amarillo), .Pi(P1_amarillo), .G(LED4));

Suma S_0 (.Pi(P0_rojo), .Ci_1(sw[0]), .Si(LED0));
Suma S_1 (.Pi(P1_rojo), .Ci_1(G0_rojo), .Si(LED1));
Suma S_2 (.Pi(P2_rojo), .Ci_1(G1_rojo), .Si(LED2));
Suma S_3 (.Pi(P3_rojo), .Ci_1(G2_rojo), .Si(LED3));


endmodule
