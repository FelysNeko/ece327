/*******************************************************/
/* ECE 327/627: Digital Hardware Systems - Spring 2026 */
/* Lab 1 - Part 3                                      */
/* Shift-Left, Add, Subract ALU module                 */
/*******************************************************/

module alu # (
    parameter DATAW = 32 // Bitwidth of ALU operands
)(
    input  clk,                   // Input clock signal
    input  rstn,                  // Active-low reset signal
    input  [DATAW-1:0] i_dataa,   // First operand (A)
    input  [DATAW-1:0] i_datab,   // Second operand (B)
    input  [1:0] i_op,            // Operation code (00: A+B, 01: A-B, 10: A*B, 11: A^2)
    output [DATAW-1:0] o_result   // ALU output
);

// Remember that you are required to register all inputs and outputs of the ALU and use 
// the adder/subtractor module you implemented in Part 2 of this lab.

/******* Your code starts here *******/

logic [DATAW-1:0] r_a, r_b, r_res, res;
logic [1:0]       r_op;

add_sub #(DATAW) add_sub_0 (
    .i_dataa (r_a),
    .i_datab (r_b),
    .i_op (r_op[0]),
    .o_result (r_res)
);


always_ff @(posedge clk) begin
    if (!rstn) begin
        r_a <= 0;
        r_b <= 0;
        r_op <= 0;

        res <= 0;
    end else begin
        r_a <= i_dataa;
        r_b <= i_datab;
        r_op <= i_op;
        
        if (r_op[1] == 1) begin
            if (r_op[0] == 1) begin
                res <= r_a * r_a;
            end else begin
                res <= r_a * r_b;
            end
        end else begin
            res <= r_res;
        end
    end
end

assign o_result = res;

/******* Your code ends here ********/

endmodule