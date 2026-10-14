// Memory with one read port and one write port on the same clock: the only
// kind of memory the tape-out block (stereo_core) uses.
//
//   read    registered: q shows mem[raddr] one clock after re
//   write   at the clock edge with we
//   both on one address in the same clock: the read returns the old word
//           (nothing in the design depends on it; stated for the macro)
//
// The contents are never initialised and never reset; the logic around it
// does not read a word it has not written since reset, or does not use it.
//
// This file is the behavioural model, which an FPGA tool turns into block or
// distributed RAM. For the chip, replace the body with the SRAM macro of the
// process (or leave it for small ones: they become flip-flops).
module mem_1r1w #(
    parameter AW = 10,
    parameter DW = 8
) (
    input  wire          clk,
    input  wire          re,
    input  wire [AW-1:0] raddr,
    output reg  [DW-1:0] q,
    input  wire          we,
    input  wire [AW-1:0] waddr,
    input  wire [DW-1:0] wdata
);
    reg [DW-1:0] mem [0:(1 << AW) - 1];
    always @(posedge clk) begin
        if (re) q <= mem[raddr];
        if (we) mem[waddr] <= wdata;
    end
endmodule
