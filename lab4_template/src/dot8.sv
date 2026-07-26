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

localparam integer PRODW = 2 * IWIDTH;
localparam integer SUMW = PRODW + 3;
localparam integer DSP_MULT_LATENCY = 4;
localparam integer DOT_LATENCY = DSP_MULT_LATENCY + 3;

wire signed [PRODW-1:0] prod_stage [0:7];

// One registered fabric-adder level per clock after the fully pipelined DSPs.
(* use_dsp = "no" *) logic signed [PRODW:0] sum_stage1 [0:3];
(* use_dsp = "no" *) logic signed [PRODW+1:0] sum_stage2 [0:1];
(* use_dsp = "no" *) logic signed [PRODW+2:0] sum_stage3;

// Do not allow Vivado to turn this into an SRL; ordinary FFs avoid the
// pulse-width problem seen in the aggressive Lab 3 implementation.
(* shreg_extract = "no" *) logic [DOT_LATENCY-1:0] valid_pipe;

integer j;
integer k;

genvar mult_id;
generate
    for (mult_id = 0; mult_id < 8; mult_id = mult_id + 1) begin : gen_dsp_mult
        dsp_signed_mult_pipe #(
            .IWIDTH(IWIDTH)
        ) u_mult (
            .clk(clk),
            .a($signed(vec0[mult_id*IWIDTH +: IWIDTH])),
            .b($signed(vec1[mult_id*IWIDTH +: IWIDTH])),
            .p(prod_stage[mult_id])
        );
    end
endgenerate

always_ff @(posedge clk) begin
    if (rst) begin
        valid_pipe <= '0;
    end else begin
        // Stage 5: eight products become four sums.
        for (j = 0; j < 4; j = j + 1) begin
            sum_stage1[j] <=
                $signed({prod_stage[2*j][PRODW-1], prod_stage[2*j]}) +
                $signed({prod_stage[2*j+1][PRODW-1], prod_stage[2*j+1]});
        end

        // Stage 6: four sums become two sums.
        for (k = 0; k < 2; k = k + 1) begin
            sum_stage2[k] <=
                $signed({sum_stage1[2*k][PRODW], sum_stage1[2*k]}) +
                $signed({sum_stage1[2*k+1][PRODW], sum_stage1[2*k+1]});
        end

        // Stage 7: final dot-product sum.
        sum_stage3 <=
            $signed({sum_stage2[0][PRODW+1], sum_stage2[0]}) +
            $signed({sum_stage2[1][PRODW+1], sum_stage2[1]});

        valid_pipe[0] <= ivalid;
        for (j = 1; j < DOT_LATENCY; j = j + 1) begin
            valid_pipe[j] <= valid_pipe[j-1];
        end
    end
end

generate
    if (OWIDTH >= SUMW) begin : gen_result_extend
        assign result = {{(OWIDTH-SUMW){sum_stage3[SUMW-1]}}, sum_stage3};
    end else begin : gen_result_truncate
        assign result = sum_stage3[OWIDTH-1:0];
    end
endgenerate

assign ovalid = valid_pipe[DOT_LATENCY-1];

/******* Your code ends here ********/

endmodule


// Four-stage, fully internally pipelined signed multiplier.
// Synthesis uses the DSP48E2 primitive directly, matching the low-level
// technique used by the fast Lab 3 tanh implementation.
(* keep_hierarchy = "yes" *)
module dsp_signed_mult_pipe #(
    parameter IWIDTH = 8
)(
    input  logic clk,
    input  logic signed [IWIDTH-1:0] a,
    input  logic signed [IWIDTH-1:0] b,
    output signed [2*IWIDTH-1:0] p
);

`ifndef XILINX_SIMULATOR
    wire signed [29:0] a_ext;
    wire signed [17:0] b_ext;
    wire signed [47:0] p_full;

    assign a_ext = {{(30-IWIDTH){a[IWIDTH-1]}}, a};
    assign b_ext = {{(18-IWIDTH){b[IWIDTH-1]}}, b};
    assign p = p_full[2*IWIDTH-1:0];

    DSP48E2 #(
        .ACASCREG(2),
        .ADREG(0),
        .ALUMODEREG(0),
        .AREG(2),
        .BCASCREG(2),
        .BREG(2),
        .CARRYINREG(0),
        .CARRYINSELREG(0),
        .CREG(0),
        .DREG(0),
        .INMODEREG(0),
        .MREG(1),
        .OPMODEREG(0),
        .PREG(1),
        .A_INPUT("DIRECT"),
        .B_INPUT("DIRECT"),
        .PREADDINSEL("A"),
        .AMULTSEL("A"),
        .BMULTSEL("B"),
        .USE_MULT("MULTIPLY"),
        .USE_SIMD("ONE48"),
        .USE_PATTERN_DETECT("NO_PATDET"),
        .AUTORESET_PATDET("NO_RESET"),
        .AUTORESET_PRIORITY("RESET"),
        .MASK(48'h3FFFFFFFFFFF),
        .PATTERN(48'h000000000000),
        .SEL_MASK("MASK"),
        .SEL_PATTERN("PATTERN"),
        .USE_WIDEXOR("FALSE"),
        .XORSIMD("XOR24_48_96")
    ) dsp_i (
        .ACOUT(),
        .BCOUT(),
        .CARRYCASCOUT(),
        .CARRYOUT(),
        .MULTSIGNOUT(),
        .OVERFLOW(),
        .P(p_full),
        .PATTERNBDETECT(),
        .PATTERNDETECT(),
        .PCOUT(),
        .UNDERFLOW(),
        .XOROUT(),

        .A(a_ext),
        .ACIN(30'd0),
        .ALUMODE(4'b0000),
        .B(b_ext),
        .BCIN(18'd0),
        .C(48'd0),
        .CARRYCASCIN(1'b0),
        .CARRYIN(1'b0),
        .CARRYINSEL(3'b000),
        .CLK(clk),
        .D(27'd0),
        .INMODE(5'b00000),
        // Same proven multiply/add mode as the Lab 3 DSP48E2 version;
        // C is zero here, so P = A*B.
        .OPMODE(9'b000110101),
        .PCIN(48'd0),
        .MULTSIGNIN(1'b0),

        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b1),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b1),
        .CECTRL(1'b1),
        .CED(1'b0),
        .CEINMODE(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),

        // Datapath registers intentionally have no reset. Valid bits ensure
        // no value is observed until the complete pipeline has been filled.
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0)
    );
`else
    // Four-stage behavioral model for RTL simulation.
    logic signed [2*IWIDTH-1:0] p0;
    logic signed [2*IWIDTH-1:0] p1;
    logic signed [2*IWIDTH-1:0] p2;
    logic signed [2*IWIDTH-1:0] p3;

    always_ff @(posedge clk) begin
        p0 <= a * b;
        p1 <= p0;
        p2 <= p1;
        p3 <= p2;
    end

    assign p = p3;
`endif

endmodule
