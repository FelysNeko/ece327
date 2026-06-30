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
logic r_o_valid;
logic r_i_valid; 
logic signed [13:0] r_o_fx;
logic signed [13:0] fx;
logic signed [13:0] r_i_x;

logic signed [13:0] x_squared;
logic signed [13:0] x_cubed;
logic signed [13:0] p1, p2, p3, p4;

logic signed [27:0] mult_x2;
logic signed [27:0] mult_x3;
logic signed [27:0] mult1, mult2, mult3, mult4, mult5;

always_comb begin
    // x_squared = x * x
    // Q2.12 * Q2.12 = Q4.24, so >>> 12 brings it back to Q2.12
    mult_x2  = r_i_x * r_i_x;
    x_squared = mult_x2 >>> 12;

    // x_cubed = x_squared * x
    mult_x3 = x_squared * r_i_x;
    x_cubed = mult_x3 >>> 12;

    // Horner chain:
    // ((((A4*x^2 + A3)*x^2 + A2)*x^2 + A1)*x^2 + A0)*x^3 + x

    mult1 = A4 * x_squared;
    p1 = (mult1 >>> 12) + A3;

    mult2 = p1 * x_squared;
    p2 = (mult2 >>> 12) + A2;

    mult3 = p2 * x_squared;
    p3 = (mult3 >>> 12) + A1;

    mult4 = p3 * x_squared;
    p4 = (mult4 >>> 12) + A0;

    mult5 = p4 * x_cubed;
    fx = (mult5 >>> 12) + r_i_x;
end

always_ff @(posedge clk) begin
    if (rst) begin
        r_o_valid <= 1'b0;
        r_i_valid <= 1'b0;
        r_o_fx    <= '0;
        r_i_x     <= '0;
    end else if (i_ready) begin
        r_i_x     <= i_x;
        r_i_valid <= i_valid;
        r_o_valid <= r_i_valid;
        r_o_fx    <= fx;
    end
end

assign o_valid = r_o_valid;
assign o_ready = i_ready;
assign o_fx    = r_o_fx;
/******* Your code ends here ********/


endmodule