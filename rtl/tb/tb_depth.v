// The whole depth chain against the Python model: raw luma of both cameras
// goes into the line buffers at a camera-like pace (left frame leading by
// GENLOCK_LEAD rows, as the genlock is told to hold it), and the disparity
// coming out is compared with build/golden/match.hex. The byte stream is
// checked too: header, then two bytes per pixel.
`timescale 1ns / 1ps
module tb_depth;
    `include "rect_cfg.vh"
    `include "match_cfg.vh"
    localparam W = IMG_W, H = IMG_H, AW = 16;
    parameter FRAMES = 1;
    // Camera pace of the CIF mode at 24 fps: 99.2 us per line (CLKRC 0x81), 420 lines per frame.
    // 15 fps (CLKRC 0x83) would be LINE_GAP 31600, VBLANK_LINES 40.
    parameter LINE_GAP = 11840;             // capture clocks between the last pixel of a line and the next line
    parameter VBLANK_LINES = 124;
    parameter CLK_HALF = 8;                 // ns: 62.5 MHz processing clock

    reg wclk = 1'b0, clk = 1'b0;
    always #2.5 wclk = ~wclk;
    always #(CLK_HALF) clk = ~clk;

    reg [7:0]  luma0 [0:W*H-1];
    reg [7:0]  luma1 [0:W*H-1];
    reg [11:0] expect [0:W*H-1];

    reg        rst = 1'b1;
    reg        sof0 = 1'b0, en0 = 1'b0, sof1 = 1'b0, en1 = 1'b0;
    reg [7:0]  d0 = 0, d1 = 0;
    wire [AW-1:0] base0, base1, ra0, ra1;
    wire [9:0] gray0, gray1;
    wire       tog0, tog1;
    wire [7:0] q0, q1;
    wire       out_wr, px_valid, overrun;
    wire [7:0] out_byte;
    wire [9:0] px_y, px_x;
    wire [11:0] px_disp;

    rect_linebuf #(.W(W), .LINES(LINES0), .AW(AW)) u_buf0 (
        .wclk(wclk), .wr_sof(sof0), .wr_en(en0), .wr_data(d0), .frame_base(base0), .rows_done(),
        .rows_gray(gray0), .sof_toggle(tog0), .rclk(clk), .rd_addr(ra0), .rd_data(q0));
    rect_linebuf #(.W(W), .LINES(LINES1), .AW(AW)) u_buf1 (
        .wclk(wclk), .wr_sof(sof1), .wr_en(en1), .wr_data(d1), .frame_base(base1), .rows_done(),
        .rows_gray(gray1), .sof_toggle(tog1), .rclk(clk), .rd_addr(ra1), .rd_data(q1));

    depth_core #(.W(W), .H(H), .AW(AW), .LINES0(LINES0), .LINES1(LINES1), .NODES_X(NODES_X),
                 .PREFILTER(PREFILTER), .CENSUS_RY(CENSUS_RY), .CENSUS_RX(CENSUS_RX), .CENSUS_STEP(CENSUS_STEP),
                 .NBITS(CENSUS_BITS), .DMIN(DMIN), .HBOX(HBOX), .SGM_P1(SGM_P1), .SGM_P2(SGM_P2),
                 .LMAX(LMAX), .TBCAP(TBCAP), .UNIQ(UNIQ), .UNITS(UNITS), .NDISP(NDISP)) dut (
        .clk(clk), .rst(rst),
        .rows_gray0(gray0), .rows_gray1(gray1), .sof_toggle0(tog0), .sof_toggle1(tog1),
        .frame_base0(base0), .frame_base1(base1), .rd_addr0(ra0), .rd_addr1(ra1), .rd_data0(q0), .rd_data1(q1),
        .start_us(32'h12345678),
        .out_wr(out_wr), .out_byte(out_byte),
        .px_valid(px_valid), .px_y(px_y), .px_x(px_x), .px_disp(px_disp), .overrun(overrun));

    integer errors = 0, checked = 0, next = 0, nbytes = 0, f0, f1, y0_, x0_, y1_, x1_;
    localparam LINE_CLKS = W * 20 + LINE_GAP;       // capture clocks (200 MHz) per line
    localparam VBLANK = VBLANK_LINES * LINE_CLKS;

    // camera 0 (left)
    initial begin
        $readmemh("cam0_luma.hex", luma0);
        $readmemh("cam1_luma.hex", luma1);
        $readmemh("match.hex", expect);
        repeat (20) @(posedge clk);
        rst <= 1'b0;
        repeat (400) @(posedge wclk);
        for (f0 = 0; f0 < FRAMES; f0 = f0 + 1) begin
            @(posedge wclk) sof0 <= 1'b1;
            @(posedge wclk) sof0 <= 1'b0;
            for (y0_ = 0; y0_ < H; y0_ = y0_ + 1) begin
                for (x0_ = 0; x0_ < W; x0_ = x0_ + 1) begin
                    @(posedge wclk); en0 <= 1'b1; d0 <= luma0[y0_ * W + x0_];
                    @(posedge wclk) en0 <= 1'b0;
                    repeat (18) @(posedge wclk);
                end
                repeat (LINE_GAP) @(posedge wclk);
            end
            repeat (VBLANK) @(posedge wclk);        // vertical blanking
        end
    end

    // camera 1 (right), GENLOCK_LEAD rows later
    initial begin
        repeat (20) @(posedge clk);
        repeat (400) @(posedge wclk);
        for (f1 = 0; f1 < FRAMES; f1 = f1 + 1) begin
            if (GENLOCK_LEAD > 0) repeat (GENLOCK_LEAD * LINE_CLKS) @(posedge wclk);
            @(posedge wclk) sof1 <= 1'b1;
            @(posedge wclk) sof1 <= 1'b0;
            for (y1_ = 0; y1_ < H; y1_ = y1_ + 1) begin
                for (x1_ = 0; x1_ < W; x1_ = x1_ + 1) begin
                    @(posedge wclk); en1 <= 1'b1; d1 <= luma1[y1_ * W + x1_];
                    @(posedge wclk) en1 <= 1'b0;
                    repeat (18) @(posedge wclk);
                end
                repeat (LINE_GAP) @(posedge wclk);
            end
            repeat (VBLANK - GENLOCK_LEAD * LINE_CLKS) @(posedge wclk);
        end
    end

    always @(posedge clk) if (out_wr) nbytes = nbytes + 1;

    // how long a row takes when it does not have to wait for the camera, against the camera's line time
    integer t_wait = 0, row_clks = 0, row_max = 0, waited = 0;
    always @(posedge clk) begin
        row_clks = row_clks + 1;
        if (dut.st == 3'd1 && dut.settle == 2'd3 && dut.drained && !(dut.rows0 >= dut.n0 && dut.rows1 >= dut.n1)) waited = 1;
        if (dut.row_start) begin
            if (!waited && dut.y > 1 && row_clks > row_max) row_max = row_clks;
            if (waited) t_wait = t_wait + 1;
            row_clks = 0;  waited = 0;
        end
    end

    always @(posedge clk) begin
        if (px_valid) begin
            if (px_y * W + px_x !== next) begin
                errors = errors + 1;
                if (errors <= 10) $display("order: got (%0d,%0d), expected index %0d", px_y, px_x, next);
            end else if (px_disp !== expect[next]) begin
                errors = errors + 1;
                if (errors <= 10) $display("mismatch (%0d,%0d): got %0d, expected %0d", px_y, px_x, px_disp, expect[next]);
            end
            checked = checked + 1;
            next = (next == W * H - 1) ? 0 : next + 1;
        end
    end

    // the verdict, once every pixel has come out
    initial begin
        wait (checked == FRAMES * W * H);
        repeat (40) @(posedge clk);
        if (errors == 0 && !overrun && nbytes == FRAMES * (32 + 2 * W * H))
            $display("PASS: %0d pixels identical, %0d bytes out", checked, nbytes);
        else
            $display("FAIL: %0d mismatches in %0d pixels, %0d bytes out (expected %0d), overrun %0d",
                     errors, checked, nbytes, FRAMES * (32 + 2 * W * H), overrun);
        $display("rows that waited for the camera: %0d of %0d; a camera line is %0d processing clocks, the longest row that did not wait took %0d",
                 t_wait, FRAMES * H, LINE_CLKS * 5 / (2 * CLK_HALF), row_max);
        $finish;
    end
    initial begin
        #(FRAMES * 100000000 + 300000000);          // something is stuck
        $display("FAIL: timeout after %0d pixels (scheduler state %0d, row %0d)", checked, dut.st, dut.y);
        $finish;
    end
endmodule
