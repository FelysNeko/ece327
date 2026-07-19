/***************************************************/
/* ECE 327: Digital Hardware Systems - Spring 2026 */
/* Lab 4                                           */
/* Matrix Vector Multiplication (MVM) Module       */
/***************************************************/

module mvm # (
    parameter IWIDTH = 8,
    parameter OWIDTH = 32,
    parameter MEM_DATAW = IWIDTH * 8,
    parameter VEC_MEM_DEPTH = 256,
    parameter VEC_ADDRW = $clog2(VEC_MEM_DEPTH),
    parameter MAT_MEM_DEPTH = 512,
    parameter MAT_ADDRW = $clog2(MAT_MEM_DEPTH),
    parameter NUM_OLANES = 8
)(
    input clk,
    input rst,
    input [MEM_DATAW-1:0] i_vec_wdata,
    input [VEC_ADDRW-1:0] i_vec_waddr,
    input i_vec_wen,
    input [MEM_DATAW-1:0] i_mat_wdata,
    input [MAT_ADDRW-1:0] i_mat_waddr,
    input [NUM_OLANES-1:0] i_mat_wen,
    input i_start,
    input [VEC_ADDRW-1:0] i_vec_start_addr,
    input [VEC_ADDRW:0] i_vec_num_words,
    input [MAT_ADDRW-1:0] i_mat_start_addr,
    input [MAT_ADDRW:0] i_mat_num_rows_per_olane,
    output o_busy,
    output [OWIDTH*NUM_OLANES-1:0] o_result,
    output o_valid
);

/******* Your code starts here *******/

localparam VEC_SIZEW = VEC_ADDRW + 1;
localparam MAT_SIZEW = MAT_ADDRW + 1;
// dot8 contains multiplier registers followed by three registered adder levels.
localparam DOT_LATENCY = 4;

logic [VEC_ADDRW-1:0] ctrl_vec_raddr;
logic [MAT_ADDRW-1:0] ctrl_mat_raddr;
logic ctrl_accum_first;
logic ctrl_accum_last;
logic ctrl_ovalid;
logic ctrl_busy;

logic [MEM_DATAW-1:0] vec_rdata;
logic [MEM_DATAW-1:0] mat_rdata [0:NUM_OLANES-1];

logic mem_data_valid;
logic mem_data_first;
logic mem_data_last;
logic [DOT_LATENCY-1:0] first_pipe;
logic [DOT_LATENCY-1:0] last_pipe;

logic signed [OWIDTH-1:0] dot_result [0:NUM_OLANES-1];
logic [NUM_OLANES-1:0] dot_ovalid;
logic signed [OWIDTH-1:0] accum_result [0:NUM_OLANES-1];
logic [NUM_OLANES-1:0] accum_ovalid;
logic all_accum_valid;

logic busy_reg;
logic [MAT_SIZEW-1:0] expected_output_chunks;
logic [MAT_SIZEW-1:0] completed_output_chunks;

integer pipe_i;

ctrl # (
    .VEC_ADDRW(VEC_ADDRW),
    .MAT_ADDRW(MAT_ADDRW),
    .VEC_SIZEW(VEC_SIZEW),
    .MAT_SIZEW(MAT_SIZEW)
) u_ctrl (
    .clk(clk),
    .rst(rst),
    .start(i_start),
    .vec_start_addr(i_vec_start_addr),
    .vec_num_words(i_vec_num_words),
    .mat_start_addr(i_mat_start_addr),
    .mat_num_rows_per_olane(i_mat_num_rows_per_olane),
    .vec_raddr(ctrl_vec_raddr),
    .mat_raddr(ctrl_mat_raddr),
    .accum_first(ctrl_accum_first),
    .accum_last(ctrl_accum_last),
    .ovalid(ctrl_ovalid),
    .busy(ctrl_busy)
);

mem # (
    .DATAW(MEM_DATAW),
    .DEPTH(VEC_MEM_DEPTH),
    .ADDRW(VEC_ADDRW)
) u_vec_mem (
    .clk(clk),
    .wdata(i_vec_wdata),
    .waddr(i_vec_waddr),
    .wen(i_vec_wen),
    .raddr(ctrl_vec_raddr),
    .rdata(vec_rdata)
);

// The memory output becomes usable one cycle after the controller issues an
// address. Delay its control bits by the same amount before presenting them to
// the dot-product units.
always_ff @(posedge clk) begin
    if (rst) begin
        mem_data_valid <= 1'b0;
        mem_data_first <= 1'b0;
        mem_data_last  <= 1'b0;
        first_pipe     <= '0;
        last_pipe      <= '0;
    end else begin
        mem_data_valid <= ctrl_ovalid;
        mem_data_first <= ctrl_accum_first;
        mem_data_last  <= ctrl_accum_last;

        first_pipe[0] <= mem_data_first;
        last_pipe[0]  <= mem_data_last;
        for (pipe_i = 1; pipe_i < DOT_LATENCY; pipe_i = pipe_i + 1) begin
            first_pipe[pipe_i] <= first_pipe[pipe_i-1];
            last_pipe[pipe_i]  <= last_pipe[pipe_i-1];
        end
    end
end

genvar lane;
generate
    for (lane = 0; lane < NUM_OLANES; lane = lane + 1) begin : gen_olanes
        mem # (
            .DATAW(MEM_DATAW),
            .DEPTH(MAT_MEM_DEPTH),
            .ADDRW(MAT_ADDRW)
        ) u_mat_mem (
            .clk(clk),
            .wdata(i_mat_wdata),
            .waddr(i_mat_waddr),
            .wen(i_mat_wen[lane]),
            .raddr(ctrl_mat_raddr),
            .rdata(mat_rdata[lane])
        );

        dot8 # (
            .IWIDTH(IWIDTH),
            .OWIDTH(OWIDTH)
        ) u_dot8 (
            .clk(clk),
            .rst(rst),
            .vec0(vec_rdata),
            .vec1(mat_rdata[lane]),
            .ivalid(mem_data_valid),
            .result(dot_result[lane]),
            .ovalid(dot_ovalid[lane])
        );

        accum # (
            .DATAW(OWIDTH),
            .ACCUMW(OWIDTH)
        ) u_accum (
            .clk(clk),
            .rst(rst),
            .data(dot_result[lane]),
            .ivalid(dot_ovalid[lane]),
            .first(first_pipe[DOT_LATENCY-1]),
            .last(last_pipe[DOT_LATENCY-1]),
            .result(accum_result[lane]),
            .ovalid(accum_ovalid[lane])
        );

        assign o_result[lane*OWIDTH +: OWIDTH] = accum_result[lane];
    end
endgenerate

// All lanes operate in lockstep; a top-level output is valid only when every
// lane has completed the current row group.
assign all_accum_valid = &accum_ovalid;
assign o_valid = all_accum_valid;

// Keep busy asserted through pipeline drain, not merely while the controller
// is issuing memory reads. One output chunk is produced per row per output lane.
always_ff @(posedge clk) begin
    if (rst) begin
        busy_reg                <= 1'b0;
        expected_output_chunks  <= '0;
        completed_output_chunks <= '0;
    end else begin
        if (i_start && !busy_reg) begin
            expected_output_chunks  <= i_mat_num_rows_per_olane;
            completed_output_chunks <= '0;
            busy_reg <= (i_vec_num_words != '0) &&
                        (i_mat_num_rows_per_olane != '0);
        end else if (busy_reg && all_accum_valid) begin
            if (completed_output_chunks == expected_output_chunks - 1'b1) begin
                busy_reg <= 1'b0;
            end else begin
                completed_output_chunks <= completed_output_chunks + 1'b1;
            end
        end
    end
end

assign o_busy = busy_reg | ctrl_busy;

/******* Your code ends here ********/

endmodule
