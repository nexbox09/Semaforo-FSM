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
// Description: `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.02.2024 23:55:58
// Design Name: 
// Module Name: Amarillo
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// Implementa la lógica para P = Pi AND Pi-1 y G = (Pi AND Gi-1) OR Gi.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module Amarillo(
    input logic Gi, Pi, Gi_1, Pi_1, // Define las entradas Gi, Pi, Gi-1, Pi-1
    output logic P, G               // Define las salidas P y G
);

    // Implementa la lógica para las operaciones
    assign P = Pi & Pi_1;           // P es el resultado de Pi AND Pi-1
    assign G = (Pi & Gi_1) | Gi;    // G es el resultado de (Pi AND Gi-1) OR Gi

endmodule
