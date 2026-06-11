/***************************************************/
/* ECE 327: Digital Hardware Systems - Spring 2026 */
/* Lab 2                                           */
/* Wordle Game Testbench                           */
/***************************************************/

`timescale 1ns / 1ps

// Define the name of this testbench module. Since testbenches typically generate inputs and
// monitor outputs of the circuit being tested, they usually do not have any input/output ports.
module wordle_top_tb();

localparam CLK_PERIOD = 2;                          // Clock period in nanoseconds
localparam NUM_LETTERS = 4;                         // Word size in letters
localparam WORD_WIDTH = NUM_LETTERS * 8;            // Word bitwidth
localparam RSLT_WIDTH = NUM_LETTERS * 2;            // Result bitwidth
localparam MAX_GUESSES = 6;                         // Maximum number of allowed guesses
localparam GUESS_CNTW = $clog2(MAX_GUESSES) + 1;    // Bitwidth of guess counter
localparam DICT_SIZE = 1024;                        // Depth of the word ROM
localparam ADDR_WIDTH = $clog2(DICT_SIZE);          // Bitwidth of ROM address

// Declare logic signals for the circuit's inputs/outputs
logic clk;
logic rstn;
logic [ADDR_WIDTH-1:0] i_ref_word_idx;
logic [WORD_WIDTH-1:0] i_guess_word;
logic [GUESS_CNTW-1:0] i_guess_id;
logic o_ready;
logic [RSLT_WIDTH-1:0] o_result;
logic [GUESS_CNTW-1:0] o_guess_count;
logic [1:0] o_game_status;

// Signal to identify if simulation passed (1'b0) or failed (1'b1). Your testbench should test
// the design and set this signal accordingly.
logic sim_failed;

// Instantiate the design under test (dut), set the desired values of its parameters, and connect 
// its input/output ports to the declared signals.
wordle_top dut (
    .clk(clk), 
    .rstn(rstn),
    .i_ref_word_idx(i_ref_word_idx),
    .i_guess_word(i_guess_word),
    .i_guess_id(i_guess_id),
    .o_ready(o_ready),
    .o_result(o_result),
    .o_guess_count(o_guess_count),
    .o_game_status(o_game_status)
);

// This initial block generates a clock signal
initial begin
    clk = 1'b0;
    forever #(CLK_PERIOD/2) clk = ~clk;
end

/******* Your code starts here *******/

// Add any signal/variable declarations you need here.

/******* Your code ends here ********/

initial begin
    // Reset all testbench signals
    sim_failed = 1'b0;
    rstn = 1'b0;
    i_ref_word_idx = 'd0;
    i_guess_word = 'd0;
    i_guess_id = 'd0;
    #(5*CLK_PERIOD);

    /******* Your code starts here *******/
    
    // Add your testbench logic here
    
    
    /******* Your code ends here ********/
    
    if (sim_failed) begin
        $display("TEST FAILED!");
    end else begin
        $display("TEST PASSED!");
    end 
    $stop;
end

endmodule
