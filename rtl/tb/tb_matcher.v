// Matcher against the Python model, on one recorded frame.
// Input is the model's census of both cameras (cam<N>_census.hex); every
// output pixel is compared with build/golden/match.hex (the disparity chosen
// by pick(), before the median and speckle filters).
`timescale 1ns / 1ps
module tb_matcher;
    `include "rect_cfg.vh"
    `include "match_cfg.vh"
    localparam W = IMG_W, H = IMG_H, FLUSH = NDISP + 4;
    parameter ROWS = H;                     // fewer rows for a quick look

    reg clk = 1'b0;
    always #5 clk = ~clk;

    reg [47:0] cen0 [0:W*H-1];
    reg [47:0] cen1 [0:W*H-1];
    reg [11:0] expect [0:W*H-1];

    reg         rst = 1'b1, offer = 1'b0;
    reg [9:0]   in_y = 0, in_x = 0;
    reg [CENSUS_BITS-1:0] in_left = 0, in_right = 0;
    reg         in_left_ok = 1'b0, in_right_ok = 1'b0;
    wire        out_valid, busy, in_ready;
    wire        in_valid = offer && in_ready;      // like a FIFO with a word waiting
    wire [9:0]  out_y, out_x;
    wire [11:0] out_disp;

    wire [5:0] c_dmin = DMIN;
    wire [6:0] c_p1 = SGM_P1, c_p2 = SGM_P2;
    wire [3:0] c_uniq = UNIQ;

    matcher #(.W(W), .H(H), .NBITS(CENSUS_BITS), .RX(CENSUS_RX), .RY(CENSUS_RY), .HBOX(HBOX),
              .LMAX(LMAX), .TBCAP(TBCAP), .U(UNITS), .D(NDISP), .FLUSH(FLUSH)) dut (
        .clk(clk), .rst(rst), .cfg_dmin(c_dmin), .cfg_p1(c_p1), .cfg_p2(c_p2), .cfg_uniq(c_uniq), .in_valid(in_valid), .in_y(in_y), .in_x(in_x),
        .in_left(in_left), .in_left_ok(in_left_ok), .in_right(in_right), .in_right_ok(in_right_ok),
        .out_valid(out_valid), .out_y(out_y), .out_x(out_x), .out_disp(out_disp), .busy(busy), .in_ready(in_ready));

    integer yy, xx, errors = 0, checked = 0, next = 0, nonzero = 0;

    initial begin
        $readmemh("cam0_census.hex", cen0);
        $readmemh("cam1_census.hex", cen1);
        $readmemh("match.hex", expect);
        repeat (20) @(posedge clk);
        rst <= 1'b0;
        // the pixels are offered one after the other and taken when the block is ready,
        // as the FIFO in front of it does
        for (yy = 0; yy < ROWS; yy = yy + 1)
            for (xx = 0; xx < W; xx = xx + 1) begin
                offer <= 1'b1;
                in_y <= yy; in_x <= xx;
                in_left  <= cen0[yy * W + xx][CENSUS_BITS-1:0]; in_left_ok  <= cen0[yy * W + xx][CENSUS_BITS];
                in_right <= cen1[yy * W + xx][CENSUS_BITS-1:0]; in_right_ok <= cen1[yy * W + xx][CENSUS_BITS];
                @(posedge clk);                             // the word is on offer from here on
                @(posedge clk);
                while (!in_ready) @(posedge clk);           // in_ready as it was in the clock just ended: taken at this edge
            end
        offer <= 1'b0;
        repeat (40) @(posedge clk);
        while (busy) @(posedge clk);
        repeat (40) @(posedge clk);
        if (errors == 0 && checked == ROWS * W)
            $display("PASS: %0d pixels identical, %0d of them with a disparity", checked, nonzero);
        else
            $display("FAIL: %0d mismatches in %0d pixels (%0d expected)", errors, checked, ROWS * W);
        $finish;
    end

    always @(posedge clk) if (out_valid) begin
        checked = checked + 1;
        if (expect[next] != 0) nonzero = nonzero + 1;
        if (out_y * W + out_x !== next) begin
            errors = errors + 1;
            if (errors <= 10) $display("order: got (%0d,%0d), expected index %0d", out_y, out_x, next);
        end else if (out_disp !== expect[next]) begin
            errors = errors + 1;
            if (errors <= 10)
                $display("mismatch (%0d,%0d): got %0d, expected %0d", out_y, out_x, out_disp, expect[next]);
        end
        next = next + 1;
    end
endmodule
