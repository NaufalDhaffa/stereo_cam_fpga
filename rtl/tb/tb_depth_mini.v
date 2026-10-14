// The depth chain with the chained matcher mini (depth_mini.v) against the Python model:
// as tb_depth, but the raw luma is binned 2 x 2 first, the camera runs at 15 fps and the
// processing clock at 25 MHz. Vectors: python -m stereo.golden <rec> <pair> --profile mini --out build/golden_minisys
//
// (tb_depth says:) The whole depth chain against the Python model: raw luma of both cameras
// goes into the line buffers at a camera-like pace (left frame leading by
// GENLOCK_LEAD rows, as the genlock is told to hold it), and the disparity
// coming out is compared with build/golden/match.hex. The byte stream is
// checked too: header, then two bytes per pixel.
`timescale 1ns / 1ps
module tb_depth_mini;
    `include "rect_cfg.vh"
    `include "match_cfg.vh"
    localparam W = IMG_W, H = IMG_H, AW = 16, RW = RAW_W, RH = RAW_H;
    parameter FRAMES = 1;
    parameter UVC = 0;                      // 1: check the webcam payloads instead of the PC tools' bytes
    // Camera pace of the CIF mode at 24 fps: 99.2 us per line (CLKRC 0x81), 420 lines per frame.
    // 15 fps (CLKRC 0x83) would be LINE_GAP 31600, VBLANK_LINES 40.
    parameter LINE_GAP = 31680;             // capture clocks between the last pixel of a line and the next line: 198.4 us lines
    parameter VBLANK_LINES = 40;
    parameter CLK_HALF = 20;                // ns: 25 MHz processing clock

    reg wclk = 1'b0, clk = 1'b0;
    always #2.5 wclk = ~wclk;
    always #(CLK_HALF) clk = ~clk;

    reg [7:0]  luma0 [0:RW*RH-1];
    reg [7:0]  luma1 [0:RW*RH-1];
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

    wire b0_sof, b0_en, b1_sof, b1_en;
    wire [7:0] b0_d, b1_d;
    luma_bin2 #(.W(RW)) u_bin0 (.clk(wclk), .in_sof(sof0), .in_en(en0), .in_data(d0), .out_sof(b0_sof), .out_en(b0_en), .out_data(b0_d));
    luma_bin2 #(.W(RW)) u_bin1 (.clk(wclk), .in_sof(sof1), .in_en(en1), .in_data(d1), .out_sof(b1_sof), .out_en(b1_en), .out_data(b1_d));
    rect_linebuf #(.W(W), .LINES(LINES0 + 2), .AW(AW)) u_buf0 (
        .wclk(wclk), .wr_sof(b0_sof), .wr_en(b0_en), .wr_data(b0_d), .frame_base(base0), .rows_done(),
        .rows_gray(gray0), .sof_toggle(tog0), .rclk(clk), .rd_addr(ra0), .rd_data(q0));
    rect_linebuf #(.W(W), .LINES(LINES1 + 2), .AW(AW)) u_buf1 (
        .wclk(wclk), .wr_sof(b1_sof), .wr_en(b1_en), .wr_data(b1_d), .frame_base(base1), .rows_done(),
        .rows_gray(gray1), .sof_toggle(tog1), .rclk(clk), .rd_addr(ra1), .rd_data(q1));

    wire [7:0] chain_n;
    wire       out_last;
    depth_mini #(.W(W), .H(H), .AW(AW), .LINES0(LINES0 + 2), .LINES1(LINES1 + 2), .NODES_X(NODES_X),
                 .PREFILTER(PREFILTER), .CENSUS_RY(CENSUS_RY), .CENSUS_RX(CENSUS_RX), .CENSUS_STEP(CENSUS_STEP),
                 .NBITS(CENSUS_BITS), .DMIN(DMIN), .SGM_P1(SGM_P1), .SGM_P2(SGM_P2), .UNIQ(UNIQ), .SLICES(SLICES)) dut (
        .clk(clk), .rst(rst),
        .rows_gray0(gray0), .rows_gray1(gray1), .sof_toggle0(tog0), .sof_toggle1(tog1),
        .frame_base0(base0), .frame_base1(base1), .rd_addr0(ra0), .rd_addr1(ra1), .rd_data0(q0), .rd_data1(q1),
        .start_us(32'h12345678),
        .uvc(UVC[0]), .out_room(1'b1),
        .out_wr(out_wr), .out_byte(out_byte), .out_last(out_last),
        .px_valid(px_valid), .px_y(px_y), .px_x(px_x), .px_disp(px_disp), .overrun(overrun), .chain_n(chain_n), .dbg());

    integer errors = 0, checked = 0, next = 0, nbytes = 0, f0, f1, y0_, x0_, y1_, x1_;
    localparam LINE_CLKS = RW * 20 + LINE_GAP;       // capture clocks (200 MHz) per line
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
            for (y0_ = 0; y0_ < RH; y0_ = y0_ + 1) begin
                for (x0_ = 0; x0_ < RW; x0_ = x0_ + 1) begin
                    @(posedge wclk); en0 <= 1'b1; d0 <= luma0[y0_ * RW + x0_];
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
            if (GENLOCK_LEAD > 0) repeat (GENLOCK_LEAD * BIN * LINE_CLKS) @(posedge wclk);
            @(posedge wclk) sof1 <= 1'b1;
            @(posedge wclk) sof1 <= 1'b0;
            for (y1_ = 0; y1_ < RH; y1_ = y1_ + 1) begin
                for (x1_ = 0; x1_ < RW; x1_ = x1_ + 1) begin
                    @(posedge wclk); en1 <= 1'b1; d1 <= luma1[y1_ * RW + x1_];
                    @(posedge wclk) en1 <= 1'b0;
                    repeat (18) @(posedge wclk);
                end
                repeat (LINE_GAP) @(posedge wclk);
            end
            repeat (VBLANK - GENLOCK_LEAD * BIN * LINE_CLKS) @(posedge wclk);
        end
    end

    // webcam mode: every row is one payload: 2 header bytes, the left row, the disparity row
    reg [11:0] rect0 [0:W*H-1];
    initial $readmemh("cam0_rect.hex", rect0);
    integer ub = 0, urow = 0, urows = 0, uerr = 0;
    reg     ufid = 1'b0;
    reg [7:0] uy = 8'h00;
    task ubad;
        input [255:0] what;
        begin
            uerr = uerr + 1;
            if (uerr <= 10) $display("payload row %0d byte %0d: %0s (got %h)", urow, ub, what, out_byte);
        end
    endtask
    always @(posedge clk) if (UVC && out_wr) begin
        if (ub == 0) begin
            if (out_byte !== 8'h02) ubad("header length");
        end else if (ub == 1) begin
            if (out_byte !== {6'b100000, (urow == H - 1), ufid}) ubad("header flags");
        end else if (ub < 2 + 2 * W) begin
            if (ub[0] == 1'b0) begin
                if (out_byte !== rect0[urow * W + (ub - 2) / 2][7:0]) ubad("left luma");
            end else if (out_byte !== 8'h80) ubad("left colour byte");
        end else begin
            if (ub[0] == 1'b0) uy = out_byte;
            else if (out_byte[7:2] !== 6'b100000 || {uy, out_byte[1:0]} !== expect[urow * W + (ub - 2 - 2 * W) / 2][9:0]) ubad("disparity");
        end
        if (out_last !== (ub == 1 + 4 * W)) ubad("end mark");
        if (ub == 1 + 4 * W) begin
            ub = 0;  urows = urows + 1;
            if (urow == H - 1) begin urow = 0; ufid = ~ufid; end else urow = urow + 1;
        end else
            ub = ub + 1;
    end

    always @(posedge clk) if (out_wr) nbytes = nbytes + 1;

    integer t_first = 0, t_last = 0;
    always @(posedge clk) if (px_valid) begin
        if (checked == 0) t_first = $time;
        t_last = $time;
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
        if (UVC) wait (urows == FRAMES * H);
        repeat (40) @(posedge clk);
        if (errors == 0 && uerr == 0 && !overrun && nbytes == FRAMES * (UVC ? H * (2 + 4 * W) : 32 + 2 * W * H))
            $display("PASS: %0d pixels identical, %0d bytes out", checked, nbytes);
        else
            $display("FAIL: %0d mismatches in %0d pixels, %0d payload errors, %0d bytes out (expected %0d), overrun %0d",
                     errors, checked, uerr, nbytes, FRAMES * (UVC ? H * (2 + 4 * W) : 32 + 2 * W * H), overrun);
        if (UVC) $display("webcam mode: %0d payloads (rows) of %0d bytes checked: header, left row, disparity row, end mark", urows, 2 + 4 * W);
        $display("chain of %0d slices; first to last pixel %0d us for %0d pictures; a camera frame is %0d us",
                 chain_n, (t_last - t_first) / 1000, FRAMES, (RH + VBLANK_LINES) * LINE_CLKS / 200);
        $finish;
    end
    initial begin
        #(FRAMES * 150000000 + 300000000);          // something is stuck
        $display("FAIL: timeout after %0d pixels (scheduler state %0d, row %0d, FIFO %0d, overrun %0d)", checked, dut.u_front.st, dut.u_front.y, dut.u_front.f_level, overrun);
        $finish;
    end
endmodule
