// Smoothing + census against the Python model, on one recorded frame.
// Input is the model's rectified luma (cam<N>_rect.hex), so this checks the
// census block alone; two frames in a row, to catch state left over.
`timescale 1ns / 1ps
module tb_census;
    parameter CAM = 0;
    `include "rect_cfg.vh"
    localparam W = IMG_W, H = IMG_H, FLUSH = 6;

    reg clk = 1'b0;
    always #5 clk = ~clk;

    reg [11:0] rect   [0:W*H-1];
    reg [47:0] expect [0:W*H-1];

    reg        rst = 1'b1;
    reg        in_valid = 1'b0;
    reg [9:0]  in_y = 0, in_x = 0;
    reg [7:0]  in_luma = 0;
    reg        in_ok = 1'b0;
    wire       out_valid, out_ok;
    wire [9:0] out_y, out_x;
    wire [CENSUS_BITS-1:0] out_census;

    census #(.W(W), .H(H), .PREFILTER(PREFILTER), .RY(CENSUS_RY), .RX(CENSUS_RX),
             .STEP(CENSUS_STEP), .NBITS(CENSUS_BITS)) dut (
        .clk(clk), .rst(rst), .in_valid(in_valid), .in_y(in_y), .in_x(in_x), .in_luma(in_luma), .in_ok(in_ok),
        .out_valid(out_valid), .out_y(out_y), .out_x(out_x), .out_census(out_census), .out_ok(out_ok));

    integer frame, yy, xx, errors = 0, checked = 0, next = 0;

    initial begin
        if (CAM == 0) begin $readmemh("cam0_rect.hex", rect); $readmemh("cam0_census.hex", expect); end
        else          begin $readmemh("cam1_rect.hex", rect); $readmemh("cam1_census.hex", expect); end
        repeat (4) @(posedge clk);
        rst <= 1'b0;
        for (frame = 0; frame < 2; frame = frame + 1) begin
            next = 0;
            for (yy = 0; yy < H + FLUSH; yy = yy + 1)
                for (xx = 0; xx < W; xx = xx + 1) begin
                    @(posedge clk);
                    in_valid <= 1'b1; in_y <= yy; in_x <= xx;
                    in_luma  <= (yy < H) ? rect[yy * W + xx][7:0] : 8'hA5;      // flush rows carry junk
                    in_ok    <= (yy < H) ? rect[yy * W + xx][8]   : 1'b1;
                    @(posedge clk) in_valid <= 1'b0;
                    repeat (6) @(posedge clk);                                  // one pixel per 8 clocks
                end
            repeat (20) @(posedge clk);
            $display("frame %0d: %0d pixels checked, %0d mismatches so far", frame, checked, errors);
        end
        if (errors == 0 && checked == 2 * W * H) $display("PASS cam%0d: %0d pixels identical", CAM, checked);
        else $display("FAIL cam%0d: %0d mismatches in %0d pixels", CAM, errors, checked);
        $finish;
    end

    always @(posedge clk) if (out_valid) begin
        checked = checked + 1;
        if (out_y * W + out_x !== next) begin
            errors = errors + 1;
            if (errors <= 12) $display("order: got (%0d,%0d), expected index %0d", out_y, out_x, next);
        end else if ({out_ok, out_census} !== expect[next][CENSUS_BITS:0]) begin
            errors = errors + 1;
            if (errors <= 12)
                $display("mismatch (%0d,%0d): got %0d/%h, expected %0d/%h", out_y, out_x, out_ok, out_census,
                         expect[next][CENSUS_BITS], expect[next][CENSUS_BITS-1:0]);
        end
        next = next + 1;
    end
endmodule
