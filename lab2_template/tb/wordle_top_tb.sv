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

// Constants used only by the testbench.
localparam logic [1:0] TB_GREY    = 2'b00;
localparam logic [1:0] TB_GREEN   = 2'b01;
localparam logic [1:0] TB_YELLOW  = 2'b10;

localparam logic [1:0] TB_ONGOING = 2'b00;
localparam logic [1:0] TB_LOSE    = 2'b10;
localparam logic [1:0] TB_WIN     = 2'b11;

localparam logic [RSLT_WIDTH-1:0] TB_ALL_GREY  = {TB_GREY,  TB_GREY,  TB_GREY,  TB_GREY};
localparam logic [RSLT_WIDTH-1:0] TB_ALL_GREEN = {TB_GREEN, TB_GREEN, TB_GREEN, TB_GREEN};

// Known ROM word indices from wordle_rom.sv.
localparam logic [ADDR_WIDTH-1:0] IDX_SKIM = 10'd0;    // "skim"
localparam logic [ADDR_WIDTH-1:0] IDX_MIME = 10'd21;   // "mime"
localparam logic [ADDR_WIDTH-1:0] IDX_FURL = 10'd45;   // "furl"
localparam logic [ADDR_WIDTH-1:0] IDX_SNOW = 10'd941;  // "snow"

task automatic wait_for_ready(input string test_name);
    int cycles;
    begin
        cycles = 0;
        while ((o_ready !== 1'b1) && (cycles < 50)) begin
            @(posedge clk);
            #1;
            cycles = cycles + 1;
        end

        if (o_ready !== 1'b1) begin
            $display("[%0t] ERROR: timeout waiting for ready in %s", $time, test_name);
            sim_failed = 1'b1;
        end
    end
endtask

task automatic wait_for_state(
    input [GUESS_CNTW-1:0] exp_count,
    input [1:0] exp_status,
    input logic exp_ready,
    input string test_name
);
    int cycles;
    begin
        cycles = 0;
        while (!((o_guess_count === exp_count) &&
                 (o_game_status === exp_status) &&
                 (o_ready === exp_ready)) &&
               (cycles < 50)) begin
            @(posedge clk);
            #1;
            cycles = cycles + 1;
        end

        if (!((o_guess_count === exp_count) &&
              (o_game_status === exp_status) &&
              (o_ready === exp_ready))) begin
            $display("[%0t] ERROR: timeout waiting for expected state in %s", $time, test_name);
            $display("    got count=%0d status=%b ready=%b", o_guess_count, o_game_status, o_ready);
            $display("    exp count=%0d status=%b ready=%b", exp_count, exp_status, exp_ready);
            sim_failed = 1'b1;
        end
    end
endtask

task automatic check_outputs(
    input [RSLT_WIDTH-1:0] exp_result,
    input [GUESS_CNTW-1:0] exp_count,
    input [1:0] exp_status,
    input logic exp_ready,
    input string test_name
);
    begin
        if (o_result !== exp_result) begin
            $display("[%0t] ERROR: wrong result in %s", $time, test_name);
            $display("    got result=%b exp result=%b", o_result, exp_result);
            sim_failed = 1'b1;
        end

        if (o_guess_count !== exp_count) begin
            $display("[%0t] ERROR: wrong guess count in %s", $time, test_name);
            $display("    got count=%0d exp count=%0d", o_guess_count, exp_count);
            sim_failed = 1'b1;
        end

        if (o_game_status !== exp_status) begin
            $display("[%0t] ERROR: wrong game status in %s", $time, test_name);
            $display("    got status=%b exp status=%b", o_game_status, exp_status);
            sim_failed = 1'b1;
        end

        if (o_ready !== exp_ready) begin
            $display("[%0t] ERROR: wrong ready in %s", $time, test_name);
            $display("    got ready=%b exp ready=%b", o_ready, exp_ready);
            sim_failed = 1'b1;
        end
    end
endtask

task automatic start_game(
    input [ADDR_WIDTH-1:0] ref_idx,
    input string test_name
);
    begin
        @(negedge clk);
        i_ref_word_idx = ref_idx;
        i_guess_word   = '0;
        i_guess_id     = '0;

        // Give the synchronous ROM and FSM a few cycles to see guess_id=0
        // and register the new reference word.
        repeat (4) begin
            @(posedge clk);
            #1;
        end

        wait_for_state('0, TB_ONGOING, 1'b1, test_name);
    end
endtask

task automatic submit_guess_and_check(
    input [WORD_WIDTH-1:0] guess_word,
    input [GUESS_CNTW-1:0] guess_id,
    input [RSLT_WIDTH-1:0] exp_result,
    input [GUESS_CNTW-1:0] exp_count,
    input [1:0] exp_status,
    input string test_name
);
    logic exp_ready;
    begin
        exp_ready = (exp_status == TB_ONGOING);

        wait_for_ready(test_name);

        @(negedge clk);
        i_guess_word = guess_word;
        i_guess_id   = guess_id;

        // The DUT should register i_guess_word when it accepts the new guess.
        // After that, the input is allowed to change.
        @(posedge clk);
        #1;
        i_guess_word = "zzzz";

        wait_for_state(exp_count, exp_status, exp_ready, test_name);
        check_outputs(exp_result, exp_count, exp_status, exp_ready, test_name);
    end
endtask

task automatic submit_duplicate_id_and_check(
    input [WORD_WIDTH-1:0] guess_word,
    input [GUESS_CNTW-1:0] duplicate_id,
    input [RSLT_WIDTH-1:0] old_result,
    input [GUESS_CNTW-1:0] old_count,
    input [1:0] old_status,
    input string test_name
);
    begin
        wait_for_ready(test_name);

        @(negedge clk);
        i_guess_word = guess_word;
        i_guess_id   = duplicate_id;

        repeat (5) begin
            @(posedge clk);
            #1;
        end

        check_outputs(old_result, old_count, old_status, 1'b1, test_name);
    end
endtask

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
    
    // Release active-low reset.
    rstn = 1'b1;

    // ------------------------------------------------------------
    // Game 1: normal yellow/green/grey result, duplicate ID ignored,
    // then win.
    // Reference index 941 is "snow".
    // "once" vs "snow" = YELLOW, GREEN, GREY, GREY = 8'b10010000.
    // ------------------------------------------------------------
    start_game(IDX_SNOW, "start game: snow");

    submit_guess_and_check(
        "once",
        'd1,
        {TB_YELLOW, TB_GREEN, TB_GREY, TB_GREY},
        'd1,
        TB_ONGOING,
        "snow / once"
    );

    // Same guess_id must be ignored even if the word changes to the answer.
    submit_duplicate_id_and_check(
        "snow",
        'd1,
        {TB_YELLOW, TB_GREEN, TB_GREY, TB_GREY},
        'd1,
        TB_ONGOING,
        "duplicate guess_id ignored"
    );

    submit_guess_and_check(
        "snow",
        'd2,
        TB_ALL_GREEN,
        'd2,
        TB_WIN,
        "snow / snow win"
    );

    // ------------------------------------------------------------
    // Game 2: repeated-letter rule and losing after 6 guesses.
    // Reference index 0 is "skim".
    // "aass" has two s letters, but "skim" has one s in a different
    // location. Only the LAST s should be yellow.
    // ------------------------------------------------------------
    start_game(IDX_SKIM, "start game: skim");

    submit_guess_and_check(
        "aass",
        'd1,
        {TB_GREY, TB_GREY, TB_GREY, TB_YELLOW},
        'd1,
        TB_ONGOING,
        "skim / aass repeated-letter rule"
    );

    submit_guess_and_check("bbbb", 'd2, TB_ALL_GREY, 'd2, TB_ONGOING, "skim / bbbb");
    submit_guess_and_check("cccc", 'd3, TB_ALL_GREY, 'd3, TB_ONGOING, "skim / cccc");
    submit_guess_and_check("dddd", 'd4, TB_ALL_GREY, 'd4, TB_ONGOING, "skim / dddd");
    submit_guess_and_check("eeee", 'd5, TB_ALL_GREY, 'd5, TB_ONGOING, "skim / eeee");

    submit_guess_and_check(
        "ffff",
        'd6,
        TB_ALL_GREY,
        'd6,
        TB_LOSE,
        "skim / lose on sixth guess"
    );

    // ------------------------------------------------------------
    // Game 3: green-before-yellow and last occurrence yellow.
    // Reference index 21 is "mime".
    // "immi" vs "mime":
    //   i at pos0: grey because the only i is used by the later i
    //   m at pos1: yellow
    //   m at pos2: green
    //   i at pos3: yellow
    // Expected = GREY, YELLOW, GREEN, YELLOW.
    // ------------------------------------------------------------
    start_game(IDX_MIME, "start game: mime");

    submit_guess_and_check(
        "immi",
        'd1,
        {TB_GREY, TB_YELLOW, TB_GREEN, TB_YELLOW},
        'd1,
        TB_ONGOING,
        "mime / immi green-before-yellow"
    );

    submit_guess_and_check(
        "mime",
        'd2,
        TB_ALL_GREEN,
        'd2,
        TB_WIN,
        "mime / mime win"
    );
    
    /******* Your code ends here ********/
    
    if (sim_failed) begin
        $display("TEST FAILED!");
    end else begin
        $display("TEST PASSED!");
    end 
    $stop;
end

endmodule
