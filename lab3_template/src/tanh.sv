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


logic signed [13:0] i_x_s;
assign i_x_s = i_x;

// Simple back-pressure: freeze the whole pipeline when downstream is not ready.
assign o_ready = i_ready;
logic pipe_en;
assign pipe_en = i_ready;

// Valid pipeline.  v13 drives o_valid.
logic v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13;

// Stage 0: input register.
logic signed [13:0] s0_x;

// Stage 1: full product for x^2.
logic signed [13:0] s1_x;
(* use_dsp = "yes" *) logic signed [27:0] s1_x2_prod;

// Stage 2: truncated x^2.
logic signed [13:0] s2_x;
logic signed [13:0] s2_x2;

// Stage 3: products for x^3 and p1 numerator.
logic signed [13:0] s3_x;
logic signed [13:0] s3_x2;
(* use_dsp = "yes" *) logic signed [27:0] s3_x3_prod;
(* use_dsp = "yes" *) logic signed [27:0] s3_p1_prod;

// Stage 4: truncated x^3 and p1.
logic signed [13:0] s4_x;
logic signed [13:0] s4_x2;
logic signed [13:0] s4_x3;
logic signed [13:0] s4_p1;

// Stage 5/6: p2 product, then p2 add/truncate.
logic signed [13:0] s5_x;
logic signed [13:0] s5_x2;
logic signed [13:0] s5_x3;
(* use_dsp = "yes" *) logic signed [27:0] s5_p2_prod;

logic signed [13:0] s6_x;
logic signed [13:0] s6_x2;
logic signed [13:0] s6_x3;
logic signed [13:0] s6_p2;

// Stage 7/8: p3 product, then p3 add/truncate.
logic signed [13:0] s7_x;
logic signed [13:0] s7_x2;
logic signed [13:0] s7_x3;
(* use_dsp = "yes" *) logic signed [27:0] s7_p3_prod;

logic signed [13:0] s8_x;
logic signed [13:0] s8_x2;
logic signed [13:0] s8_x3;
logic signed [13:0] s8_p3;

// Stage 9/10: p4 product, then p4 add/truncate.
logic signed [13:0] s9_x;
logic signed [13:0] s9_x3;
(* use_dsp = "yes" *) logic signed [27:0] s9_p4_prod;

logic signed [13:0] s10_x;
logic signed [13:0] s10_x3;
logic signed [13:0] s10_p4;

// Stage 11/12: final product, then final term truncate.
logic signed [13:0] s11_x;
(* use_dsp = "yes" *) logic signed [27:0] s11_term_prod;

logic signed [13:0] s12_x;
logic signed [13:0] s12_term;

// Stage 13: final add.
logic signed [13:0] s13_fx;

always_ff @(posedge clk) begin
    if (rst) begin
        v0  <= 1'b0; v1  <= 1'b0; v2  <= 1'b0; v3  <= 1'b0;
        v4  <= 1'b0; v5  <= 1'b0; v6  <= 1'b0; v7  <= 1'b0;
        v8  <= 1'b0; v9  <= 1'b0; v10 <= 1'b0; v11 <= 1'b0;
        v12 <= 1'b0; v13 <= 1'b0;
        s13_fx <= '0;
    end else if (pipe_en) begin
        // Stage 0: input register.
        s0_x <= i_x_s;
        v0   <= i_valid;

        // Stage 1: x^2 product only.
        s1_x       <= s0_x;
        s1_x2_prod <= s0_x * s0_x;
        v1         <= v0;

        // Stage 2: truncate x^2 back to Q2.12.
        s2_x  <= s1_x;
        s2_x2 <= s1_x2_prod >>> 12;
        v2    <= v1;

        // Stage 3: products only.
        s3_x       <= s2_x;
        s3_x2      <= s2_x2;
        s3_x3_prod <= s2_x2 * s2_x;
        s3_p1_prod <= A4 * s2_x2;
        v3         <= v2;

        // Stage 4: truncate/add.
        s4_x  <= s3_x;
        s4_x2 <= s3_x2;
        s4_x3 <= s3_x3_prod >>> 12;
        s4_p1 <= (s3_p1_prod >>> 12) + A3;
        v4    <= v3;

        // Stage 5: p2 product only.
        s5_x       <= s4_x;
        s5_x2      <= s4_x2;
        s5_x3      <= s4_x3;
        s5_p2_prod <= s4_p1 * s4_x2;
        v5         <= v4;

        // Stage 6: truncate/add p2.
        s6_x  <= s5_x;
        s6_x2 <= s5_x2;
        s6_x3 <= s5_x3;
        s6_p2 <= (s5_p2_prod >>> 12) + A2;
        v6    <= v5;

        // Stage 7: p3 product only.
        s7_x       <= s6_x;
        s7_x2      <= s6_x2;
        s7_x3      <= s6_x3;
        s7_p3_prod <= s6_p2 * s6_x2;
        v7         <= v6;

        // Stage 8: truncate/add p3.
        s8_x  <= s7_x;
        s8_x2 <= s7_x2;
        s8_x3 <= s7_x3;
        s8_p3 <= (s7_p3_prod >>> 12) + A1;
        v8    <= v7;

        // Stage 9: p4 product only.
        s9_x       <= s8_x;
        s9_x3      <= s8_x3;
        s9_p4_prod <= s8_p3 * s8_x2;
        v9         <= v8;

        // Stage 10: truncate/add p4.
        s10_x  <= s9_x;
        s10_x3 <= s9_x3;
        s10_p4 <= (s9_p4_prod >>> 12) + A0;
        v10    <= v9;

        // Stage 11: final product only.
        s11_x         <= s10_x;
        s11_term_prod <= s10_p4 * s10_x3;
        v11           <= v10;

        // Stage 12: truncate final product.
        s12_x    <= s11_x;
        s12_term <= s11_term_prod >>> 12;
        v12      <= v11;

        // Stage 13: final add.
        s13_fx <= s12_term + s12_x;
        v13    <= v12;
    end
end

assign o_valid = v13;
assign o_fx    = s13_fx;
/******* Your code ends here ********/


endmodule