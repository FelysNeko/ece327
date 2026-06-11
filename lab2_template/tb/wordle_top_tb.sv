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
// X means grey.
localparam [1:0] X = 2'b00;
localparam [1:0] G = 2'b01;
localparam [1:0] Y = 2'b10;

// Game status values used by the lab.
localparam [1:0] STATUS_ON   = 2'b00;
localparam [1:0] STATUS_LOSE = 2'b10;
localparam [1:0] STATUS_WIN  = 2'b11;

// Expected result values. The left letter is the left side of this vector.
localparam [RSLT_WIDTH-1:0] RES_XXXX = {X, X, X, X};
localparam [RSLT_WIDTH-1:0] RES_GXGX = {G, X, G, X};
localparam [RSLT_WIDTH-1:0] RES_GGGX = {G, G, G, X};
localparam [RSLT_WIDTH-1:0] RES_GGGG = {G, G, G, G};
localparam [RSLT_WIDTH-1:0] RES_XYXX = {X, Y, X, X};
localparam [RSLT_WIDTH-1:0] RES_XGGG = {X, G, G, G};
localparam [RSLT_WIDTH-1:0] RES_YYYY = {Y, Y, Y, Y};
localparam [RSLT_WIDTH-1:0] RES_GXXY = {G, X, X, Y};
localparam [RSLT_WIDTH-1:0] RES_XGGX = {X, G, G, X};
localparam [RSLT_WIDTH-1:0] RES_XGXG = {X, G, X, G};
localparam [RSLT_WIDTH-1:0] RES_YGGX = {Y, G, G, X};
localparam [RSLT_WIDTH-1:0] RES_YGGY = {Y, G, G, Y};
localparam [RSLT_WIDTH-1:0] RES_XXXG = {X, X, X, G};
localparam [RSLT_WIDTH-1:0] RES_GYXY = {G, Y, X, Y};

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
    // Test 0: reset and first ready.
    $display("----------------------------------------");
    $display("Test 0: reset, then start game. ref = furl");
    i_ref_word_idx = 10'd45;     // ROM word 45 is "furl"
    i_guess_word = 32'd0;
    i_guess_id = 0;
    #(5*CLK_PERIOD);
    rstn = 1'b1;
    #(8*CLK_PERIOD);

    $display("After reset");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b, count = 0, status = %b, ready = 1", RES_XXXX, STATUS_ON);
    if ((o_result != RES_XXXX) || (o_guess_count != 0) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Reset test wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Reset test correct.");
    end

    // Test 1: the FSM should register the guess word when the turn starts.
    // We give farm, then change the input to furl before the score is done.
    // The score should still be for farm.
    $display("----------------------------------------");
    $display("Test 1: guess word should be registered. ref = furl");
    i_guess_word = "farm";
    i_guess_id = 1;
    #(CLK_PERIOD);
    i_guess_word = "furl";
    #(CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 80)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);

    $display("Round 1: first input was farm, later input changed to furl");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b (GXGX), count = 1, status = %b, ready = 1", RES_GXGX, STATUS_ON);
    if ((o_result != RES_GXGX) || (o_guess_count != 1) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Guess register test wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Guess register test correct.");
    end

    // Test 2: same guess ID should be ignored.
    i_guess_word = "furl";
    i_guess_id = 1;
    #(8*CLK_PERIOD);

    $display("Same ID test: guess = furl, guess_id is still 1");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b (GXGX), count = 1, status = %b, ready = 1", RES_GXGX, STATUS_ON);
    if ((o_result != RES_GXGX) || (o_guess_count != 1) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Same ID test wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Same ID test correct.");
    end

    // Test 3: reference word should stay locked during a game.
    // Change the ROM index to skew, then guess skew.
    // If the FSM incorrectly keeps reading the new reference, it may output GGGG.
    // Correct behavior: the active reference is still furl, so skew is XXXX.
    i_ref_word_idx = 10'd103;    // ROM word 103 is "skew"
    #(6*CLK_PERIOD);             // Give a bad design time to incorrectly load the new ref.
    i_guess_word = "skew";
    i_guess_id = 4;              // ID jump is allowed because it is strictly higher.
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 80)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);

    $display("Reference lock test: ref index changed to skew, guess = skew");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b (XXXX), count = 2, status = %b, ready = 1", RES_XXXX, STATUS_ON);
    if ((o_result != RES_XXXX) || (o_guess_count != 2) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Reference lock test wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Reference lock test correct.");
    end

    // Test 4: lower guess ID should be ignored.
    i_guess_word = "furl";
    i_guess_id = 3;
    #(8*CLK_PERIOD);

    $display("Lower ID test: guess = furl, guess_id changed from 4 down to 3");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b (XXXX), count = 2, status = %b, ready = 1", RES_XXXX, STATUS_ON);
    if ((o_result != RES_XXXX) || (o_guess_count != 2) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Lower ID test wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Lower ID test correct.");
    end

    // Test 5: win. Also checks that a jump in guess_id did not make guess_count equal to guess_id.
    i_guess_word = "furl";
    i_guess_id = 5;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 80)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);

    $display("Win test: guess = furl");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b (GGGG), count = 3, status = %b, ready = 0", RES_GGGG, STATUS_WIN);
    if ((o_result != RES_GGGG) || (o_guess_count != 3) || (o_game_status != STATUS_WIN) || (o_ready != 1'b0)) begin
        $display("Win test wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Win test correct.");
    end

    // Test 6: after WIN, guesses should be ignored until guess_id becomes 0.
    i_guess_word = "aaaa";
    i_guess_id = 6;
    #(8*CLK_PERIOD);

    $display("After WIN ignore test: guess = aaaa, guess_id = 6");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b (GGGG), count = 3, status = %b, ready = 0", RES_GGGG, STATUS_WIN);
    if ((o_result != RES_GGGG) || (o_guess_count != 3) || (o_game_status != STATUS_WIN) || (o_ready != 1'b0)) begin
        $display("After WIN ignore test wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("After WIN ignore test correct.");
    end

    // Test 7: start a new game after WIN.
    $display("----------------------------------------");
    $display("Test 7: new game after WIN. ref = skew");
    i_ref_word_idx = 10'd103;    // "skew"
    i_guess_word = 32'd0;
    i_guess_id = 0;
    #(10*CLK_PERIOD);

    $display("New game after WIN");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b (XXXX), count = 0, status = %b, ready = 1", RES_XXXX, STATUS_ON);
    if ((o_result != RES_XXXX) || (o_guess_count != 0) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("New game after WIN wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("New game after WIN correct.");
    end

    // Test 8: all yellow. ref = skew, guess = weks -> YYYY.
    i_guess_word = "weks";
    i_guess_id = 1;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 80)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);

    $display("All yellow test: ref = skew, guess = weks");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b (YYYY), count = 1, status = %b, ready = 1", RES_YYYY, STATUS_ON);
    if ((o_result != RES_YYYY) || (o_guess_count != 1) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("All yellow test wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("All yellow test correct.");
    end

    // Test 9: mixed green/yellow/grey and result order.
    i_guess_word = "sink";      // skew vs sink -> GXXY
    i_guess_id = 2;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 80)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);

    $display("Mixed result test: ref = skew, guess = sink");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b (GXXY), count = 2, status = %b, ready = 1", RES_GXXY, STATUS_ON);
    if ((o_result != RES_GXXY) || (o_guess_count != 2) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Mixed result test wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Mixed result test correct.");
    end

    // Win this game.
    i_guess_word = "skew";
    i_guess_id = 3;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 80)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);

    $display("Win skew test: guess = skew");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b (GGGG), count = 3, status = %b, ready = 0", RES_GGGG, STATUS_WIN);
    if ((o_result != RES_GGGG) || (o_guess_count != 3) || (o_game_status != STATUS_WIN) || (o_ready != 1'b0)) begin
        $display("Win skew test wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Win skew test correct.");
    end

    // Test 10: last occurrence rule for repeated guess letters.
    $display("----------------------------------------");
    $display("Test 10: last occurrence rule. ref = furl");
    i_ref_word_idx = 10'd45;     // "furl"
    i_guess_word = 32'd0;
    i_guess_id = 0;
    #(10*CLK_PERIOD);

    i_guess_word = "llaa";      // only the second l should be yellow
    i_guess_id = 1;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 80)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);

    $display("Last occurrence test: ref = furl, guess = llaa");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b (XYXX), count = 1, status = %b, ready = 1", RES_XYXX, STATUS_ON);
    if ((o_result != RES_XYXX) || (o_guess_count != 1) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Last occurrence test wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Last occurrence test correct.");
    end

    // Test 11: green should consume the reference letter before yellow matching.
    i_guess_word = "lurl";      // extra l at first position should be grey; last l is green
    i_guess_id = 2;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 80)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);

    $display("Green consumes first test: ref = furl, guess = lurl");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b (XGGG), count = 2, status = %b, ready = 1", RES_XGGG, STATUS_ON);
    if ((o_result != RES_XGGG) || (o_guess_count != 2) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Green consumes first test wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Green consumes first test correct.");
    end

    // Finish this game with a win.
    i_guess_word = "furl";
    i_guess_id = 3;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 80)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);

    $display("Win after duplicate tests: guess = furl");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b (GGGG), count = 3, status = %b, ready = 0", RES_GGGG, STATUS_WIN);
    if ((o_result != RES_GGGG) || (o_guess_count != 3) || (o_game_status != STATUS_WIN) || (o_ready != 1'b0)) begin
        $display("Win after duplicate tests wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Win after duplicate tests correct.");
    end

    // Test 12: repeated reference letters. ref = cool.
    $display("----------------------------------------");
    $display("Test 12: repeated reference letters. ref = cool");
    i_ref_word_idx = 10'd153;    // "cool"
    i_guess_word = 32'd0;
    i_guess_id = 0;
    #(10*CLK_PERIOD);

    i_guess_word = "oooo";      // two middle o's are green, extra o's are grey
    i_guess_id = 1;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 80)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);

    $display("Repeated ref test 1: ref = cool, guess = oooo");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b (XGGX), count = 1, status = %b, ready = 1", RES_XGGX, STATUS_ON);
    if ((o_result != RES_XGGX) || (o_guess_count != 1) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Repeated ref test 1 wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Repeated ref test 1 correct.");
    end

    i_guess_word = "loll";      // last l is green, other l's should not turn yellow
    i_guess_id = 2;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 80)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);

    $display("Repeated ref test 2: ref = cool, guess = loll");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b (XGXG), count = 2, status = %b, ready = 1", RES_XGXG, STATUS_ON);
    if ((o_result != RES_XGXG) || (o_guess_count != 2) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Repeated ref test 2 wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Repeated ref test 2 correct.");
    end

    i_guess_word = "loop";      // l is yellow, both o's green, p grey
    i_guess_id = 3;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 80)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);

    $display("Repeated ref test 3: ref = cool, guess = loop");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b (YGGX), count = 3, status = %b, ready = 1", RES_YGGX, STATUS_ON);
    if ((o_result != RES_YGGX) || (o_guess_count != 3) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Repeated ref test 3 wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Repeated ref test 3 correct.");
    end

    i_guess_word = "cool";
    i_guess_id = 4;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 80)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);

    $display("Win cool test: guess = cool");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b (GGGG), count = 4, status = %b, ready = 0", RES_GGGG, STATUS_WIN);
    if ((o_result != RES_GGGG) || (o_guess_count != 4) || (o_game_status != STATUS_WIN) || (o_ready != 1'b0)) begin
        $display("Win cool test wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Win cool test correct.");
    end

    // Test 13: yellow at both ends with repeated letters. ref = loop.
    $display("----------------------------------------");
    $display("Test 13: yellow at both ends. ref = loop");
    i_ref_word_idx = 10'd19;     // "loop"
    i_guess_word = 32'd0;
    i_guess_id = 0;
    #(10*CLK_PERIOD);

    i_guess_word = "pool";      // p and l yellow, two o's green
    i_guess_id = 1;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 80)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);

    $display("Both-end yellow test: ref = loop, guess = pool");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b (YGGY), count = 1, status = %b, ready = 1", RES_YGGY, STATUS_ON);
    if ((o_result != RES_YGGY) || (o_guess_count != 1) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Both-end yellow test wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Both-end yellow test correct.");
    end

    i_guess_word = "pppp";      // only the last p is green
    i_guess_id = 2;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 80)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);

    $display("Repeated p test: ref = loop, guess = pppp");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b (XXXG), count = 2, status = %b, ready = 1", RES_XXXG, STATUS_ON);
    if ((o_result != RES_XXXG) || (o_guess_count != 2) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Repeated p test wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Repeated p test correct.");
    end

    i_guess_word = "loop";
    i_guess_id = 3;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 80)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);

    $display("Win loop test: guess = loop");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b (GGGG), count = 3, status = %b, ready = 0", RES_GGGG, STATUS_WIN);
    if ((o_result != RES_GGGG) || (o_guess_count != 3) || (o_game_status != STATUS_WIN) || (o_ready != 1'b0)) begin
        $display("Win loop test wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Win loop test correct.");
    end

    // Test 14: lose after exactly 6 wrong guesses.
    $display("----------------------------------------");
    $display("Test 14: lose after 6 wrong guesses. ref = skew");
    i_ref_word_idx = 10'd103;    // "skew"
    i_guess_word = 32'd0;
    i_guess_id = 0;
    #(10*CLK_PERIOD);

    // Round 1.
    i_guess_word = "aaaa";
    i_guess_id = 1;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 80)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);
    $display("Lose round 1: guess = aaaa");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b (XXXX), count = 1, status = %b, ready = 1", RES_XXXX, STATUS_ON);
    if ((o_result != RES_XXXX) || (o_guess_count != 1) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Lose round 1 wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Lose round 1 correct.");
    end

    // Round 2.
    i_guess_word = "aaaa";
    i_guess_id = 2;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 80)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);
    $display("Lose round 2: guess = aaaa");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b (XXXX), count = 2, status = %b, ready = 1", RES_XXXX, STATUS_ON);
    if ((o_result != RES_XXXX) || (o_guess_count != 2) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Lose round 2 wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Lose round 2 correct.");
    end

    // Round 3.
    i_guess_word = "aaaa";
    i_guess_id = 3;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 80)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);
    $display("Lose round 3: guess = aaaa");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b (XXXX), count = 3, status = %b, ready = 1", RES_XXXX, STATUS_ON);
    if ((o_result != RES_XXXX) || (o_guess_count != 3) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Lose round 3 wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Lose round 3 correct.");
    end

    // Round 4.
    i_guess_word = "aaaa";
    i_guess_id = 4;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 80)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);
    $display("Lose round 4: guess = aaaa");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b (XXXX), count = 4, status = %b, ready = 1", RES_XXXX, STATUS_ON);
    if ((o_result != RES_XXXX) || (o_guess_count != 4) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Lose round 4 wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Lose round 4 correct.");
    end

    // Round 5.
    i_guess_word = "aaaa";
    i_guess_id = 5;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 80)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);
    $display("Lose round 5: guess = aaaa");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b (XXXX), count = 5, status = %b, ready = 1", RES_XXXX, STATUS_ON);
    if ((o_result != RES_XXXX) || (o_guess_count != 5) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Lose round 5 wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Lose round 5 correct.");
    end

    // Round 6 should lose.
    i_guess_word = "aaaa";
    i_guess_id = 6;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 80)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);
    $display("Lose round 6: guess = aaaa");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b (XXXX), count = 6, status = %b, ready = 0", RES_XXXX, STATUS_LOSE);
    if ((o_result != RES_XXXX) || (o_guess_count != 6) || (o_game_status != STATUS_LOSE) || (o_ready != 1'b0)) begin
        $display("Lose round 6 wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Lose round 6 correct.");
    end

    // Test 15: after LOSE, guesses should be ignored until guess_id is 0.
    i_guess_word = "skew";
    i_guess_id = 7;
    #(8*CLK_PERIOD);

    $display("After LOSE ignore test: guess = skew, guess_id = 7");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b (XXXX), count = 6, status = %b, ready = 0", RES_XXXX, STATUS_LOSE);
    if ((o_result != RES_XXXX) || (o_guess_count != 6) || (o_game_status != STATUS_LOSE) || (o_ready != 1'b0)) begin
        $display("After LOSE ignore test wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("After LOSE ignore test correct.");
    end

    // Test 16: start a new game after LOSE. Also test that last_guess_id was cleared.
    $display("----------------------------------------");
    $display("Test 16: new game after LOSE. ref = skim");
    i_ref_word_idx = 10'd0;      // "skim"
    i_guess_word = 32'd0;
    i_guess_id = 0;
    #(10*CLK_PERIOD);

    $display("New game after LOSE");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b (XXXX), count = 0, status = %b, ready = 1", RES_XXXX, STATUS_ON);
    if ((o_result != RES_XXXX) || (o_guess_count != 0) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("New game after LOSE wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("New game after LOSE correct.");
    end

    // Use guess_id = 5. This should be accepted because it is a new game and last id was cleared.
    i_guess_word = "sink";      // skim vs sink -> GYXY
    i_guess_id = 5;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 80)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);

    $display("New game high-ID test: ref = skim, guess = sink, guess_id = 5");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b (GYXY), count = 1, status = %b, ready = 1", RES_GYXY, STATUS_ON);
    if ((o_result != RES_GYXY) || (o_guess_count != 1) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("New game high-ID test wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("New game high-ID test correct.");
    end

    // Test 17: active-low reset during a game.
    $display("----------------------------------------");
    $display("Test 17: active-low reset during game");
    rstn = 1'b0;
    i_ref_word_idx = 10'd45;     // "furl"
    i_guess_word = 32'd0;
    i_guess_id = 0;
    #(5*CLK_PERIOD);
    rstn = 1'b1;
    #(8*CLK_PERIOD);

    $display("After active-low reset");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b (XXXX), count = 0, status = %b, ready = 1", RES_XXXX, STATUS_ON);
    if ((o_result != RES_XXXX) || (o_guess_count != 0) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Active-low reset test wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Active-low reset test correct.");
    end

    // Final sanity check: simple win after reset.
    i_guess_word = "furl";
    i_guess_id = 1;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 80)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);

    $display("Final win after reset: guess = furl");
    $display("Got:      result = %b, count = %0d, status = %b, ready = %b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result = %b (GGGG), count = 1, status = %b, ready = 0", RES_GGGG, STATUS_WIN);
    if ((o_result != RES_GGGG) || (o_guess_count != 1) || (o_game_status != STATUS_WIN) || (o_ready != 1'b0)) begin
        $display("Final win after reset wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Final win after reset correct.");
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