`timescale 1ns / 1ps
//=========================================================================
// Name & Email must be EXACTLY as in Gradescope roster!
// Name: Kevin Wu
// Email: kwu085@ucr.edu
// 
// Assignment name: lab 06
// Lab section: 021
// TA: Nurlan Nazaraliyev
// 
// I hereby certify that I have not received assistance on this assignment,
// or used code, from ANY outside source other than the instruction team
// (apart from what was provided in the starter file).
// Kevin Wu
//=========================================================================
//=========================================================================
//
// DO NOT CHANGE ANYTHING BELOW THIS COMMENT. IT IS PROVIDED TO MAKE SURE 
// YOUR LAB IS SUCCESSFULL. 
//
//=========================================================================

module encoder #(
    parameter IN_SIZE = 4,
    parameter OUT_SIZE = 4
) (
    output reg [OUT_SIZE-1:0] out,
    input wire [IN_SIZE-1:0] in
);
    
    always @(in)
        for (out = 0; out < IN_SIZE && in[out] !== 1; out = out + 1) begin
    end
    
endmodule
