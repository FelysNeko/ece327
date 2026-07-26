/***************************************************/
/* ECE 327: Digital Hardware Systems - Spring 2026 */
/* Lab 4                                           */
/* Accumulator Module                              */
/***************************************************/

module accum # (
    parameter DATAW = 32,
    parameter ACCUMW = 32
)(
    input  clk,
    input  rst,
    input  signed [DATAW-1:0] data,
    input  ivalid,
    input  first,
    input  last,
    output signed [ACCUMW-1:0] result,
    output ovalid
);

/******* Your code starts here *******/

logic signed [ACCUMW-1:0] data_ext;
logic valid_d;
logic last_d;
logic ovalid_reg;

generate
    if (ACCUMW >= DATAW) begin : gen_data_extend
        assign data_ext = {{(ACCUMW-DATAW){data[DATAW-1]}}, data};
    end else begin : gen_data_truncate
        assign data_ext = data[ACCUMW-1:0];
    end
endgenerate

// The C and OPMODE inputs are registered inside the DSP. One cycle later,
// valid_d enables PREG and last_d identifies a completed accumulation.
always_ff @(posedge clk) begin
    if (rst) begin
        valid_d    <= 1'b0;
        last_d     <= 1'b0;
        ovalid_reg <= 1'b0;
    end else begin
        valid_d    <= ivalid;
        last_d     <= last;
        ovalid_reg <= valid_d && last_d;
    end
end

`ifndef XILINX_SIMULATOR
    wire signed [47:0] c_ext;
    wire signed [47:0] p_full;
    wire [8:0] accum_opmode;

    assign c_ext = {{(48-ACCUMW){data_ext[ACCUMW-1]}}, data_ext};

    // first=1: P = C
    // first=0: P = P + C
    assign accum_opmode = first ? 9'b000110000 : 9'b000101100;

    DSP48E2 #(
        .ACASCREG(0),
        .ADREG(0),
        .ALUMODEREG(0),
        .AREG(0),
        .BCASCREG(0),
        .BREG(0),
        .CARRYINREG(0),
        .CARRYINSELREG(0),
        .CREG(1),
        .DREG(0),
        .INMODEREG(0),
        .MREG(0),
        .OPMODEREG(1),
        .PREG(1),
        .A_INPUT("DIRECT"),
        .B_INPUT("DIRECT"),
        .PREADDINSEL("A"),
        .AMULTSEL("A"),
        .BMULTSEL("B"),
        .USE_MULT("NONE"),
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
    ) dsp_accum_i (
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

        .A(30'd0),
        .ACIN(30'd0),
        .ALUMODE(4'b0000),
        .B(18'd0),
        .BCIN(18'd0),
        .C(c_ext),
        .CARRYCASCIN(1'b0),
        .CARRYIN(1'b0),
        .CARRYINSEL(3'b000),
        .CLK(clk),
        .D(27'd0),
        .INMODE(5'b00000),
        .OPMODE(accum_opmode),
        .PCIN(48'd0),
        .MULTSIGNIN(1'b0),

        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b1),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(ivalid),
        .CECARRYIN(1'b1),
        .CECTRL(ivalid),
        .CED(1'b0),
        .CEINMODE(1'b1),
        .CEM(1'b0),
        .CEP(valid_d),

        // first=1 initializes P before it can be observed, so the large DSP
        // datapath does not need a global reset network.
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

    assign result = p_full[ACCUMW-1:0];
`else
    // One-cycle behavioral model of the CREG/OPMODEREG -> PREG datapath.
    logic signed [ACCUMW-1:0] data_d;
    logic first_d;
    logic signed [ACCUMW-1:0] accum_sim;

    always_ff @(posedge clk) begin
        data_d  <= data_ext;
        first_d <= first;

        if (valid_d) begin
            if (first_d) begin
                accum_sim <= data_d;
            end else begin
                accum_sim <= accum_sim + data_d;
            end
        end
    end

    assign result = accum_sim;
`endif

assign ovalid = ovalid_reg;

/******* Your code ends here ********/

endmodule
