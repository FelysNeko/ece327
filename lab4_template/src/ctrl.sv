/***************************************************/
/* ECE 327: Digital Hardware Systems - Spring 2026 */
/* Lab 4                                           */
/* MVM Control FSM                                 */
/***************************************************/

module ctrl # (
    parameter VEC_ADDRW = 8,
    parameter MAT_ADDRW = 9,
    parameter VEC_SIZEW = VEC_ADDRW + 1,
    parameter MAT_SIZEW = MAT_ADDRW + 1
)(
    input  clk,
    input  rst,
    input  start,
    input  [VEC_ADDRW-1:0] vec_start_addr,
    input  [VEC_SIZEW-1:0] vec_num_words,
    input  [MAT_ADDRW-1:0] mat_start_addr,
    input  [MAT_SIZEW-1:0] mat_num_rows_per_olane,
    output logic [VEC_ADDRW-1:0] vec_raddr,
    output logic [MAT_ADDRW-1:0] mat_raddr,
    output logic accum_first,
    output logic accum_last,
    output logic ovalid,
    output logic busy
);

/******* Your code starts here *******/

typedef enum logic {IDLE, COMPUTE} state_t;
state_t state, next_state;

logic [VEC_ADDRW-1:0] vec_addr_reg;
logic [MAT_ADDRW-1:0] mat_addr_reg;
logic [VEC_ADDRW-1:0] vec_base_reg;
logic [VEC_SIZEW-1:0] vec_words_reg;
logic [VEC_SIZEW-1:0] words_left;
logic [MAT_SIZEW-1:0] rows_left;
logic first_reg;

logic last_word;
logic last_row;

assign last_word = (words_left == {{(VEC_SIZEW-1){1'b0}}, 1'b1});
assign last_row  = (rows_left  == {{(MAT_SIZEW-1){1'b0}}, 1'b1});

// State register and short, registered address generators.
always_ff @(posedge clk) begin
    if (rst) begin
        state         <= IDLE;
        vec_addr_reg  <= '0;
        mat_addr_reg  <= '0;
        vec_base_reg  <= '0;
        vec_words_reg <= '0;
        words_left    <= '0;
        rows_left     <= '0;
        first_reg     <= 1'b0;
    end else begin
        state <= next_state;

        if ((state == IDLE) && start &&
            (vec_num_words != '0) &&
            (mat_num_rows_per_olane != '0)) begin
            vec_addr_reg  <= vec_start_addr;
            mat_addr_reg  <= mat_start_addr;
            vec_base_reg  <= vec_start_addr;
            vec_words_reg <= vec_num_words;
            words_left    <= vec_num_words;
            rows_left     <= mat_num_rows_per_olane;
            first_reg     <= 1'b1;
        end else if (state == COMPUTE) begin
            if (last_word && last_row) begin
                first_reg <= 1'b0;
            end else begin
                // Matrix words are contiguous, so no multiplier is required.
                mat_addr_reg <= mat_addr_reg + 1'b1;

                if (last_word) begin
                    vec_addr_reg <= vec_base_reg;
                    words_left   <= vec_words_reg;
                    rows_left    <= rows_left - 1'b1;
                    first_reg    <= 1'b1;
                end else begin
                    vec_addr_reg <= vec_addr_reg + 1'b1;
                    words_left   <= words_left - 1'b1;
                    first_reg    <= 1'b0;
                end
            end
        end
    end
end

always_comb begin : state_decoder
    next_state = state;

    case (state)
        IDLE: begin
            if (start &&
                (vec_num_words != '0) &&
                (mat_num_rows_per_olane != '0)) begin
                next_state = COMPUTE;
            end
        end

        COMPUTE: begin
            if (last_word && last_row) begin
                next_state = IDLE;
            end
        end

        default: next_state = IDLE;
    endcase
end

always_comb begin : output_decoder
    vec_raddr   = '0;
    mat_raddr   = '0;
    accum_first = 1'b0;
    accum_last  = 1'b0;
    ovalid      = 1'b0;
    busy        = 1'b0;

    case (state)
        IDLE: begin
        end

        COMPUTE: begin
            vec_raddr   = vec_addr_reg;
            mat_raddr   = mat_addr_reg;
            accum_first = first_reg;
            accum_last  = last_word;
            ovalid      = 1'b1;
            busy        = 1'b1;
        end

        default: begin
        end
    endcase
end

/******* Your code ends here ********/

endmodule
