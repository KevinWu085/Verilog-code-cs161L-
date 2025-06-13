//=========================================================================
// Name & Email must be EXACTLY as in Gradescope roster!
// Name: Kevin Wu
// Email: kwu085@ucr.edu
// 
// Assignment name: lab01
// Lab section: 021
// TA: Nurlan Nazaraliyev
// 
// I hereby certify that I have not received assistance on this assignment,
// or used code, from ANY outside source other than the instruction team
// (apart from what was provided in the starter file).
// Kevin Wu
//=========================================================================

module gen_tick # ( parameter SRC_FREQ = 5000, parameter TICK_FREQ = 1) (
    input src_clk,
    input enable,
    output tick
);

// Declare registers and wires here
reg[31:0] counter = 0;
reg[31:0] limit = SRC_FREQ/TICK_FREQ/2;
reg tick_out = 0;

initial begin
    counter = 0;
    tick_out = 0;
end

always @(posedge src_clk) begin
    // put your code for the multiplier here
    if(enable) begin
        counter <= counter + 1;
        if(counter >= limit) begin
            if(tick_out == 0)
                tick_out <= 1;
            if(tick_out == 1)
                tick_out <= 0;
            counter <= 1;
        end
    end
end

// Change this assign statement to the actual tick value
assign tick = tick_out;

endmodule
