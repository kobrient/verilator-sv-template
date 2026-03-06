`ifndef TOP_SV
`define TOP_SV

`include "macros.svh"
`include "gen_funcs.pkg"

module top(
    input logic clk,
    input logic reset
);

logic rst_dly;
`DFF(rst_dly, reset, clk);

////////////////////////////////////////
// DUT /////////////////////////////////
////////////////////////////////////////

dut dut (
    .ck  ( clk     ),
    .rst ( rst_dly )
);

endmodule

`endif // TOP_SV
