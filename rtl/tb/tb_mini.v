// The chained matcher mini (hub + SLICES x mini_slice) against the Python model.
// Input: the model's census of both cameras; every disparity that leaves the
// hub is compared with match.hex, which host/stereo/chain.py made for one
// matcher of 16 x SLICES disparities and one SGM direction. Nothing in the
// slices has an initial value.
`timescale 1ns / 1ps
module tb_mini;
    `include "mini_cfg.vh"
    localparam W = IMG_W, H = IMG_H;
    parameter ROWS = H;                     // fewer rows for a quick look

    reg clk = 1'b0;
    always #50 clk = ~clk;                  // 10 MHz

    reg [47:0] cen0 [0:W*H-1];
    reg [47:0] cen1 [0:W*H-1];
    reg [11:0] expect [0:W*H-1];

    reg         rst = 1'b1;
    reg         in_valid = 1'b0;
    wire        in_ready, out_valid, hub_idle;
    wire [7:0]  dl, chain_n;
    wire [9:0]  out_y, out_x;
    wire [11:0] out_disp;
    integer     pix = 0, errors = 0, checked = 0, next = 0, nonzero = 0;

    wire [7:0] link [0:SLICES];
    assign link[0] = 8'h00;
    genvar p;
    generate
        for (p = 0; p < SLICES; p = p + 1) begin : g_slice
            // through the Tiny Tapeout top, as the chip will be
            tt_um_stereo_slice u (.ui_in(dl), .uo_out(link[p + 1]), .uio_in(link[p]), .uio_out(), .uio_oe(),
                                  .ena(1'b1), .clk(clk), .rst_n(!rst));
        end
    endgenerate

    mini_hub #(.N(SLICES), .W(W), .H(H), .NBITS(CENSUS_BITS), .DMIN(DMIN), .P1(SGM_P1), .P2(SGM_P2), .UNIQ(UNIQ),
               .RX(CENSUS_RX), .RY(CENSUS_RY)) hub (
        .clk(clk), .rst(rst), .in_valid(in_valid), .in_ready(in_ready),
        .in_left(cen0[pix][CENSUS_BITS-1:0]), .in_left_ok(cen0[pix][CENSUS_BITS]),
        .in_right(cen1[pix][CENSUS_BITS-1:0]), .in_right_ok(cen1[pix][CENSUS_BITS]),
        .dl(dl), .ul(link[SLICES]),
        .out_valid(out_valid), .out_y(out_y), .out_x(out_x), .out_disp(out_disp), .chain_n(chain_n), .frame_start(), .dbg_st(), .idle(hub_idle));

    initial begin
        $readmemh("cam0_census.hex", cen0);
        $readmemh("cam1_census.hex", cen1);
        $readmemh("match.hex", expect);
        repeat (20) @(posedge clk);
        rst <= 1'b0;
        in_valid <= 1'b1;
        wait (checked == ROWS * W);
        repeat (10) @(posedge clk);
        if (errors == 0 && chain_n == SLICES)
            $display("PASS: %0d pixels identical, %0d of them with a disparity; chain of %0d x 16, %0d clocks per pixel slot",
                     checked, nonzero, chain_n, hub.T);
        else
            $display("FAIL: %0d mismatches in %0d pixels, chain numbered %0d of %0d", errors, checked, chain_n, SLICES);
        $finish;
    end
    always @(posedge clk) if (in_valid && in_ready) pix <= pix + 1;

    always @(posedge clk) if (out_valid) begin
        checked = checked + 1;
        if (expect[next] != 0) nonzero = nonzero + 1;
        if (out_y * W + out_x !== next) begin
            errors = errors + 1;
            if (errors <= 10) $display("order: got (%0d,%0d), expected index %0d", out_y, out_x, next);
        end else if (out_disp !== expect[next]) begin
            errors = errors + 1;
            if (errors <= 10) $display("mismatch (%0d,%0d): got %0d, expected %0d", out_y, out_x, out_disp, expect[next]);
        end
        next = next + 1;
    end
endmodule
