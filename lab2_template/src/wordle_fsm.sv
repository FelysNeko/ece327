/***************************************************/
/* ECE 327: Digital Hardware Systems - Spring 2026 */
/* Lab 2                                           */
/* Wordle FSM Module                               */
/***************************************************/

module wordle_fsm #(
    parameter NUM_LETTERS = 4,                      // Word size in letters
    parameter WORD_WIDTH = NUM_LETTERS * 8,         // Word bitwidth
    parameter RSLT_WIDTH = NUM_LETTERS * 2,         // Result bitwidth
    parameter MAX_GUESSES = 6,                      // Maximum number of allowed guesses
    parameter GUESS_CNTW = $clog2(MAX_GUESSES) + 1  // Bitwidth of guess counter
)(
    input clk,                              // Input clock
    input rstn,                             // Input active-low reset
    input [WORD_WIDTH-1:0] i_ref_word,      // Input reference word 
    input [WORD_WIDTH-1:0] i_guess_word,    // Input user guess word
    input [GUESS_CNTW-1:0] i_guess_id,      // Input user guess ID
    output o_ready,                         // Output ready signal (result is valid & ready to accept new guess word)
    output [RSLT_WIDTH-1:0] o_result,       // Output result of a guess (4 letters x 2-bit status: GREEN, YELLOW, GREY)
    output [GUESS_CNTW-1:0] o_guess_count,  // Output number of user guesses so far
    output [1:0] o_game_status              // Output game status (ongoing, user won, user lost)
);

// Declare registers to hold game result, guess count, and status
enum logic [1:0] {GREY = 2'b00, GREEN = 2'b01, YELLOW = 2'b10} r_result [0:NUM_LETTERS-1];
logic [GUESS_CNTW-1:0] r_guess_count;
enum logic [1:0] {ONGOING = 2'b00, WIN = 2'b11, LOSE = 2'b10} r_game_status;

/******* Your code starts here *******/



/******* Your code ends here ********/

// Connect game result, guess count, and status output ports to the declared corresponding registers
genvar j;
generate
    for (j = 0; j < NUM_LETTERS; j = j + 1) begin: assign_result
        // The indexing syntax used below [M+:N] extracts an N-bit slice of a bitvector starting from bit M (i.e., equivalent to [M+N-1:M])
        assign o_result[j*2+:2] = r_result[j];
    end
endgenerate
assign o_guess_count = r_guess_count;
assign o_game_status = r_game_status;

endmodule
