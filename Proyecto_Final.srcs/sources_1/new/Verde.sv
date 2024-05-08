`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.02.2024 23:55:58
// Design Name: 
// Module Name: Verde
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// Implementa la lógica para que P = Pi y G = Gi directamente sin modificaciones.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module Verde(
    input logic Gi, Pi, // Define las entradas Gi y Pi
    output logic P, G   // Define las salidas P y G
);

    // Asigna directamente las entradas a las salidas
    assign P = Pi; // P toma directamente el valor de Pi
    assign G = Gi; // G toma directamente el valor de Gi

endmodule