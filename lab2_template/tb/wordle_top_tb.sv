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

// Colour values used by the lab.
localparam [1:0] X = 2'b00;
localparam [1:0] G = 2'b01;
localparam [1:0] Y = 2'b10;

// Game status values used by the lab.
localparam [1:0] STATUS_ON   = 2'b00;
localparam [1:0] STATUS_LOSE = 2'b10;
localparam [1:0] STATUS_WIN  = 2'b11;

// Result words. Left letter is the left side of this vector.
localparam [RSLT_WIDTH-1:0] RES_XXXX = {X, X, X, X};
localparam [RSLT_WIDTH-1:0] RES_GXGX = {G, X, G, X};
localparam [RSLT_WIDTH-1:0] RES_GGGX = {G, G, G, X};
localparam [RSLT_WIDTH-1:0] RES_GGGG = {G, G, G, G};
localparam [RSLT_WIDTH-1:0] RES_XYXX = {X, Y, X, X};
localparam [RSLT_WIDTH-1:0] RES_XGXG = {X, G, X, G};

integer wait_count;

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

    // Test 1: normal game with reference word "furl".
    $display("----------------------------------------");
    $display("Test 1: ref word = furl");
    i_ref_word_idx = 10'd45;     // ROM word 45 is "furl"
    i_guess_word = 32'd0;
    i_guess_id = 0;
    #(3*CLK_PERIOD);
    rstn = 1'b1;
    #(6*CLK_PERIOD);

    // Round 1: farm -> GXGX
    i_guess_word = "farm";
    i_guess_id = 1;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 50)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);

    $display("Round 1: guess = farm");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b, count = 1, status = %b, ready = 1", RES_GXGX, STATUS_ON);
    if ((o_result != RES_GXGX) || (o_guess_count != 1) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Round 1 wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Round 1 correct.");
    end

    // Same guess id should be ignored.
    i_guess_word = "furl";
    i_guess_id = 1;
    #(8*CLK_PERIOD);

    $display("Same ID test: guess = furl, guess_id still 1");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b, count = 1, status = %b, ready = 1", RES_GXGX, STATUS_ON);
    if ((o_result != RES_GXGX) || (o_guess_count != 1) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Same ID test wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Same ID test correct.");
    end

    // Round 2: fury -> GGGX
    i_guess_word = "fury";
    i_guess_id = 2;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 50)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);

    $display("Round 2: guess = fury");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b, count = 2, status = %b, ready = 1", RES_GGGX, STATUS_ON);
    if ((o_result != RES_GGGX) || (o_guess_count != 2) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Round 2 wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Round 2 correct.");
    end

    // Round 3: furl -> GGGG, win
    i_guess_word = "furl";
    i_guess_id = 3;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 50)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);

    $display("Round 3: guess = furl");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b, count = 3, status = %b, ready = 0", RES_GGGG, STATUS_WIN);
    if ((o_result != RES_GGGG) || (o_guess_count != 3) || (o_game_status != STATUS_WIN) || (o_ready != 1'b0)) begin
        $display("Round 3 wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Round 3 correct.");
    end

    // Start a new game after WIN by setting guess_id to 0.
    $display("----------------------------------------");
    $display("Test 2: start new game after WIN");
    i_ref_word_idx = 10'd45;     // "furl"
    i_guess_word = 32'd0;
    i_guess_id = 0;
    #(10*CLK_PERIOD);

    $display("New game after WIN");
    $display("Got:      count = %0d, status = %b, ready = %b", o_guess_count, o_game_status, o_ready);
    $display("Expected: count = 0, status = %b, ready = 1", STATUS_ON);
    if ((o_guess_count != 0) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("New game after WIN wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("New game after WIN correct.");
    end

    // Repeated letter test: ref furl, guess llaa.
    // There is only one l in furl, so only the last l in llaa should be yellow.
    i_guess_word = "llaa";
    i_guess_id = 1;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 50)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);

    $display("Repeated letter test: guess = llaa");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b, count = 1, status = %b, ready = 1", RES_XYXX, STATUS_ON);
    if ((o_result != RES_XYXX) || (o_guess_count != 1) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Repeated letter test wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Repeated letter test correct.");
    end

    // Test 3: green letters should be used first.
    $display("----------------------------------------");
    $display("Test 3: green before yellow, ref word = cool");
    rstn = 1'b0;
    i_ref_word_idx = 10'd153;    // ROM word 153 is "cool"
    i_guess_word = 32'd0;
    i_guess_id = 0;
    #(5*CLK_PERIOD);
    rstn = 1'b1;
    #(6*CLK_PERIOD);

    // ref cool, guess loll -> XGXG
    i_guess_word = "loll";
    i_guess_id = 1;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 50)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);

    $display("Green before yellow test: guess = loll");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b, count = 1, status = %b, ready = 1", RES_XGXG, STATUS_ON);
    if ((o_result != RES_XGXG) || (o_guess_count != 1) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Green before yellow test wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Green before yellow test correct.");
    end

    // Test 4: lose after 6 wrong guesses.
    $display("----------------------------------------");
    $display("Test 4: lose after 6 wrong guesses, ref word = skew");
    rstn = 1'b0;
    i_ref_word_idx = 10'd103;    // ROM word 103 is "skew"
    i_guess_word = 32'd0;
    i_guess_id = 0;
    #(5*CLK_PERIOD);
    rstn = 1'b1;
    #(6*CLK_PERIOD);

    // Round 1 of lose test.
    i_guess_word = "aaaa";
    i_guess_id = 1;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 50)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);
    $display("Lose test round 1: guess = aaaa");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b, count = 1, status = %b, ready = 1", RES_XXXX, STATUS_ON);
    if ((o_result != RES_XXXX) || (o_guess_count != 1) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Lose test round 1 wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Lose test round 1 correct.");
    end

    // Round 2 of lose test.
    i_guess_word = "aaaa";
    i_guess_id = 2;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 50)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);
    $display("Lose test round 2: guess = aaaa");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b, count = 2, status = %b, ready = 1", RES_XXXX, STATUS_ON);
    if ((o_result != RES_XXXX) || (o_guess_count != 2) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Lose test round 2 wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Lose test round 2 correct.");
    end

    // Round 3 of lose test.
    i_guess_word = "aaaa";
    i_guess_id = 3;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 50)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);
    $display("Lose test round 3: guess = aaaa");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b, count = 3, status = %b, ready = 1", RES_XXXX, STATUS_ON);
    if ((o_result != RES_XXXX) || (o_guess_count != 3) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Lose test round 3 wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Lose test round 3 correct.");
    end

    // Round 4 of lose test.
    i_guess_word = "aaaa";
    i_guess_id = 4;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 50)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);
    $display("Lose test round 4: guess = aaaa");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b, count = 4, status = %b, ready = 1", RES_XXXX, STATUS_ON);
    if ((o_result != RES_XXXX) || (o_guess_count != 4) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Lose test round 4 wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Lose test round 4 correct.");
    end

    // Round 5 of lose test.
    i_guess_word = "aaaa";
    i_guess_id = 5;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 50)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);
    $display("Lose test round 5: guess = aaaa");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b, count = 5, status = %b, ready = 1", RES_XXXX, STATUS_ON);
    if ((o_result != RES_XXXX) || (o_guess_count != 5) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Lose test round 5 wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Lose test round 5 correct.");
    end

    // Round 6 of lose test. This should lose the game.
    i_guess_word = "aaaa";
    i_guess_id = 6;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 50)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);
    $display("Lose test round 6: guess = aaaa");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b, count = 6, status = %b, ready = 0", RES_XXXX, STATUS_LOSE);
    if ((o_result != RES_XXXX) || (o_guess_count != 6) || (o_game_status != STATUS_LOSE) || (o_ready != 1'b0)) begin
        $display("Lose test round 6 wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Lose test round 6 correct.");
    end

    // Start a new game after LOSE.
    $display("----------------------------------------");
    $display("Test 5: start new game after LOSE");
    i_ref_word_idx = 10'd45;     // "furl"
    i_guess_word = 32'd0;
    i_guess_id = 0;
    #(10*CLK_PERIOD);

    $display("New game after LOSE");
    $display("Got:      count = %0d, status = %b, ready = %b", o_guess_count, o_game_status, o_ready);
    $display("Expected: count = 0, status = %b, ready = 1", STATUS_ON);
    if ((o_guess_count != 0) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("New game after LOSE wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("New game after LOSE correct.");
    end

    // Guess the new game correctly.
    i_guess_word = "furl";
    i_guess_id = 1;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 50)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);

    $display("New game round 1: guess = furl");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b, count = 1, status = %b, ready = 0", RES_GGGG, STATUS_WIN);
    if ((o_result != RES_GGGG) || (o_guess_count != 1) || (o_game_status != STATUS_WIN) || (o_ready != 1'b0)) begin
        $display("New game round 1 wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("New game round 1 correct.");
    end

/******* Your code ends here ********/
    
    if (sim_failed) begin
        $display("TEST FAILED!");
    end else begin
        $display("TEST PASSED!");
    end 
    $stop;
end

endmodule