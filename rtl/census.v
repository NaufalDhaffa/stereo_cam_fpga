// Luma smoothing and census signature of one camera, as a pixel stream.
// Bit-exact counterpart of binomial3(), census() and window_ok() in
// host/stereo/disparity.py.
//
// Input: the rectified pixels of a frame in raster order, row 0 first, each
// with its position, then FLUSH more rows of anything (in_y = H ..) to push
// the last rows through. Pixels may come at any spacing of 4 clocks or more.
//
//   smoothing  3 x 3 with weights 1-2-1 both ways, edges repeated
//              (PREFILTER = 0 leaves it out)
//   census     one bit per compared neighbour, "neighbour darker than
//              centre", neighbours every STEP pixels within +-RY rows and
//              +-RX columns, row by row, the first comparison in the top bit
//   valid      every pixel of the full (2 RY + 1) x (2 RX + 1) window was a
//              valid rectified pixel
//
// Part of the tape-out block (stereo_core): one clock, synchronous reset of
// everything that decides whether something happens, memories through
// mem_1r1w, no initial values. Data registers and memory contents are not
// reset: nothing reads them before they are written.
//
// Census and valid are 0 wherever the window leaves the picture. The output
// is the input delayed by RY rows + RX pixels (plus one row and one pixel
// with smoothing), again in raster order with its position.
module census #(
    parameter W         = 800,
    parameter H         = 600,
    parameter PREFILTER = 1,
    parameter RY        = 4,
    parameter RX        = 8,
    parameter STEP      = 2,
    parameter NBITS     = 44                // ((2 RY / STEP + 1) * (2 RX / STEP + 1)) - 1
) (
    input  wire             clk,
    input  wire             rst,
    input  wire             in_valid,
    input  wire [9:0]       in_y,
    input  wire [9:0]       in_x,
    input  wire [7:0]       in_luma,
    input  wire             in_ok,

    output reg              out_valid,
    output reg  [9:0]       out_y,
    output reg  [9:0]       out_x,
    output reg  [NBITS-1:0] out_census,
    output reg              out_ok
);
    localparam ROWS = 2 * RY + 1;           // 9
    localparam COLS = 2 * RX + 1;           // 17
    localparam XAW  = $clog2(W);            // address bits of the per-column memories

    // ---- smoothing along the row: one pixel late -------------------------
    reg [7:0] g1, g2;
    reg       ok1, seen;
    reg [9:0] y1, x1;
    reg       h_valid;
    reg [7:0] h;
    reg       h_ok;
    reg [9:0] h_y, h_x;
    wire [7:0]  left  = (x1 == 10'd0)  ? g1 : g2;       // edge pixels are repeated
    wire [7:0]  right = (x1 == W - 1)  ? g1 : in_luma;
    wire [9:0]  hsum  = left + {g1, 1'b0} + right + 10'd2;

    always @(posedge clk) begin
        h_valid <= 1'b0;
        if (in_valid) begin
            g1 <= in_luma;  g2 <= g1;
            ok1 <= in_ok;   y1 <= in_y;  x1 <= in_x;
            seen <= 1'b1;
            if (in_y == 10'd0 && in_x == 10'd0)
                seen <= 1'b1;                           // first pixel of a frame: nothing to finish
            else if (seen) begin
                h_valid <= 1'b1;
                h   <= hsum[9:2];
                h_ok <= ok1;
                h_y <= y1;  h_x <= x1;
            end
        end
        if (rst) begin
            h_valid <= 1'b0;
            seen    <= 1'b0;
        end
    end

    // ---- smoothing down the column: one row late -------------------------
    wire [16:0] vq;                                         // per column: {ok, row above, two rows above}
    reg        h_valid_d;
    reg        v_valid;
    reg [7:0]  v;
    reg        v_ok;
    reg [9:0]  v_y, v_x;
    wire [7:0] up2 = vq[7:0], up1 = vq[15:8];
    wire [7:0] top = (h_y == 10'd1) ? up1 : up2;
    wire [7:0] bot = (h_y >= H)     ? up1 : h;
    wire [9:0] vsum = top + {up1, 1'b0} + bot + 10'd2;

    always @(posedge clk) begin
        h_valid_d <= h_valid;
        v_valid   <= 1'b0;
        if (h_valid_d) begin
            if (h_y != 10'd0) begin
                v_valid <= 1'b1;
                v_y  <= h_y - 10'd1;
                v_x  <= h_x;
                v    <= vsum[9:2];
                v_ok <= vq[16] && (h_y <= H);           // rows past the picture are never valid
            end
        end
        if (rst) begin
            h_valid_d <= 1'b0;
            v_valid   <= 1'b0;
        end
    end
    mem_1r1w #(.AW(XAW), .DW(17)) u_vram (
        .clk(clk), .re(h_valid), .raddr(h_x[XAW-1:0]), .q(vq),
        .we(h_valid_d), .waddr(h_x[XAW-1:0]), .wdata({h_ok, h, up1}));

    // ---- stream into the census: smoothed or not ---------------------------
    wire       s_valid = PREFILTER ? v_valid : in_valid;
    wire [9:0] s_y     = PREFILTER ? v_y     : in_y;
    wire [9:0] s_x     = PREFILTER ? v_x     : in_x;
    wire [7:0] s_luma  = PREFILTER ? v       : in_luma;
    wire       s_ok    = PREFILTER ? v_ok    : (in_ok && in_y < H);

    // ---- the last 2 RY rows of every column --------------------------------
    localparam CW = 9 * (ROWS - 1);                     // 72 bits: {ok, luma} of 8 rows, oldest on top
    wire [CW-1:0] cq;
    reg          s_valid_d, s_valid_d2;
    reg [9:0]    c_y, c_x;
    reg [8:0]    c_new;
    wire [9*ROWS-1:0] column = {cq, c_new};             // rows y-8 .. y of column c_x, y-8 on top

    always @(posedge clk) begin
        s_valid_d  <= s_valid;
        s_valid_d2 <= s_valid_d;
        if (s_valid) begin
            c_y   <= s_y;  c_x <= s_x;
            c_new <= {s_ok, s_luma};
        end
        if (rst) begin
            s_valid_d  <= 1'b0;
            s_valid_d2 <= 1'b0;
        end
    end
    mem_1r1w #(.AW(XAW), .DW(CW)) u_cram (
        .clk(clk), .re(s_valid), .raddr(s_x[XAW-1:0]), .q(cq),
        .we(s_valid_d), .waddr(c_x[XAW-1:0]), .wdata(column[9*(ROWS-1)-1:0]));

    // ---- window: the compared rows, COLS columns wide ----------------------
    // win[r][c]: row (y - 2 RY + r * STEP), column (x - 2 RX + c); the centre
    // of the window is row index RY / STEP, column RX.
    localparam TR = 2 * RY / STEP + 1;                  // 5 compared rows
    reg [7:0] win [0:TR-1][0:COLS-1];
    reg [COLS-1:0] col_ok;
    reg [9:0] w_y, w_x;
    integer r, c;
    wire [ROWS-1:0] ok_bits;
    genvar gi;
    generate
        for (gi = 0; gi < ROWS; gi = gi + 1) begin : g_ok
            assign ok_bits[gi] = column[9 * gi + 8];
        end
    endgenerate

    always @(posedge clk) begin
        if (s_valid_d) begin
            for (r = 0; r < TR; r = r + 1) begin
                for (c = 0; c < COLS - 1; c = c + 1)
                    win[r][c] <= win[r][c + 1];
                // column[] has the newest row in its low bits: row y - k is at 9 k
                win[r][COLS - 1] <= column[9 * (2 * RY - r * STEP) +: 8];
            end
            col_ok <= {&ok_bits, col_ok[COLS-1:1]};
            w_y <= c_y;  w_x <= c_x;
        end
    end

    // ---- compare, and place the result ------------------------------------
    wire [7:0] centre = win[RY / STEP][RX];
    wire [NBITS-1:0] bits;
    generate
        genvar gr, gc;
        for (gr = 0; gr < TR; gr = gr + 1) begin : g_r
            for (gc = 0; gc < COLS; gc = gc + STEP) begin : g_c
                // position of this comparison in the word, counting the skipped centre
                localparam integer IDX = gr * (2 * RX / STEP + 1) + gc / STEP;
                localparam integer CEN = (RY / STEP) * (2 * RX / STEP + 1) + RX / STEP;
                if (IDX < CEN) begin : g_before
                    assign bits[NBITS - 1 - IDX] = win[gr][gc] < centre;
                end else if (IDX > CEN) begin : g_after
                    assign bits[NBITS - IDX] = win[gr][gc] < centre;
                end
            end
        end
    endgenerate

    // The window just completed has its centre RY rows up and RX columns left
    // of the newest pixel; the first RX pixels of a row finish the previous
    // row's right edge, which is always outside.
    wire        wrap  = (w_x < RX);
    wire [10:0] cy    = {1'b0, w_y} - RY - (wrap ? 11'd1 : 11'd0);
    wire [9:0]  cx    = wrap ? w_x + W - RX : w_x - RX;
    wire        row_in = !cy[10] && (cy[9:0] < H);
    wire        inside = row_in && (cy[9:0] >= RY) && (cy[9:0] < H - RY) && (cx >= RX) && (cx < W - RX);

    // one clock for the comparisons, one for placing the result
    reg [NBITS-1:0] bits_r;
    reg             okw_r, in_r, row_r, v_r;
    reg [9:0]       cy_r, cx_r;
    always @(posedge clk) begin
        v_r    <= s_valid_d2;
        bits_r <= bits;
        okw_r  <= &col_ok;
        in_r   <= inside;
        row_r  <= row_in;
        cy_r   <= cy[9:0];
        cx_r   <= cx;
        out_valid <= 1'b0;
        if (v_r && row_r) begin
            out_valid  <= 1'b1;
            out_y      <= cy_r;
            out_x      <= cx_r;
            out_census <= in_r ? bits_r : {NBITS{1'b0}};
            out_ok     <= in_r && okw_r;
        end
        if (rst) begin
            v_r       <= 1'b0;
            out_valid <= 1'b0;
        end
    end
endmodule