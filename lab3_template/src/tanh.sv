/***************************************************/
/* ECE 327: Digital Hardware Systems - Spring 2026 */
/* Lab 3                                           */
/* Hyperbolic Tangent (Tanh) circuit               */
/***************************************************/

module tanh (
    input  clk,         // Input clock signal
    input  rst,         // Active-high reset signal
    // Input interface
    input  [13:0] i_x,  // Input value x
    input  i_valid,     // Input value x is valid
    output o_ready,     // Circuit is ready to accept an input
    // Output interface
    output [13:0] o_fx, // Output result f(x)
    output o_valid,     // Output result f(x) is valid
    input  i_ready      // Downstream circuit is ready to accept an input
);

// Local parameters to define the Taylor coefficients
localparam signed [13:0] A0 = 14'b11101010101011; // a0 = -0.33349609375
localparam signed [13:0] A1 = 14'b00001000100010; // a1 =  0.13330078125
localparam signed [13:0] A2 = 14'b11111100100011; // a2 = -0.05419921875
localparam signed [13:0] A3 = 14'b00000001011001; // a3 =  0.021484375
localparam signed [13:0] A4 = 14'b11111111011100; // a4 = -0.0087890625


/******* Your code starts here *******/
// DSP48E2 bonus version.
// The magic here is to use the DSP48E2 as a fully pipelined multiply-add:
//      q = (a*b + (c << 12)) >>> 12
// This implements Q2.12 multiply + Q2.12 add in the DSP C input / post-adder.
// It avoids a DSP-to-fabric-adder critical path for the Horner coefficient adds.

logic pipe_en;
assign pipe_en = i_ready;
assign o_ready = i_ready;

logic signed [13:0] i_x_s;
assign i_x_s = i_x;

logic signed [13:0] r_o_fx;
logic r_o_valid;

// Stage after x_squared = x*x.
logic signed [13:0] x_1;
logic signed [13:0] x_squared_1;
logic valid_1;

// Stage after parallel x_cubed = x_squared*x and p1 = A4*x_squared + A3.
logic signed [13:0] x_2;
logic signed [13:0] x_squared_2;
logic signed [13:0] x_cubed_2;
logic signed [13:0] p1_2;
logic valid_2;

// Stage after p2 = p1*x_squared + A2.
logic signed [13:0] x_3;
logic signed [13:0] x_squared_3;
logic signed [13:0] x_cubed_3;
logic signed [13:0] p2_3;
logic valid_3;

// Stage after p3 = p2*x_squared + A1.
logic signed [13:0] x_4;
logic signed [13:0] x_squared_4;
logic signed [13:0] x_cubed_4;
logic signed [13:0] p3_4;
logic valid_4;

// Stage after p4 = p3*x_squared + A0.
logic signed [13:0] x_5;
logic signed [13:0] x_cubed_5;
logic signed [13:0] p4_5;
logic valid_5;

// DSP outputs and aligned sideband delays.
logic signed [13:0] x_squared_dsp;
logic signed [13:0] x_for_x2;
logic valid_x2;

logic signed [13:0] x_cubed_dsp;
logic signed [13:0] p1_dsp;
logic signed [13:0] x_for_p1;
logic signed [13:0] x_squared_for_p1;
logic valid_p1;

logic signed [13:0] p2_dsp;
logic signed [13:0] x_for_p2;
logic signed [13:0] x_squared_for_p2;
logic signed [13:0] x_cubed_for_p2;
logic valid_p2;

logic signed [13:0] p3_dsp;
logic signed [13:0] x_for_p3;
logic signed [13:0] x_squared_for_p3;
logic signed [13:0] x_cubed_for_p3;
logic valid_p3;

logic signed [13:0] p4_dsp;
logic signed [13:0] x_for_p4;
logic signed [13:0] x_cubed_for_p4;
logic valid_p4;

logic signed [13:0] fx_dsp;
logic valid_fx;

// x_squared = x*x + 0
q212_dsp_muladd u_x_squared (
    .clk(clk), .rst(rst), .ce(pipe_en),
    .a(i_x_s), .b(i_x_s), .c(14'sd0),
    .q(x_squared_dsp)
);
q212_delay #(.N(4)) u_delay_x_for_x2 (
    .clk(clk), .rst(rst), .ce(pipe_en), .d(i_x_s), .q(x_for_x2)
);
bit_delay #(.N(4)) u_delay_valid_x2 (
    .clk(clk), .rst(rst), .ce(pipe_en), .d(i_valid), .q(valid_x2)
);

// x_cubed = x_squared*x + 0
q212_dsp_muladd u_x_cubed (
    .clk(clk), .rst(rst), .ce(pipe_en),
    .a(x_squared_1), .b(x_1), .c(14'sd0),
    .q(x_cubed_dsp)
);

// p1 = A4*x_squared + A3
q212_dsp_muladd u_p1 (
    .clk(clk), .rst(rst), .ce(pipe_en),
    .a(A4), .b(x_squared_1), .c(A3),
    .q(p1_dsp)
);
q212_delay #(.N(4)) u_delay_x_for_p1 (
    .clk(clk), .rst(rst), .ce(pipe_en), .d(x_1), .q(x_for_p1)
);
q212_delay #(.N(4)) u_delay_x_squared_for_p1 (
    .clk(clk), .rst(rst), .ce(pipe_en), .d(x_squared_1), .q(x_squared_for_p1)
);
bit_delay #(.N(4)) u_delay_valid_p1 (
    .clk(clk), .rst(rst), .ce(pipe_en), .d(valid_1), .q(valid_p1)
);

// p2 = p1*x_squared + A2
q212_dsp_muladd u_p2 (
    .clk(clk), .rst(rst), .ce(pipe_en),
    .a(p1_2), .b(x_squared_2), .c(A2),
    .q(p2_dsp)
);
q212_delay #(.N(4)) u_delay_x_for_p2 (
    .clk(clk), .rst(rst), .ce(pipe_en), .d(x_2), .q(x_for_p2)
);
q212_delay #(.N(4)) u_delay_x_squared_for_p2 (
    .clk(clk), .rst(rst), .ce(pipe_en), .d(x_squared_2), .q(x_squared_for_p2)
);
q212_delay #(.N(4)) u_delay_x_cubed_for_p2 (
    .clk(clk), .rst(rst), .ce(pipe_en), .d(x_cubed_2), .q(x_cubed_for_p2)
);
bit_delay #(.N(4)) u_delay_valid_p2 (
    .clk(clk), .rst(rst), .ce(pipe_en), .d(valid_2), .q(valid_p2)
);

// p3 = p2*x_squared + A1
q212_dsp_muladd u_p3 (
    .clk(clk), .rst(rst), .ce(pipe_en),
    .a(p2_3), .b(x_squared_3), .c(A1),
    .q(p3_dsp)
);
q212_delay #(.N(4)) u_delay_x_for_p3 (
    .clk(clk), .rst(rst), .ce(pipe_en), .d(x_3), .q(x_for_p3)
);
q212_delay #(.N(4)) u_delay_x_squared_for_p3 (
    .clk(clk), .rst(rst), .ce(pipe_en), .d(x_squared_3), .q(x_squared_for_p3)
);
q212_delay #(.N(4)) u_delay_x_cubed_for_p3 (
    .clk(clk), .rst(rst), .ce(pipe_en), .d(x_cubed_3), .q(x_cubed_for_p3)
);
bit_delay #(.N(4)) u_delay_valid_p3 (
    .clk(clk), .rst(rst), .ce(pipe_en), .d(valid_3), .q(valid_p3)
);

// p4 = p3*x_squared + A0
q212_dsp_muladd u_p4 (
    .clk(clk), .rst(rst), .ce(pipe_en),
    .a(p3_4), .b(x_squared_4), .c(A0),
    .q(p4_dsp)
);
q212_delay #(.N(4)) u_delay_x_for_p4 (
    .clk(clk), .rst(rst), .ce(pipe_en), .d(x_4), .q(x_for_p4)
);
q212_delay #(.N(4)) u_delay_x_cubed_for_p4 (
    .clk(clk), .rst(rst), .ce(pipe_en), .d(x_cubed_4), .q(x_cubed_for_p4)
);
bit_delay #(.N(4)) u_delay_valid_p4 (
    .clk(clk), .rst(rst), .ce(pipe_en), .d(valid_4), .q(valid_p4)
);

// fx = p4*x_cubed + x
q212_dsp_muladd u_fx (
    .clk(clk), .rst(rst), .ce(pipe_en),
    .a(p4_5), .b(x_cubed_5), .c(x_5),
    .q(fx_dsp)
);
bit_delay #(.N(4)) u_delay_valid_fx (
    .clk(clk), .rst(rst), .ce(pipe_en), .d(valid_5), .q(valid_fx)
);

always_ff @(posedge clk) begin
    if (rst) begin
        x_1 <= '0;
        x_squared_1 <= '0;
        valid_1 <= 1'b0;

        x_2 <= '0;
        x_squared_2 <= '0;
        x_cubed_2 <= '0;
        p1_2 <= '0;
        valid_2 <= 1'b0;

        x_3 <= '0;
        x_squared_3 <= '0;
        x_cubed_3 <= '0;
        p2_3 <= '0;
        valid_3 <= 1'b0;

        x_4 <= '0;
        x_squared_4 <= '0;
        x_cubed_4 <= '0;
        p3_4 <= '0;
        valid_4 <= 1'b0;

        x_5 <= '0;
        x_cubed_5 <= '0;
        p4_5 <= '0;
        valid_5 <= 1'b0;

        r_o_fx <= '0;
        r_o_valid <= 1'b0;
    end else if (pipe_en) begin
        // Register the output of x_squared DSP.
        x_1 <= x_for_x2;
        x_squared_1 <= x_squared_dsp;
        valid_1 <= valid_x2;

        // Register outputs of x_cubed and p1 DSPs.
        x_2 <= x_for_p1;
        x_squared_2 <= x_squared_for_p1;
        x_cubed_2 <= x_cubed_dsp;
        p1_2 <= p1_dsp;
        valid_2 <= valid_p1;

        // Register output of p2 DSP.
        x_3 <= x_for_p2;
        x_squared_3 <= x_squared_for_p2;
        x_cubed_3 <= x_cubed_for_p2;
        p2_3 <= p2_dsp;
        valid_3 <= valid_p2;

        // Register output of p3 DSP.
        x_4 <= x_for_p3;
        x_squared_4 <= x_squared_for_p3;
        x_cubed_4 <= x_cubed_for_p3;
        p3_4 <= p3_dsp;
        valid_4 <= valid_p3;

        // Register output of p4 DSP.
        x_5 <= x_for_p4;
        x_cubed_5 <= x_cubed_for_p4;
        p4_5 <= p4_dsp;
        valid_5 <= valid_p4;

        // Register final output.
        r_o_fx <= fx_dsp;
        r_o_valid <= valid_fx;
    end
end

assign o_fx = r_o_fx;
assign o_valid = r_o_valid;

/******* Your code ends here ********/

endmodule


// Fully-pipelined Q2.12 DSP multiply-add helper.
// q = truncate_to_Q2.12(a*b + c), where c is aligned internally as c << 12.
module q212_dsp_muladd (
    input  logic clk,
    input  logic rst,
    input  logic ce,
    input  logic signed [13:0] a,
    input  logic signed [13:0] b,
    input  logic signed [13:0] c,
    output logic signed [13:0] q
);

    logic signed [13:0] c_d1, c_d2;
    wire signed [29:0] a_ext;
    wire signed [17:0] b_ext;
    wire signed [47:0] c_ext;
    wire signed [47:0] p_full;

    assign a_ext = {{16{a[13]}}, a};
    assign b_ext = {{4{b[13]}}, b};
    assign c_ext = ({{34{c_d2[13]}}, c_d2} <<< 12);
    assign q = p_full >>> 12;

    // Align C with the internally pipelined multiplier path: AREG/BREG=2, MREG=1, CREG=1.
    always_ff @(posedge clk) begin
        if (rst) begin
            c_d1 <= '0;
            c_d2 <= '0;
        end else if (ce) begin
            c_d1 <= c;
            c_d2 <= c_d1;
        end
    end

    DSP48E2 #(
        .ACASCREG(2),
        .ADREG(0),
        .ALUMODEREG(1),
        .AREG(2),
        .BCASCREG(2),
        .BREG(2),
        .CARRYINREG(1),
        .CARRYINSELREG(1),
        .CREG(1),
        .DREG(0),
        .INMODEREG(1),
        .MREG(1),
        .OPMODEREG(1),
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
        .C(c_ext),
        .CARRYCASCIN(1'b0),
        .CARRYIN(1'b0),
        .CARRYINSEL(3'b000),
        .CLK(clk),
        .D(27'd0),
        .INMODE(5'b00000),
        // OPMODE: W=0, Z=C, Y=M, X=M => P = C + A*B.
        .OPMODE(9'b000110101),
        .PCIN(48'd0),
        .MULTSIGNIN(1'b0),

        .CEA1(ce),
        .CEA2(ce),
        .CEAD(1'b0),
        .CEALUMODE(ce),
        .CEB1(ce),
        .CEB2(ce),
        .CEC(ce),
        .CECARRYIN(ce),
        .CECTRL(ce),
        .CED(1'b0),
        .CEINMODE(ce),
        .CEM(ce),
        .CEP(ce),

        .RSTA(rst),
        .RSTALLCARRYIN(rst),
        .RSTALUMODE(rst),
        .RSTB(rst),
        .RSTC(rst),
        .RSTCTRL(rst),
        .RSTD(rst),
        .RSTINMODE(rst),
        .RSTM(rst),
        .RSTP(rst)
    );
endmodule


module q212_delay #(
    parameter int N = 4
) (
    input  logic clk,
    input  logic rst,
    input  logic ce,
    input  logic signed [13:0] d,
    output logic signed [13:0] q
);
    logic signed [13:0] pipe [0:N-1];
    integer i;

    always_ff @(posedge clk) begin
        if (rst) begin
            for (i = 0; i < N; i = i + 1) begin
                pipe[i] <= '0;
            end
        end else if (ce) begin
            pipe[0] <= d;
            for (i = 1; i < N; i = i + 1) begin
                pipe[i] <= pipe[i-1];
            end
        end
    end

    assign q = pipe[N-1];
endmodule


module bit_delay #(
    parameter int N = 4
) (
    input  logic clk,
    input  logic rst,
    input  logic ce,
    input  logic d,
    output logic q
);
    logic pipe [0:N-1];
    integer i;

    always_ff @(posedge clk) begin
        if (rst) begin
            for (i = 0; i < N; i = i + 1) begin
                pipe[i] <= 1'b0;
            end
        end else if (ce) begin
            pipe[0] <= d;
            for (i = 1; i < N; i = i + 1) begin
                pipe[i] <= pipe[i-1];
            end
        end
    end

    assign q = pipe[N-1];
endmodule