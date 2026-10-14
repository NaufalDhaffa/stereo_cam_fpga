// Rectification of one camera's luma, one output row at a time.
// Bit-exact counterpart of GridMap.remap in host/stereo/rectify.py.
//
// The map is a table of nodes every GRID = 16 pixels: for each node the
// source coordinate (x, y) in 1/16 pixel, signed 16 bit, stored as {y, x}.
// Per output pixel the four surrounding nodes are blended (weights wx, wy of
// 16), which gives the source coordinate; its four neighbouring source
// pixels are read from the line buffer and blended with the 4-bit fractions.
// Where the source lies outside the picture the output is 0 and px_ok is low.
//
// A row is started with row_start/row_y; rows of a frame must be asked for
// in order 0, 1, 2, ... (the address of a row in the line buffer is carried
// along from row to row). The caller starts a row only when the line buffer
// holds every source row it reads. Pixels then come out every CYC clocks.
//
// Per pixel, counted in clocks after its launch:
//   0  blend the nodes along x            7  address of pixel b (x0+1, y0)
//   1  the two products of the y blend    8  address of c (x0, y0+1), take a
//   2  their sum: source x, y             9  address of d (x0+1, y0+1), take b
//   3  split into integer and fraction   10  take c
//   4  offset of row y0 in the ring      11  take d
//   5  wrapped address of row y0         12  blend along the row
//   6  address of pixel a (x0, y0)       13  blend down the column, output
// A new pixel is launched every CYC clocks (at least 10), so the last steps
// of one pixel overlap the first of the next. They use different registers;
// the fractions, which the next pixel replaces at its step 3, are copied at
// step 6 for the blends.
module rectify #(
    parameter W       = 800,
    parameter H       = 600,
    parameter LINES   = 48,
    parameter AW      = 16,
    parameter NODES_X = 51,                 // nodes per row of the table
    parameter NODE_AW = 11,
    parameter CYC     = 10,                 // clocks per pixel, at least 10
    parameter NODE_FILE = ""                // node table to start with ($readmemh), if any
) (
    input  wire               clk,
    input  wire               rst,

    input  wire               node_we,      // load the node table
    input  wire [NODE_AW-1:0] node_waddr,
    input  wire [31:0]        node_wdata,

    input  wire [AW-1:0]      frame_base,   // line buffer address of source row 0
    input  wire               row_start,
    input  wire [9:0]         row_y,
    output reg                busy     = 1'b0,
    output reg                row_done = 1'b0,

    output reg  [AW-1:0]      rd_addr  = {AW{1'b0}},
    input  wire [7:0]         rd_data,

    output reg                px_valid = 1'b0,
    output reg  [9:0]         px_x     = 10'd0,
    output reg  [7:0]         px_luma  = 8'h00,
    output reg                px_ok    = 1'b0
);
    localparam [AW:0] RING = LINES * W;

    // ---- node table ------------------------------------------------------
    (* ram_style = "block" *) reg [31:0] nodes [0:(1<<NODE_AW)-1];
    reg [NODE_AW-1:0] node_raddr = {NODE_AW{1'b0}};
    reg [31:0]        node_q     = 32'd0;
    initial if (NODE_FILE != "") $readmemh(NODE_FILE, nodes);
    always @(posedge clk) begin
        if (node_we)
            nodes[node_waddr] <= node_wdata;
        node_q <= nodes[node_raddr];
    end

    // ---- row control -----------------------------------------------------
    localparam [1:0] S_IDLE = 2'd0, S_PRE = 2'd1, S_RUN = 2'd2, S_TAIL = 2'd3;
    reg [1:0]         state = S_IDLE;
    reg [9:0]         y     = 10'd0, x = 10'd0;
    reg [3:0]         ph    = 4'd0;
    reg [2:0]         pre   = 3'd0;
    reg [AW-1:0]      a_y   = {AW{1'b0}};   // line buffer address of source row y
    reg [NODE_AW-1:0] nptr  = {NODE_AW{1'b0}};   // table address of node (y / 16, 0)
    reg [31:0]        n00 = 0, n01 = 0, n10 = 0, n11 = 0, nx_top = 0, nx_bot = 0;

    wire [3:0] wx = x[3:0];
    wire [3:0] wy = y[3:0];
    wire [5:0] cell_i = x[9:4];
    wire       launch = (state == S_RUN) && (ph == 4'd0);
    wire [AW:0] a_next = {1'b0, a_y} + W;

    reg [12:0] age = 13'd0;                 // age[k]: a pixel is k + 1 clocks past its launch

    always @(posedge clk) begin
        row_done <= 1'b0;
        if (rst) begin
            state <= S_IDLE;
            busy  <= 1'b0;
        end else case (state)
            S_IDLE: if (row_start) begin
                y     <= row_y;
                x     <= 10'd0;
                // row 0 sits at frame_base, every further row W bytes on in the ring
                a_y   <= (row_y == 10'd0) ? frame_base
                       : (a_next >= RING) ? a_next - RING : a_next[AW-1:0];
                nptr  <= row_y[9:4] * NODES_X;
                pre   <= 3'd0;
                busy  <= 1'b1;
                state <= S_PRE;
            end
            S_PRE: begin                    // the four nodes of the row's first cell
                pre <= pre + 3'd1;
                case (pre)
                    3'd0: node_raddr <= nptr;
                    3'd1: node_raddr <= nptr + 1'b1;
                    3'd2: begin node_raddr <= nptr + NODES_X;        n00 <= node_q; end
                    3'd3: begin node_raddr <= nptr + NODES_X + 1'b1; n01 <= node_q; end
                    3'd4: n10 <= node_q;
                    default: begin
                        n11   <= node_q;
                        ph    <= 4'd0;
                        state <= S_RUN;
                    end
                endcase
            end
            S_RUN: begin
                // during the last pixel of a cell, fetch the right-hand nodes of the next cell
                if (wx == 4'd15) begin
                    case (ph)
                        4'd0: node_raddr <= nptr + cell_i + 2'd2;
                        4'd1: node_raddr <= nptr + NODES_X + cell_i + 2'd2;
                        4'd2: nx_top <= node_q;
                        4'd3: nx_bot <= node_q;
                        default: ;
                    endcase
                end
                if (ph == CYC - 1) begin
                    ph <= 4'd0;
                    if (wx == 4'd15) begin
                        n00 <= n01;    n10 <= n11;
                        n01 <= nx_top; n11 <= nx_bot;
                    end
                    if (x == W - 1)
                        state <= S_TAIL;
                    else
                        x <= x + 10'd1;
                end else
                    ph <= ph + 4'd1;
            end
            default: if (px_valid && px_x == W - 1) begin     // S_TAIL: the last pixel has left
                row_done <= 1'b1;
                busy     <= 1'b0;
                state    <= S_IDLE;
            end
        endcase
    end

    // ---- pixel pipeline --------------------------------------------------
    function signed [21:0] blend_nodes;     // a * (16 - w) + b * w
        input signed [15:0] a, b;
        input [3:0] w;
        begin
            blend_nodes = a * $signed({1'b0, 5'd16 - {1'b0, w}}) + b * $signed({2'b00, w});
        end
    endfunction

    reg signed [21:0] tx = 0, bx = 0, ty = 0, by = 0;
    reg signed [26:0] mx1 = 0, mx2 = 0, my1 = 0, my2 = 0;
    reg signed [17:0] sx = 0, sy = 0;
    reg signed [13:0] x0 = 0, y0 = 0;
    reg [3:0]         fx = 0, fy = 0;
    reg               ok = 1'b0;
    reg [9:0]         tok_x = 0, tok_x2 = 0;
    reg signed [AW+3:0] row_sum = 0;
    localparam signed [AW+3:0] RING_S = LINES * W;
    reg [AW-1:0]      ra0 = 0, ra1 = 0;
    reg [7:0]         pa = 0, pb = 0, pc = 0, pd = 0;
    reg [11:0]        top = 0, bot = 0;

    wire signed [5:0]  wy_s = $signed({2'b00, wy});
    wire signed [5:0]  wy_c = $signed({1'b0, 5'd16 - {1'b0, wy}});
    wire signed [26:0] sx_full = mx1 + mx2 + 27'sd128;
    wire signed [26:0] sy_full = my1 + my2 + 27'sd128;
    wire signed [13:0] x0_w = sx >>> 4;
    wire signed [13:0] y0_w = sy >>> 4;
    wire signed [10:0] dy   = y0 - $signed({4'b0000, y});     // source row relative to this output row
    wire signed [AW+3:0] row_w = $signed({4'b0000, a_y}) + dy * W;
    wire [AW:0]        ra0_p = {1'b0, ra0} + W;
    // The fractions and the valid flag are copied once more: the next pixel
    // replaces the first copy before this pixel is blended.
    reg [3:0]          fx2 = 0, fy2 = 0;
    reg                ok2 = 1'b0;
    wire [4:0]         gx = 5'd16 - {1'b0, fx2};
    wire [4:0]         gy = 5'd16 - {1'b0, fy2};
    wire [16:0]        mix = top * gy + bot * fy2 + 17'd128;

    always @(posedge clk) begin
        age      <= {age[11:0], launch};
        px_valid <= 1'b0;
        if (launch) begin                                   // step 0
            tx    <= blend_nodes(n00[15:0],  n01[15:0],  wx);
            bx    <= blend_nodes(n10[15:0],  n11[15:0],  wx);
            ty    <= blend_nodes(n00[31:16], n01[31:16], wx);
            by    <= blend_nodes(n10[31:16], n11[31:16], wx);
            tok_x <= x;
        end
        if (age[0]) begin                                   // step 1
            mx1 <= tx * wy_c;  mx2 <= bx * wy_s;
            my1 <= ty * wy_c;  my2 <= by * wy_s;
        end
        if (age[1]) begin                                   // step 2
            sx <= sx_full >>> 8;
            sy <= sy_full >>> 8;
        end
        if (age[2]) begin                                   // step 3
            x0 <= x0_w;  fx <= sx[3:0];
            y0 <= y0_w;  fy <= sy[3:0];
            ok <= (x0_w >= 0) && (y0_w >= 0) && (x0_w < W - 1) && (y0_w < H - 1);
        end
        if (age[3]) begin                                   // step 4
            row_sum <= row_w;
            tok_x2  <= tok_x;
        end
        if (age[4]) begin                                   // step 5
            // Source row y0 is in the ring, but output row y, which the offset
            // is counted from, may be several ring lengths away from it (the
            // cameras are pitched against each other): fold back from up to
            // three ring lengths below to two above.
            ra0 <= (row_sum < -2 * RING_S) ? row_sum + 3 * RING_S
                 : (row_sum < -RING_S)     ? row_sum + 2 * RING_S
                 : (row_sum < 0)           ? row_sum + RING_S
                 : (row_sum >= 2 * RING_S) ? row_sum - 2 * RING_S
                 : (row_sum >= RING_S)     ? row_sum - RING_S : row_sum;
        end
        if (age[5]) begin                                   // step 6 (a)
            rd_addr <= ra0 + x0[9:0];
            ra1     <= (ra0_p >= RING) ? ra0_p - RING : ra0_p[AW-1:0];
            fx2     <= fx;
            fy2     <= fy;
            ok2     <= ok;
        end
        if (age[6])                                         // (b)
            rd_addr <= ra0 + x0[9:0] + 1'b1;
        if (age[7]) begin                                   // (c), a arrives
            rd_addr <= ra1 + x0[9:0];
            pa      <= rd_data;
        end
        if (age[8]) begin                                   // (d), b arrives
            rd_addr <= ra1 + x0[9:0] + 1'b1;
            pb      <= rd_data;
        end
        if (age[9])
            pc <= rd_data;
        if (age[10])
            pd <= rd_data;
        if (age[11]) begin                                  // step 12: blend along the row
            top <= pa * gx + pb * fx2;
            bot <= pc * gx + pd * fx2;
        end
        if (age[12]) begin                                  // step 13: blend down the column
            px_valid <= 1'b1;
            px_x     <= tok_x2;
            px_ok    <= ok2;
            px_luma  <= ok2 ? mix[15:8] : 8'h00;
        end
    end
endmodule
