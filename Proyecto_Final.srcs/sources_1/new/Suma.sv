`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 25.02.2024 23:55:58
// Design Name:
// Module Name: Suma
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
// Implementa la lógica para Si = Pi XOR Ci-1.
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////

module Suma(
    input logic Pi,       // Define la entrada Pi
    input logic Ci_1,     // Define la entrada del acarreo Ci-1
    output logic Si       // Define la salida Si
);

    // Implementa la lógica de la operación
    assign Si = Pi ^ Ci_1; // Si es el resultado de Pi XOR Ci-1

endmodule