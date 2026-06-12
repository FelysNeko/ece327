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

localparam logic [RSLT_WIDTH-1:0] ALL_GREEN = {NUM_LETTERS{2'b01}};
localparam logic [GUESS_CNTW-1:0] ONE_GUESS = {{(GUESS_CNTW-1){1'b0}}, 1'b1};
localparam logic [GUESS_CNTW-1:0] MAX_GUESSES_VAL = MAX_GUESSES;

logic r_ready;
logic [WORD_WIDTH-1:0] r_ref_word;
logic [WORD_WIDTH-1:0] r_guess_word;
logic [GUESS_CNTW-1:0] r_last_guess_id;
logic [RSLT_WIDTH-1:0] w_colour_result;

integer k;

enum logic [0:0] {S_READY = 1'b0, S_SCORE = 1'b1} r_state;

// Pure combinational colour calculator. The FSM registers its inputs/outputs.
word_to_colour #(
    .NUM_LETTERS(NUM_LETTERS),
    .WORD_WIDTH(WORD_WIDTH),
    .RSLT_WIDTH(RSLT_WIDTH)
) colour_inst (
    .i_ref_word(r_ref_word),
    .i_guess_word(r_guess_word),
    .o_result(w_colour_result)
);

always_ff @(posedge clk) begin
    if (!rstn) begin
        r_state         <= S_READY;
        r_ready         <= 1'b0;
        r_ref_word      <= '0;
        r_guess_word    <= '0;
        r_last_guess_id <= '0;
        r_guess_count   <= '0;
        r_game_status   <= ONGOING;

        for (k = 0; k < NUM_LETTERS; k = k + 1) begin
            r_result[k] <= GREY;
        end
    end else begin
        case (r_state)
            S_READY: begin
                // Once the game ends, do not accept guesses until guess_id = 0.
                if (r_game_status != ONGOING) begin
                    r_ready <= 1'b0;

                    if (i_guess_id == '0) begin
                        r_ref_word      <= i_ref_word;
                        r_guess_word    <= '0;
                        r_last_guess_id <= '0;
                        r_guess_count   <= '0;
                        r_game_status   <= ONGOING;
                        r_ready         <= 1'b1;

                        for (k = 0; k < NUM_LETTERS; k = k + 1) begin
                            r_result[k] <= GREY;
                        end
                    end
                end else begin
                    r_ready <= 1'b1;

                    // idle condition
                    // while guess_id is 0 and no guesses have been accepted yet.
                    if ((i_guess_id == '0) && (r_guess_count == '0) && (r_last_guess_id == '0)) begin
                        r_ref_word <= i_ref_word;
                    end

                    // Accept a guess only when its ID is higher than the previous ID.
                    if ((i_guess_id != '0) && (i_guess_id > r_last_guess_id)) begin
                        r_guess_word    <= i_guess_word;
                        r_last_guess_id <= i_guess_id;
                        r_ready         <= 1'b0;
                        r_state         <= S_SCORE;

                        
                        if (r_guess_count == '0) begin
                            r_ref_word <= i_ref_word;
                        end
                    end
                end
            end

            S_SCORE: begin
                // Store the result produced from the registered
                for (k = 0; k < NUM_LETTERS; k = k + 1) begin
                    case (w_colour_result[k*2+:2])
                        2'b01:   r_result[k] <= GREEN;
                        2'b10:   r_result[k] <= YELLOW;
                        default: r_result[k] <= GREY;
                    endcase
                end

                r_guess_count <= r_guess_count + ONE_GUESS;
                r_state       <= S_READY;

                if (w_colour_result == ALL_GREEN) begin
                    r_game_status <= WIN;
                    r_ready       <= 1'b0;
                end else if ((r_guess_count + ONE_GUESS) >= MAX_GUESSES_VAL) begin
                    r_game_status <= LOSE;
                    r_ready       <= 1'b0;
                end else begin
                    r_game_status <= ONGOING;
                    r_ready       <= 1'b1;
                end
            end

            default: begin
                r_state <= S_READY;
                r_ready <= 1'b1;
            end
        endcase
    end
end

assign o_ready = r_ready;

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


// -----------------------------------------------------------------------------
// Helper module: combinational Wordle colour calculation.
// It outputs the packed result in the same order as the lab handout:
// leftmost letter in the most significant 2 bits, rightmost letter in the least
// significant 2 bits.
// -----------------------------------------------------------------------------
module word_to_colour #(
    parameter NUM_LETTERS = 4,
    parameter WORD_WIDTH  = NUM_LETTERS * 8,
    parameter RSLT_WIDTH  = NUM_LETTERS * 2
)(
    input  logic [WORD_WIDTH-1:0] i_ref_word,
    input  logic [WORD_WIDTH-1:0] i_guess_word,
    output logic [RSLT_WIDTH-1:0] o_result
);

    localparam logic [1:0] GREY_C   = 2'b00;
    localparam logic [1:0] GREEN_C  = 2'b01;
    localparam logic [1:0] YELLOW_C = 2'b10;

    logic [7:0] ref_letter   [0:NUM_LETTERS-1];
    logic [7:0] guess_letter [0:NUM_LETTERS-1];
    logic [NUM_LETTERS-1:0] ref_used;
    logic [NUM_LETTERS-1:0] guess_done;

    integer ci;
    integer gi;
    integer ri;
    integer g;
    logic found;

    always_comb begin
        o_result   = '0;
        ref_used   = '0;
        guess_done = '0;

        // Unpack bytes. Letter 0 is the leftmost/MSB ASCII byte.
        for (ci = 0; ci < NUM_LETTERS; ci = ci + 1) begin
            ref_letter[ci]   = i_ref_word[(NUM_LETTERS-1-ci)*8 +: 8];
            guess_letter[ci] = i_guess_word[(NUM_LETTERS-1-ci)*8 +: 8];
            o_result[(NUM_LETTERS-1-ci)*2 +: 2] = GREY_C;
        end

        // exact-position matches are GREEN and consume that reference letter.
        for (ci = 0; ci < NUM_LETTERS; ci = ci + 1) begin
            if (guess_letter[ci] == ref_letter[ci]) begin
                o_result[(NUM_LETTERS-1-ci)*2 +: 2] = GREEN_C;
                ref_used[ci]   = 1'b1;
                guess_done[ci] = 1'b1;
            end
        end

        // misplaced matches are YELLOW
        // only the last occurrence is marked yellow
        for (gi = NUM_LETTERS; gi > 0; gi = gi - 1) begin
            g = gi - 1;
            found = 1'b0;

            if (!guess_done[g]) begin
                for (ri = 0; ri < NUM_LETTERS; ri = ri + 1) begin
                    if (!found && !ref_used[ri] && (guess_letter[g] == ref_letter[ri])) begin
                        o_result[(NUM_LETTERS-1-g)*2 +: 2] = YELLOW_C;
                        ref_used[ri] = 1'b1;
                        found = 1'b1;
                    end
                end
            end
        end
    end

endmodule