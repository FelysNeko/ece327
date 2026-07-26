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
    parameter NUM_OLANES = 128
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

localparam integer VEC_SIZEW = VEC_ADDRW + 1;
localparam integer MAT_SIZEW = MAT_ADDRW + 1;
localparam integer LANES_PER_GROUP = 8;
localparam integer NUM_GROUPS =
    (NUM_OLANES + LANES_PER_GROUP - 1) / LANES_PER_GROUP;
localparam integer DOT_LATENCY = 7;

logic [VEC_ADDRW-1:0] ctrl_vec_raddr;
logic [MAT_ADDRW-1:0] ctrl_mat_raddr;
logic ctrl_accum_first;
logic ctrl_accum_last;
logic ctrl_ovalid;
logic ctrl_busy;

// Address replication stage. One matrix-address copy drives only eight BRAMs.
logic [VEC_ADDRW-1:0] vec_raddr_q;
logic [MAT_ADDRW-1:0] mat_raddr_q [0:NUM_GROUPS-1];
logic addr_valid_q;
logic addr_first_q;
logic addr_last_q;

logic [MEM_DATAW-1:0] vec_rdata;
logic [MEM_DATAW-1:0] mat_rdata [0:NUM_OLANES-1];

logic mem_valid_q;
logic mem_first_q;
logic mem_last_q;

// Two-level vector replication tree: BRAM -> group copy -> lane copy.
logic signed [MEM_DATAW-1:0] vec_group [0:NUM_GROUPS-1];
logic group_valid [0:NUM_GROUPS-1];
logic group_first [0:NUM_GROUPS-1];
logic group_last [0:NUM_GROUPS-1];

logic signed [MEM_DATAW-1:0] vec_lane [0:NUM_OLANES-1];
logic signed [MEM_DATAW-1:0] mat_stage0 [0:NUM_OLANES-1];
logic signed [MEM_DATAW-1:0] mat_lane [0:NUM_OLANES-1];
logic lane_valid [0:NUM_GROUPS-1];
logic lane_first [0:NUM_GROUPS-1];
logic lane_last [0:NUM_GROUPS-1];

// Shared control pipelines, one per eight-lane group. These ordinary FFs
// replace 128 duplicated dot-valid pipelines and avoid SRL pulse-width issues.
(* shreg_extract = "no" *) logic [DOT_LATENCY-1:0] valid_pipe [0:NUM_GROUPS-1];
(* shreg_extract = "no" *) logic [DOT_LATENCY-1:0] first_pipe [0:NUM_GROUPS-1];
(* shreg_extract = "no" *) logic [DOT_LATENCY-1:0] last_pipe [0:NUM_GROUPS-1];

logic signed [OWIDTH-1:0] dot_result [0:NUM_OLANES-1];
logic signed [OWIDTH-1:0] accum_result [0:NUM_OLANES-1];
logic [NUM_OLANES-1:0] accum_ovalid;

logic busy_reg;
logic [MAT_SIZEW-1:0] output_groups_left;

integer addr_group_i;
integer copy_group_i;
integer pipe_group_i;
integer pipe_stage_i;

ctrl #(
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

// Replicate the high-fanout read address before it reaches the BRAMs.
always_ff @(posedge clk) begin
    if (rst) begin
        addr_valid_q <= 1'b0;
        addr_first_q <= 1'b0;
        addr_last_q  <= 1'b0;
    end else begin
        vec_raddr_q <= ctrl_vec_raddr;
        for (addr_group_i = 0; addr_group_i < NUM_GROUPS; addr_group_i = addr_group_i + 1) begin
            mat_raddr_q[addr_group_i] <= ctrl_mat_raddr;
        end
        addr_valid_q <= ctrl_ovalid;
        addr_first_q <= ctrl_accum_first;
        addr_last_q  <= ctrl_accum_last;
    end
end

mem #(
    .DATAW(MEM_DATAW),
    .DEPTH(VEC_MEM_DEPTH),
    .ADDRW(VEC_ADDRW)
) u_vec_mem (
    .clk(clk),
    .wdata(i_vec_wdata),
    .waddr(i_vec_waddr),
    .wen(i_vec_wen),
    .raddr(vec_raddr_q),
    .rdata(vec_rdata)
);

// Align metadata with the one-cycle synchronous memory read.
always_ff @(posedge clk) begin
    if (rst) begin
        mem_valid_q <= 1'b0;
        mem_first_q <= 1'b0;
        mem_last_q  <= 1'b0;
    end else begin
        mem_valid_q <= addr_valid_q;
        mem_first_q <= addr_first_q;
        mem_last_q  <= addr_last_q;
    end
end

// Group-level vector copies and metadata.
always_ff @(posedge clk) begin
    if (rst) begin
        for (copy_group_i = 0; copy_group_i < NUM_GROUPS; copy_group_i = copy_group_i + 1) begin
            group_valid[copy_group_i] <= 1'b0;
            group_first[copy_group_i] <= 1'b0;
            group_last[copy_group_i]  <= 1'b0;
        end
    end else begin
        for (copy_group_i = 0; copy_group_i < NUM_GROUPS; copy_group_i = copy_group_i + 1) begin
            vec_group[copy_group_i]   <= $signed(vec_rdata);
            group_valid[copy_group_i] <= mem_valid_q;
            group_first[copy_group_i] <= mem_first_q;
            group_last[copy_group_i]  <= mem_last_q;
        end
    end
end

// A single shared valid/first/last pipeline per group.
always_ff @(posedge clk) begin
    if (rst) begin
        for (pipe_group_i = 0; pipe_group_i < NUM_GROUPS; pipe_group_i = pipe_group_i + 1) begin
            lane_valid[pipe_group_i] <= 1'b0;
            lane_first[pipe_group_i] <= 1'b0;
            lane_last[pipe_group_i]  <= 1'b0;
            valid_pipe[pipe_group_i] <= '0;
            first_pipe[pipe_group_i] <= '0;
            last_pipe[pipe_group_i]  <= '0;
        end
    end else begin
        for (pipe_group_i = 0; pipe_group_i < NUM_GROUPS; pipe_group_i = pipe_group_i + 1) begin
            lane_valid[pipe_group_i] <= group_valid[pipe_group_i];
            lane_first[pipe_group_i] <= group_first[pipe_group_i];
            lane_last[pipe_group_i]  <= group_last[pipe_group_i];

            valid_pipe[pipe_group_i][0] <= lane_valid[pipe_group_i];
            first_pipe[pipe_group_i][0] <= lane_first[pipe_group_i];
            last_pipe[pipe_group_i][0]  <= lane_last[pipe_group_i];

            for (pipe_stage_i = 1; pipe_stage_i < DOT_LATENCY; pipe_stage_i = pipe_stage_i + 1) begin
                valid_pipe[pipe_group_i][pipe_stage_i] <= valid_pipe[pipe_group_i][pipe_stage_i-1];
                first_pipe[pipe_group_i][pipe_stage_i] <= first_pipe[pipe_group_i][pipe_stage_i-1];
                last_pipe[pipe_group_i][pipe_stage_i]  <= last_pipe[pipe_group_i][pipe_stage_i-1];
            end
        end
    end
end

// Keep busy asserted until the final output group actually exits the pipeline.
always_ff @(posedge clk) begin
    if (rst) begin
        busy_reg           <= 1'b0;
        output_groups_left <= '0;
    end else begin
        if (i_start && !busy_reg &&
            (i_vec_num_words != '0) &&
            (i_mat_num_rows_per_olane != '0)) begin
            busy_reg           <= 1'b1;
            output_groups_left <= i_mat_num_rows_per_olane;
        end else if (accum_ovalid[0] && busy_reg) begin
            if (output_groups_left == {{(MAT_SIZEW-1){1'b0}}, 1'b1}) begin
                busy_reg           <= 1'b0;
                output_groups_left <= '0;
            end else begin
                output_groups_left <= output_groups_left - 1'b1;
            end
        end
    end
end

assign o_busy  = busy_reg;
assign o_valid = accum_ovalid[0];

genvar lane;
generate
    for (lane = 0; lane < NUM_OLANES; lane = lane + 1) begin : gen_olanes
        localparam integer GROUP_ID = lane / LANES_PER_GROUP;

        mem #(
            .DATAW(MEM_DATAW),
            .DEPTH(MAT_MEM_DEPTH),
            .ADDRW(MAT_ADDRW)
        ) u_mat_mem (
            .clk(clk),
            .wdata(i_mat_wdata),
            .waddr(i_mat_waddr),
            .wen(i_mat_wen[lane]),
            .raddr(mat_raddr_q[GROUP_ID]),
            .rdata(mat_rdata[lane])
        );

        // First local matrix stage, immediately after the BRAM output.
        always_ff @(posedge clk) begin
            mat_stage0[lane] <= $signed(mat_rdata[lane]);
        end

        // Second replication/locality stage. Each DSP sees lane-local FFs.
        always_ff @(posedge clk) begin
            vec_lane[lane] <= vec_group[GROUP_ID];
            mat_lane[lane] <= mat_stage0[lane];
        end

        dot8 #(
            .IWIDTH(IWIDTH),
            .OWIDTH(OWIDTH)
        ) u_dot8 (
            .clk(clk),
            .rst(rst),
            .vec0(vec_lane[lane]),
            .vec1(mat_lane[lane]),
            .ivalid(lane_valid[GROUP_ID]),
            .result(dot_result[lane]),
            .ovalid()
        );

        accum #(
            .DATAW(OWIDTH),
            .ACCUMW(OWIDTH)
        ) u_accum (
            .clk(clk),
            .rst(rst),
            .data(dot_result[lane]),
            .ivalid(valid_pipe[GROUP_ID][DOT_LATENCY-1]),
            .first(first_pipe[GROUP_ID][DOT_LATENCY-1]),
            .last(last_pipe[GROUP_ID][DOT_LATENCY-1]),
            .result(accum_result[lane]),
            .ovalid(accum_ovalid[lane])
        );

        assign o_result[lane*OWIDTH +: OWIDTH] = accum_result[lane];
    end
endgenerate

/******* Your code ends here ********/

endmodule
