/***************************************************/
/* ECE 327: Digital Hardware Systems - Spring 2026 */
/* Lab 4                                           */
/* 8-Lane Dot Product Module                       */
/***************************************************/

module dot8 # (
    parameter IWIDTH = 8,
    parameter OWIDTH = 32
)(
    input clk,
    input rst,
    input signed [8*IWIDTH-1:0] vec0,
    input signed [8*IWIDTH-1:0] vec1,
    input ivalid,
    output signed [OWIDTH-1:0] result,
    output ovalid
);

/******* Your code starts here *******/

// Eight signed IWIDTH x IWIDTH products require 2*IWIDTH bits.
// Each level of the reduction tree grows by one bit.
localparam PRODW = 2 * IWIDTH;
localparam SUMW  = PRODW + 3;

logic signed [PRODW-1:0] prod_stage [0:7];
logic signed [PRODW:0]   sum_stage1 [0:3];
logic signed [PRODW+1:0] sum_stage2 [0:1];
logic signed [PRODW+2:0] sum_stage3;
logic [3:0] valid_pipe;

integer i, j, k;

always_ff @(posedge clk) begin
    if (rst) begin
        for (i = 0; i < 8; i = i + 1) begin
            prod_stage[i] <= '0;
        end
        for (i = 0; i < 4; i = i + 1) begin
            sum_stage1[i] <= '0;
        end
        for (i = 0; i < 2; i = i + 1) begin
            sum_stage2[i] <= '0;
        end
        sum_stage3 <= '0;
        valid_pipe <= '0;
    end else begin
        // Pipeline stage 1: eight signed multiplications.
        for (i = 0; i < 8; i = i + 1) begin
            prod_stage[i] <= $signed(vec0[i*IWIDTH +: IWIDTH])
                           * $signed(vec1[i*IWIDTH +: IWIDTH]);
        end
        
        for (j = 0; j < 4; j = j + 1) begin
            sum_stage1[j] <= $signed({prod_stage[j*2][PRODW-1], prod_stage[j*2]})
                           + $signed({prod_stage[j*2+1][PRODW-1], prod_stage[j*2+1]});
        end
        
        for (k = 0; k < 2; k = k + 1) begin
            sum_stage2[k] <= $signed({sum_stage1[k*2][PRODW], sum_stage1[k*2]})
                           + $signed({sum_stage1[k*2+1][PRODW], sum_stage1[k*2+1]});
        end

        sum_stage3 <= $signed({sum_stage2[0][PRODW+1], sum_stage2[0]})
                    + $signed({sum_stage2[1][PRODW+1], sum_stage2[1]});

        valid_pipe[0] <= ivalid;
        valid_pipe[1] <= valid_pipe[0];
        valid_pipe[2] <= valid_pipe[1];
        valid_pipe[3] <= valid_pipe[2];
    end
end

// Explicitly resize the signed final sum to the requested output width.
generate
    if (OWIDTH >= SUMW) begin : gen_result_extend
        assign result = {{(OWIDTH-SUMW){sum_stage3[SUMW-1]}}, sum_stage3};
    end else begin : gen_result_truncate
        assign result = sum_stage3[OWIDTH-1:0];
    end
endgenerate

assign ovalid = valid_pipe[3];

/******* Your code ends here ********/

endmodule
