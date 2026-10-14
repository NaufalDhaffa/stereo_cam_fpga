// Stereo matching core: the block meant for tape-out.
//
//   rectified pixel pairs in -> 2 x census -> FIFO -> matcher -> disparity out
//
// Everything that depends on the cameras (capture, rectification, its tables
// and line buffers) stays outside. This block and what it instantiates
// (census.v, matcher.v, mem_1r1w.v) follow the rules of the chip design:
//
//   - one clock, no clock gating, no second clock domain
//   - synchronous reset (rst, high) of every register that decides whether
//     something happens; no initial values anywhere
//   - every memory is a mem_1r1w (one read port, one write port, registered
//     read), never initialised; small register files are flip-flops
//   - no tables or files built in: the settings come in as cfg_* signals
//   - ready/valid at the input, so the sender may be as slow as it likes
//
// Input: the pixels of a frame in raster order, left and right picture
// together. in_sof marks pixel (0, 0); the block counts positions itself and
// after the last pixel feeds FLUSH_ROWS rows of nothing through the census
// to push the last rows out (in_ready is low meanwhile). A pixel is taken in
// a clock with in_valid and in_ready both high.
//
// Output: for every pixel of the frame, in raster order, the disparity in
// 1/16 pixel (0 = no measurement) with a pulse on out_valid, at least SLOT
// clocks apart. There is no back-pressure on the output.
//
// A frame of W x H pixels takes about (W + D + 4) * SLOT * (H + FLUSH_ROWS)
// clocks: 1.44 million for 400 x 296 with 64 disparities.
module stereo_core #(
    parameter W          = 400,
    parameter H          = 296,
    parameter PREFILTER  = 1,
    parameter CENSUS_RY  = 4,
    parameter CENSUS_RX  = 8,
    parameter CENSUS_STEP = 2,
    parameter NBITS      = 44,
    parameter HBOX       = 3,
    parameter LMAX       = 127,
    parameter TBCAP      = 63,
    parameter UNITS      = 8,                   // matcher units, NDISP / 8
    parameter NDISP      = 64,
    parameter FLUSH_ROWS = 6,
    parameter SLOT       = 10,                  // clocks per pixel in the matcher
    parameter GAP        = 4,                   // clocks from one pixel taken to the next (the census needs 4)
    parameter FIFO_AW    = 8                    // FIFO between census and matcher: 2^FIFO_AW pixels
) (
    input  wire        clk,
    input  wire        rst,
    // settings; change them only while idle
    input  wire [5:0]  cfg_dmin,
    input  wire [6:0]  cfg_p1,
    input  wire [6:0]  cfg_p2,
    input  wire [3:0]  cfg_uniq,
    // pixel pairs in
    input  wire        in_valid,
    output wire        in_ready,
    input  wire        in_sof,
    input  wire [7:0]  in_left,
    input  wire        in_left_ok,
    input  wire [7:0]  in_right,
    input  wire        in_right_ok,
    // disparity out
    output wire        out_valid,
    output wire [9:0]  out_y,
    output wire [9:0]  out_x,
    output wire [11:0] out_disp,
    output wire        idle                     // nothing on its way through the block
);
    // ---- position of the next pixel, flush rows -----------------------------
    reg  [9:0] x, y;                            // y = H .. H + FLUSH_ROWS - 1 while flushing
    reg        flushing;
    reg  [2:0] gap;
    reg  [4:0] recent;                          // clocks left in which a pixel may still be inside the census
    wire       room;
    wire       can   = (gap == 3'd0) && room;
    assign     in_ready = can && !flushing && !rst;
    wire       take  = in_valid && in_ready;
    wire       dummy = flushing && can;
    wire       step  = take || dummy;
    wire [9:0] px = (take && in_sof) ? 10'd0 : x;
    wire [9:0] py = (take && in_sof) ? 10'd0 : y;
    wire       row_end = (px == W - 1);

    always @(posedge clk) begin
        if (gap != 3'd0) gap <= gap - 3'd1;
        if (recent != 5'd0) recent <= recent - 5'd1;
        if (step) begin
            gap <= GAP - 1;
            recent <= 5'd31;
            x   <= row_end ? 10'd0 : px + 10'd1;
            if (row_end) begin
                y <= py + 10'd1;
                if (py == H - 1) flushing <= 1'b1;
                if (py == H + FLUSH_ROWS - 1) begin
                    flushing <= 1'b0;
                    y <= 10'd0;
                end
            end else
                y <= py;
        end
        if (rst) begin
            x <= 10'd0;  y <= 10'd0;  flushing <= 1'b0;  gap <= 3'd0;  recent <= 5'd0;
        end
    end

    // ---- census of both pictures ----------------------------------------------
    wire             c0_valid, c0_ok, c1_ok;
    wire [9:0]       c0_y, c0_x;
    wire [NBITS-1:0] c0_sig, c1_sig;
    census #(.W(W), .H(H), .PREFILTER(PREFILTER), .RY(CENSUS_RY), .RX(CENSUS_RX), .STEP(CENSUS_STEP), .NBITS(NBITS)) u_cen0 (
        .clk(clk), .rst(rst), .in_valid(step), .in_y(py), .in_x(px),
        .in_luma(take ? in_left : 8'h00), .in_ok(take && in_left_ok),
        .out_valid(c0_valid), .out_y(c0_y), .out_x(c0_x), .out_census(c0_sig), .out_ok(c0_ok));
    census #(.W(W), .H(H), .PREFILTER(PREFILTER), .RY(CENSUS_RY), .RX(CENSUS_RX), .STEP(CENSUS_STEP), .NBITS(NBITS)) u_cen1 (
        .clk(clk), .rst(rst), .in_valid(step), .in_y(py), .in_x(px),
        .in_luma(take ? in_right : 8'h00), .in_ok(take && in_right_ok),
        .out_valid(), .out_y(), .out_x(), .out_census(c1_sig), .out_ok(c1_ok));

    // ---- FIFO in front of the matcher --------------------------------------------
    // The census runs on while the matcher pauses after every row. The memory
    // has a registered read: it always reads the word the matcher takes next,
    // and a word counts as present one clock after it was written.
    localparam FW = 20 + 2 * NBITS + 2;
    reg  [FIFO_AW:0] f_wp, f_wp_seen, f_rp;
    wire [FW-1:0]    f_q;
    wire             m_ready, m_busy;
    wire             f_none = (f_wp_seen == f_rp);
    wire             m_take = m_ready && !f_none;
    wire [FIFO_AW:0] f_next = f_rp + {{FIFO_AW{1'b0}}, m_take};
    wire [FIFO_AW:0] f_level = f_wp - f_rp;
    assign room = (f_level < (1 << FIFO_AW) - 16);      // pixels still inside the census find a place
    mem_1r1w #(.AW(FIFO_AW), .DW(FW)) u_fifo (
        .clk(clk), .re(1'b1), .raddr(f_next[FIFO_AW-1:0]), .q(f_q),
        .we(c0_valid), .waddr(f_wp[FIFO_AW-1:0]), .wdata({c0_y, c0_x, c0_ok, c0_sig, c1_ok, c1_sig}));
    always @(posedge clk) begin
        if (c0_valid) f_wp <= f_wp + 1'b1;
        f_wp_seen <= f_wp;
        f_rp      <= f_next;
        if (rst) begin
            f_wp <= 0;  f_wp_seen <= 0;  f_rp <= 0;
        end
    end

    // ---- matcher ----------------------------------------------------------------------
    matcher #(.W(W), .H(H), .NBITS(NBITS), .RX(CENSUS_RX), .RY(CENSUS_RY), .HBOX(HBOX),
              .LMAX(LMAX), .TBCAP(TBCAP), .U(UNITS), .D(NDISP), .FLUSH(NDISP + 4), .SLOT(SLOT)) u_match (
        .clk(clk), .rst(rst),
        .cfg_dmin(cfg_dmin), .cfg_p1(cfg_p1), .cfg_p2(cfg_p2), .cfg_uniq(cfg_uniq),
        .in_valid(m_take),
        .in_y(f_q[FW-1 -: 10]), .in_x(f_q[FW-11 -: 10]),
        .in_left(f_q[2*NBITS : NBITS+1]), .in_left_ok(f_q[2*NBITS+1]),
        .in_right(f_q[NBITS-1:0]), .in_right_ok(f_q[NBITS]),
        .out_valid(out_valid), .out_y(out_y), .out_x(out_x), .out_disp(out_disp),
        .busy(m_busy), .in_ready(m_ready));

    assign idle = !flushing && (recent == 5'd0) && (f_wp == f_rp) && f_none && !m_busy;
endmodule
