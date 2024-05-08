`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.02.2024 23:55:58
// Design Name: 
// Module Name: Rojo
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// Implementa la lógica para que P = Ai XOR Bi y G = Ai AND Bi.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module Rojo(
    input logic Ai, Bi, // Define las entradas Ai y Bi
    output logic P, G   // Define las salidas P y G
);

    // Implementa la lógica para las operaciones
    assign P = Ai ^ Bi; // P es el resultado de Ai XOR Bi
    assign G = Ai & Bi; // G es el resultado de Ai AND Bi

endmodule
