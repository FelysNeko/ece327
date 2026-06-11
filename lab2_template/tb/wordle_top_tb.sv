/***************************************************/
/* ECE 327: Digital Hardware Systems - Spring 2026 */
/* Lab 2                                           */
/* Wordle Top-Level Testbench                      */
/***************************************************/

`timescale 1ns / 1ps

module wordle_top_tb;

    localparam NUM_LETTERS = 4;
    localparam WORD_WIDTH  = NUM_LETTERS * 8;
    localparam RSLT_WIDTH  = NUM_LETTERS * 2;
    localparam MAX_GUESSES = 6;
    localparam GUESS_CNTW  = $clog2(MAX_GUESSES) + 1;
    localparam DICT_SIZE   = 1024;
    localparam ADDR_WIDTH  = $clog2(DICT_SIZE);

    localparam [1:0] ONGOING = 2'b00;
    localparam [1:0] LOSE    = 2'b10;
    localparam [1:0] WIN     = 2'b11;

    logic clk;
    logic rstn;
    logic [ADDR_WIDTH-1:0] i_ref_word_idx;
    logic [WORD_WIDTH-1:0] i_guess_word;
    logic [GUESS_CNTW-1:0] i_guess_id;
    logic o_ready;
    logic [RSLT_WIDTH-1:0] o_result;
    logic [GUESS_CNTW-1:0] o_guess_count;
    logic [1:0] o_game_status;

    logic sim_failed;

    wordle_top #(
        .NUM_LETTERS(NUM_LETTERS),
        .MAX_GUESSES(MAX_GUESSES),
        .DICT_SIZE(DICT_SIZE)
    ) dut (
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

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    initial begin
        #20000;
        $display("ERROR: simulation timeout");
        $display("TEST FAILED!");
        $finish;
    end

    task automatic fail(input string msg);
        begin
            $display("ERROR: %s", msg);
            sim_failed = 1'b1;
            $display("TEST FAILED!");
            $finish;
        end
    endtask

    task automatic check_outputs(
        input [RSLT_WIDTH-1:0] exp_result,
        input [GUESS_CNTW-1:0] exp_count,
        input [1:0] exp_status,
        input exp_ready,
        input string label
    );
        begin
            if (o_result !== exp_result) begin
                $display("%s: expected result %b, got %b", label, exp_result, o_result);
                fail("wrong o_result");
            end
            if (o_guess_count !== exp_count) begin
                $display("%s: expected count %0d, got %0d", label, exp_count, o_guess_count);
                fail("wrong o_guess_count");
            end
            if (o_game_status !== exp_status) begin
                $display("%s: expected status %b, got %b", label, exp_status, o_game_status);
                fail("wrong o_game_status");
            end
            if (o_ready !== exp_ready) begin
                $display("%s: expected ready %b, got %b", label, exp_ready, o_ready);
                fail("wrong o_ready");
            end
        end
    endtask



    task automatic check_state_only(
        input [GUESS_CNTW-1:0] exp_count,
        input [1:0] exp_status,
        input exp_ready,
        input string label
    );
        begin
            if (o_guess_count !== exp_count) begin
                $display("%s: expected count %0d, got %0d", label, exp_count, o_guess_count);
                fail("wrong o_guess_count");
            end
            if (o_game_status !== exp_status) begin
                $display("%s: expected status %b, got %b", label, exp_status, o_game_status);
                fail("wrong o_game_status");
            end
            if (o_ready !== exp_ready) begin
                $display("%s: expected ready %b, got %b", label, exp_ready, o_ready);
                fail("wrong o_ready");
            end
        end
    endtask

    task automatic wait_ready(input string label);
        integer cycles;
        begin
            cycles = 0;
            while ((o_ready !== 1'b1) && (cycles < 20)) begin
                @(posedge clk);
                #1;
                cycles = cycles + 1;
            end
            if (o_ready !== 1'b1) begin
                $display("%s: DUT did not become ready", label);
                fail("ready timeout");
            end
        end
    endtask

    task automatic start_game(input [ADDR_WIDTH-1:0] ref_idx, input string label);
        begin
            // ROM output is registered, so set the address before sending guess_id 0.
            i_ref_word_idx = ref_idx;
            i_guess_word = 32'h00000000;
            repeat (2) begin
                @(posedge clk);
                #1;
            end

            i_guess_id = '0;
            repeat (4) begin
                @(posedge clk);
                #1;
            end

            check_state_only('0, ONGOING, 1'b1, label);
        end
    endtask

    task automatic do_guess(
        input [WORD_WIDTH-1:0] guess_word,
        input [GUESS_CNTW-1:0] guess_id,
        input [RSLT_WIDTH-1:0] exp_result,
        input [GUESS_CNTW-1:0] exp_count,
        input [1:0] exp_status,
        input exp_ready,
        input string label
    );
        integer cycles;
        begin
            wait_ready(label);

            i_guess_word = guess_word;
            i_guess_id   = guess_id;

            // Let the DUT latch this guess. Then change the word to catch designs
            // that incorrectly keep using the live input instead of the registered guess.
            @(posedge clk);
            #1;
            i_guess_word = "zzzz";

            cycles = 0;
            while (((o_result !== exp_result) ||
                    (o_guess_count !== exp_count) ||
                    (o_game_status !== exp_status) ||
                    (o_ready !== exp_ready)) && (cycles < 20)) begin
                @(posedge clk);
                #1;
                cycles = cycles + 1;
            end

            if ((o_result !== exp_result) ||
                (o_guess_count !== exp_count) ||
                (o_game_status !== exp_status) ||
                (o_ready !== exp_ready)) begin
                $display("%s: outputs did not reach expected values in time", label);
                fail("guess processing timeout");
            end

            check_outputs(exp_result, exp_count, exp_status, exp_ready, label);
        end
    endtask

    task automatic check_same_after_duplicate_id(
        input [WORD_WIDTH-1:0] bad_word,
        input [GUESS_CNTW-1:0] same_id,
        input [RSLT_WIDTH-1:0] old_result,
        input [GUESS_CNTW-1:0] old_count,
        input [1:0] old_status,
        input string label
    );
        begin
            i_guess_word = bad_word;
            i_guess_id   = same_id;
            repeat (5) begin
                @(posedge clk);
                #1;
            end
            check_outputs(old_result, old_count, old_status, 1'b1, label);
        end
    endtask

    initial begin
        sim_failed = 1'b0;
        rstn = 1'b0;
        i_ref_word_idx = '0;
        i_guess_word = '0;
        i_guess_id = '0;

        repeat (4) begin
            @(posedge clk);
            #1;
        end
        rstn = 1'b1;
        repeat (2) begin
            @(posedge clk);
            #1;
        end

        // Game 1: ROM index 941 is "snow". Manual example: "once" => YGXX = 8'b10010000.
        start_game(10'd941, "start snow");
        do_guess("once", 4'd1, 8'b10010000, 4'd1, ONGOING, 1'b1, "snow / once");

        // Same guess ID must be ignored even if the word changes to the winning word.
        check_same_after_duplicate_id("snow", 4'd1, 8'b10010000, 4'd1, ONGOING, "duplicate guess_id ignored");

        // Finish this game with a loss after exactly 6 accepted guesses.
        do_guess("aaaa", 4'd2, 8'h00, 4'd2, ONGOING, 1'b1, "snow / aaaa");
        do_guess("bbbb", 4'd3, 8'h00, 4'd3, ONGOING, 1'b1, "snow / bbbb");
        do_guess("cccc", 4'd4, 8'h00, 4'd4, ONGOING, 1'b1, "snow / cccc");
        do_guess("dddd", 4'd5, 8'h00, 4'd5, ONGOING, 1'b1, "snow / dddd");
        do_guess("eeee", 4'd6, 8'h00, 4'd6, LOSE,    1'b0, "snow / eeee lose");

        // Game 2: ROM index 45 is "furl". Repeated-letter special case:
        // "aaff" has one misplaced f available, so only the LAST f is yellow => XXXY = 8'b00000010.
        start_game(10'd45, "start furl");
        do_guess("aaff", 4'd1, 8'b00000010, 4'd1, ONGOING, 1'b1, "furl / aaff repeated yellow");
        do_guess("furl", 4'd2, 8'b01010101, 4'd2, WIN,     1'b0, "furl / furl win");

        // Game 3: ROM index 25 is "loll". This checks that greens are handled before yellows.
        start_game(10'd25, "start loll");
        do_guess("llll", 4'd1, 8'b01000101, 4'd1, ONGOING, 1'b1, "loll / llll green priority");
        do_guess("loll", 4'd2, 8'b01010101, 4'd2, WIN,     1'b0, "loll / loll win");

        if (sim_failed) begin
            $display("TEST FAILED!");
        end else begin
            $display("TEST PASSED!");
        end
        $finish;
    end

endmodule