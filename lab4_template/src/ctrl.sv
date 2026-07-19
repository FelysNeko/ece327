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


typedef enum logic [0:0] {IDLE, COMPUTE} state_t;
state_t state, next_state;


logic [VEC_ADDRW-1:0] vec_base;
logic [MAT_ADDRW-1:0] mat_base;
logic [VEC_SIZEW-1:0] vec_words;
logic [MAT_SIZEW-1:0] rows_per_lane;

logic [VEC_SIZEW-1:0] word_cnt;
logic [MAT_SIZEW-1:0] row_cnt;

always_ff @(posedge clk) begin
    if (rst) begin
        state <= IDLE;
        vec_base <= 0;
        mat_base <= 0;
        vec_words <= 0;
        rows_per_lane <= 0;
        word_cnt <= 0;
        row_cnt <= 0;
    end else begin
        state <= next_state;

        if (state == IDLE && start) begin
            vec_base <= vec_start_addr;
            mat_base <= mat_start_addr;
            vec_words <= vec_num_words;
            rows_per_lane <= mat_num_rows_per_olane;
            word_cnt <= 0;
            row_cnt <= 0;
        end else if (state == COMPUTE) begin
            if (word_cnt == vec_words - 1) begin
                word_cnt <= 0;
                row_cnt <= row_cnt + 1;
            end else begin
                word_cnt <= word_cnt + 1;
            end
        end
    end
end

always_comb begin : state_decoder
    case (state)
        IDLE: begin
            next_state = (start) ? COMPUTE : IDLE;
        end

        COMPUTE: begin
            if ((row_cnt == rows_per_lane - 1) &&
                (word_cnt == vec_words - 1))
                next_state = IDLE;
            else
                next_state = COMPUTE;
        end

        default: next_state = IDLE;
    endcase
end

always_comb begin : output_decoder
    vec_raddr   = 0;
    mat_raddr   = 0;
    accum_first = 0;
    accum_last  = 0;
    ovalid      = 0;
    busy        = 0;

    case (state)
        IDLE: begin
            busy = 0;
            ovalid = 0;
        end
        COMPUTE: begin
            busy   = 1;
            ovalid = 1;

            vec_raddr = vec_base + word_cnt;
            mat_raddr = mat_base +
                        row_cnt * vec_words +
                        word_cnt;

            accum_first = (word_cnt == 0);
            accum_last  = (word_cnt == vec_words - 1);
        end

    endcase
end

endmodule