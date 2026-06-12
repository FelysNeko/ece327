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

// Colour values
localparam [1:0] X = 2'b00;
localparam [1:0] G = 2'b01;
localparam [1:0] Y = 2'b10;

// Game status values used by the lab.
localparam [1:0] STATUS_ON   = 2'b00;
localparam [1:0] STATUS_LOSE = 2'b10;
localparam [1:0] STATUS_WIN  = 2'b11;

// Expected results. Left side here is the first letter on screen.
localparam [RSLT_WIDTH-1:0] RES_XXXX = {X, X, X, X};
localparam [RSLT_WIDTH-1:0] RES_GXGX = {G, X, G, X};
localparam [RSLT_WIDTH-1:0] RES_GGGX = {G, G, G, X};
localparam [RSLT_WIDTH-1:0] RES_GGGG = {G, G, G, G};
localparam [RSLT_WIDTH-1:0] RES_YXXX = {Y, X, X, X};
localparam [RSLT_WIDTH-1:0] RES_XYXX = {X, Y, X, X};
localparam [RSLT_WIDTH-1:0] RES_XGXG = {X, G, X, G};

integer wait_count;
integer lose_round;

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

    // =========================================================
    // Test 1: normal game flow, input word is registered, WIN, restart after WIN.
    // Reference word index 45 is "furl".
    // =========================================================
    $display("----------------------------------------");
    $display("Test 1: normal game, registered guess, WIN, restart after WIN");

    rstn = 1'b0;
    i_ref_word_idx = 10'd45;     // "furl"
    i_guess_word = 32'd0;
    i_guess_id = 0;
    #(5*CLK_PERIOD);
    rstn = 1'b1;
    #(6*CLK_PERIOD);

    // Round 1: drive farm, then change input to furl before result is checked.
    // Correct FSM should have registered farm, so result should be GXGX, not GGGG.
    i_guess_word = "farm";
    i_guess_id = 1;
    #(CLK_PERIOD);
    i_guess_word = "furl";
    #(CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 50)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);

    $display("Test 1 Round 1: ref=furl, guess=farm, then input changed to furl");
    $display("Got:      result=%b count=%0d status=%b ready=%b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result=%b count=1 status=%b ready=1", RES_GXGX, STATUS_ON);
    if ((o_result != RES_GXGX) || (o_guess_count != 1) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Test 1 Round 1 wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Test 1 Round 1 correct.");
    end

    // Round 2: fury -> GGGX.
    i_guess_word = "fury";
    i_guess_id = 2;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 50)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);

    $display("Test 1 Round 2: ref=furl, guess=fury");
    $display("Got:      result=%b count=%0d status=%b ready=%b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result=%b count=2 status=%b ready=1", RES_GGGX, STATUS_ON);
    if ((o_result != RES_GGGX) || (o_guess_count != 2) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Test 1 Round 2 wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Test 1 Round 2 correct.");
    end

    // Round 3: furl -> GGGG and WIN.
    i_guess_word = "furl";
    i_guess_id = 3;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 50)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);

    $display("Test 1 Round 3: ref=furl, guess=furl");
    $display("Got:      result=%b count=%0d status=%b ready=%b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result=%b count=3 status=%b ready=0", RES_GGGG, STATUS_WIN);
    if ((o_result != RES_GGGG) || (o_guess_count != 3) || (o_game_status != STATUS_WIN) || (o_ready != 1'b0)) begin
        $display("Test 1 Round 3 wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Test 1 Round 3 correct.");
    end

    // After WIN, normal guesses should be ignored.
    i_guess_word = "aaaa";
    i_guess_id = 4;
    #(8*CLK_PERIOD);

    $display("Test 1 after WIN: guess=aaaa should be ignored");
    $display("Got:      result=%b count=%0d status=%b ready=%b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result=%b count=3 status=%b ready=0", RES_GGGG, STATUS_WIN);
    if ((o_result != RES_GGGG) || (o_guess_count != 3) || (o_game_status != STATUS_WIN) || (o_ready != 1'b0)) begin
        $display("Test 1 after WIN wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Test 1 after WIN correct.");
    end

    // guess_id = 0 should start a new game after WIN.
    i_ref_word_idx = 10'd19;     // "loop"
    i_guess_word = 32'd0;
    i_guess_id = 0;
    #(10*CLK_PERIOD);

    $display("Test 1 restart after WIN with guess_id=0");
    $display("Got:      count=%0d status=%b ready=%b", o_guess_count, o_game_status, o_ready);
    $display("Expected: count=0 status=%b ready=1", STATUS_ON);
    if ((o_guess_count != 0) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Test 1 restart after WIN wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Test 1 restart after WIN correct.");
    end

    // =========================================================
    // Test 2: same guess_id ignored, and reference word is locked during a game.
    // =========================================================
    $display("----------------------------------------");
    $display("Test 2: same guess_id ignored and reference word locked");

    rstn = 1'b0;
    i_ref_word_idx = 10'd45;     // "furl"
    i_guess_word = 32'd0;
    i_guess_id = 0;
    #(5*CLK_PERIOD);
    rstn = 1'b1;
    #(6*CLK_PERIOD);

    // First real guess.
    i_guess_word = "farm";
    i_guess_id = 1;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 50)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);

    $display("Test 2 Round 1: ref=furl, guess=farm");
    $display("Got:      result=%b count=%0d status=%b ready=%b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result=%b count=1 status=%b ready=1", RES_GXGX, STATUS_ON);
    if ((o_result != RES_GXGX) || (o_guess_count != 1) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Test 2 Round 1 wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Test 2 Round 1 correct.");
    end

    // Same guess_id should be ignored even if word changes to the answer.
    i_guess_word = "furl";
    i_guess_id = 1;
    #(8*CLK_PERIOD);

    $display("Test 2 same ID: guess=furl, guess_id still 1");
    $display("Got:      result=%b count=%0d status=%b ready=%b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result=%b count=1 status=%b ready=1", RES_GXGX, STATUS_ON);
    if ((o_result != RES_GXGX) || (o_guess_count != 1) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Test 2 same ID wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Test 2 same ID correct.");
    end

    // Change ROM index to loop during the game, then guess loop.
    // Correct FSM still uses original ref=furl, so loop should be YXXX, not GGGG.
    i_ref_word_idx = 10'd19;     // "loop"
    #(4*CLK_PERIOD);
    i_guess_word = "loop";
    i_guess_id = 2;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 50)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);

    $display("Test 2 ref lock: original ref=furl, ROM changed to loop, guess=loop");
    $display("Got:      result=%b count=%0d status=%b ready=%b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result=%b count=2 status=%b ready=1", RES_YXXX, STATUS_ON);
    if ((o_result != RES_YXXX) || (o_guess_count != 2) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Test 2 ref lock wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Test 2 ref lock correct.");
    end

    // =========================================================
    // Test 3: repeated guess letter. Only the LAST repeated guess letter should be yellow.
    // Reference furl, guess llaa -> XYXX.
    // =========================================================
    $display("----------------------------------------");
    $display("Test 3: last repeated guess letter becomes yellow");

    rstn = 1'b0;
    i_ref_word_idx = 10'd45;     // "furl"
    i_guess_word = 32'd0;
    i_guess_id = 0;
    #(5*CLK_PERIOD);
    rstn = 1'b1;
    #(6*CLK_PERIOD);

    i_guess_word = "llaa";
    i_guess_id = 1;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 50)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);

    $display("Test 3: ref=furl, guess=llaa");
    $display("Got:      result=%b count=%0d status=%b ready=%b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result=%b count=1 status=%b ready=1", RES_XYXX, STATUS_ON);
    if ((o_result != RES_XYXX) || (o_guess_count != 1) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Test 3 wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Test 3 correct.");
    end

    // =========================================================
    // Test 4: green letters must be consumed before yellow checks.
    // Reference cool, guess loll -> XGXG.
    // =========================================================
    $display("----------------------------------------");
    $display("Test 4: green matches consume letters before yellow matches");

    rstn = 1'b0;
    i_ref_word_idx = 10'd153;    // "cool"
    i_guess_word = 32'd0;
    i_guess_id = 0;
    #(5*CLK_PERIOD);
    rstn = 1'b1;
    #(6*CLK_PERIOD);

    i_guess_word = "loll";
    i_guess_id = 1;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 50)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);

    $display("Test 4: ref=cool, guess=loll");
    $display("Got:      result=%b count=%0d status=%b ready=%b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result=%b count=1 status=%b ready=1", RES_XGXG, STATUS_ON);
    if ((o_result != RES_XGXG) || (o_guess_count != 1) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Test 4 wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Test 4 correct.");
    end

    // =========================================================
    // Test 5: LOSE on exactly the 6th wrong guess, then restart after LOSE.
    // Reference skew, guess aaaa is all grey.
    // =========================================================
    $display("----------------------------------------");
    $display("Test 5: lose on 6th wrong guess and restart after LOSE");

    rstn = 1'b0;
    i_ref_word_idx = 10'd103;    // "skew"
    i_guess_word = 32'd0;
    i_guess_id = 0;
    #(5*CLK_PERIOD);
    rstn = 1'b1;
    #(6*CLK_PERIOD);

    for (lose_round = 1; lose_round <= 6; lose_round = lose_round + 1) begin
        i_guess_word = "aaaa";
        i_guess_id = lose_round;
        #(2*CLK_PERIOD);
        wait_count = 0;
        while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 50)) begin
            #(CLK_PERIOD);
            wait_count = wait_count + 1;
        end
        #(2*CLK_PERIOD);

        $display("Test 5 Round %0d: ref=skew, guess=aaaa", lose_round);
        $display("Got:      result=%b count=%0d status=%b ready=%b", o_result, o_guess_count, o_game_status, o_ready);
        if (lose_round < 6) begin
            $display("Expected: result=%b count=%0d status=%b ready=1", RES_XXXX, lose_round, STATUS_ON);
            if ((o_result != RES_XXXX) || (o_guess_count != lose_round) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
                $display("Test 5 Round %0d wrong.", lose_round);
                sim_failed = 1'b1;
            end else begin
                $display("Test 5 Round %0d correct.", lose_round);
            end
        end else begin
            $display("Expected: result=%b count=6 status=%b ready=0", RES_XXXX, STATUS_LOSE);
            if ((o_result != RES_XXXX) || (o_guess_count != 6) || (o_game_status != STATUS_LOSE) || (o_ready != 1'b0)) begin
                $display("Test 5 Round 6 wrong.");
                sim_failed = 1'b1;
            end else begin
                $display("Test 5 Round 6 correct.");
            end
        end
    end

    // guess_id = 0 should start a new game after LOSE.
    i_ref_word_idx = 10'd45;     // "furl"
    i_guess_word = 32'd0;
    i_guess_id = 0;
    #(10*CLK_PERIOD);

    $display("Test 5 restart after LOSE with guess_id=0");
    $display("Got:      count=%0d status=%b ready=%b", o_guess_count, o_game_status, o_ready);
    $display("Expected: count=0 status=%b ready=1", STATUS_ON);
    if ((o_guess_count != 0) || (o_game_status != STATUS_ON) || (o_ready != 1'b1)) begin
        $display("Test 5 restart after LOSE wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Test 5 restart after LOSE correct.");
    end

    // Check that the restarted game really uses the new reference.
    i_guess_word = "furl";
    i_guess_id = 1;
    #(2*CLK_PERIOD);
    wait_count = 0;
    while ((o_ready == 1'b0) && (o_game_status == STATUS_ON) && (wait_count < 50)) begin
        #(CLK_PERIOD);
        wait_count = wait_count + 1;
    end
    #(2*CLK_PERIOD);

    $display("Test 5 restarted game: ref=furl, guess=furl");
    $display("Got:      result=%b count=%0d status=%b ready=%b", o_result, o_guess_count, o_game_status, o_ready);
    $display("Expected: result=%b count=1 status=%b ready=0", RES_GGGG, STATUS_WIN);
    if ((o_result != RES_GGGG) || (o_guess_count != 1) || (o_game_status != STATUS_WIN) || (o_ready != 1'b0)) begin
        $display("Test 5 restarted game wrong.");
        sim_failed = 1'b1;
    end else begin
        $display("Test 5 restarted game correct.");
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