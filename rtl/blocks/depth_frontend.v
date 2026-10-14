// Rectification and census of both pictures, row by row, and the FIFO of
// signatures in front of the chain's hub.
//
//   row scheduler -> 2 x rectify -> 2 x census -> FIFO (a row of signatures)
//
// The hub takes a pixel every 30 clocks or so, much slower than the rectifiers
// deliver a row. A row is therefore only started when the FIFO is nearly
// empty; it then holds the whole row. After the last row, FLUSH_ROWS rows of
// nothing push the last rows out of the census.
module depth_frontend #(
    parameter W = 200,
    parameter H = 148,
    parameter AW = 16,
    parameter LINES0 = 16,
    parameter LINES1 = 16,
    parameter NODES_X = 14,
    parameter PREFILTER = 1,
    parameter CENSUS_RY = 4,
    parameter CENSUS_RX = 8,
    parameter CENSUS_STEP = 2,
    parameter NBITS = 44,
    parameter FLUSH_ROWS = 6,
    parameter SLOT = 10                         // clocks per pixel of the rectifiers
) (
    input  wire             clk,
    input  wire             rst,
    // line buffers of the two cameras
    input  wire [9:0]       rows_gray0, rows_gray1,
    input  wire             sof_toggle0, sof_toggle1,
    input  wire [AW-1:0]    frame_base0, frame_base1,
    output wire [AW-1:0]    rd_addr0, rd_addr1,
    input  wire [7:0]       rd_data0, rd_data1,
    // signatures to the hub
    output wire             sig_valid,
    input  wire             sig_ready,
    output wire [NBITS-1:0] sig_left,
    output wire             sig_left_ok,
    output wire [NBITS-1:0] sig_right,
    output wire             sig_right_ok,
    // rectified left picture, for the webcam output
    output wire             l_valid,
    output wire             l_first,
    output wire [7:0]       l_luma,
    output reg              overrun = 1'b0,     // a frame began before the one before was through, or a pixel found no room
    output wire [19:0]      dbg                 // for diagnosis: {FIFO level / 2, row, scheduler state, flushing}
);
    // ---- camera side into this clock ----------------------------------------
    (* ASYNC_REG = "TRUE" *) reg [9:0] g0a = 0, g0b = 0, g1a = 0, g1b = 0;
    (* ASYNC_REG = "TRUE" *) reg [2:0] sof0 = 0, sof1 = 0;
    function [9:0] gray2bin;
        input [9:0] g;
        integer k;
        begin
            gray2bin[9] = g[9];
            for (k = 8; k >= 0; k = k - 1) gray2bin[k] = gray2bin[k + 1] ^ g[k];
        end
    endfunction
    reg [9:0] rows0 = 0, rows1 = 0;
    always @(posedge clk) begin
        g0a <= rows_gray0;  g0b <= g0a;  rows0 <= gray2bin(g0b);
        g1a <= rows_gray1;  g1b <= g1a;  rows1 <= gray2bin(g1b);
        sof0 <= {sof0[1:0], sof_toggle0};
        sof1 <= {sof1[1:0], sof_toggle1};
    end
    wire new0 = sof0[2] ^ sof0[1];
    wire new1 = sof1[2] ^ sof1[1];

    // ---- rows each output row needs -------------------------------------------
    reg [9:0] need0 [0:1023];
    reg [9:0] need1 [0:1023];
    initial begin
        $readmemh("cam0_need.hex", need0);
        $readmemh("cam1_need.hex", need1);
    end

    // ---- scheduler -------------------------------------------------------------
    localparam [2:0] S_IDLE = 3'd0, S_WAIT = 3'd1, S_ROW = 3'd2, S_END = 3'd5;
    reg [2:0]  st = S_IDLE;
    reg        got0 = 1'b0, got1 = 1'b0;
    reg [9:0]  y = 0;                           // row being produced
    reg [9:0]  n0 = 0, n1 = 0;
    reg        row_start = 1'b0;
    reg [3:0]  arm = 0;
    reg [1:0]  settle = 0;
    wire       row_done0, row_done1, r_busy0, r_busy1;
    wire       v0, v1, ok0, ok1;
    wire [9:0] x0, x1;
    wire [7:0] l0, l1;
    reg        flushing = 1'b0;
    wire [8:0] f_level;
    wire       fifo_low = (f_level < 9'd24);    // room for a whole row
    wire       room     = (f_level < 9'd240);

    always @(posedge clk) begin
        row_start <= 1'b0;
        n0        <= need0[y];
        n1        <= need1[y];
        if (new0) got0 <= 1'b1;
        if (new1) got1 <= 1'b1;
        if (v0 && !room) overrun <= 1'b1;
        if (rst) begin
            st <= S_IDLE;  got0 <= 1'b0;  got1 <= 1'b0;  overrun <= 1'b0;
        end else case (st)
            S_IDLE: begin
                // A frame is started at the moment a camera begins one and both cameras are
                // then near the top of theirs: that is when the later of the two has begun.
                // (Waiting for "both have begun" and then forgetting it, as this did before,
                // can pair one camera's frame with the other's next one, and stay that way:
                // the check then fails at every frame and nothing is ever started.) The row
                // counters get a few clocks to show the new frame first.
                if (new0 || new1)       arm <= 4'd1;
                else if (arm != 4'd0)   arm <= arm + 4'd1;
                if (arm == 4'd12) begin
                    arm <= 4'd0;
                    if (rows0 < 10'd50 && rows1 < 10'd50) begin
                        got0 <= 1'b0;  got1 <= 1'b0;
                        y <= 10'd0;
                        settle <= 2'd0;
                        st <= S_WAIT;
                    end
                end
            end
            S_WAIT: begin
                if (got0 && got1) overrun <= 1'b1;
                if (settle != 2'd3) settle <= settle + 2'd1;
                if (settle == 2'd3 && rows0 >= n0 && rows1 >= n1 && fifo_low && !flushing && !r_busy0) begin
                    row_start <= 1'b1;
                    st <= S_ROW;
                end
            end
            S_ROW: if (row_done0) begin
                y  <= y + 10'd1;
                settle <= 2'd0;
                st <= (y == H - 1) ? S_END : S_WAIT;
            end
            default: if (!flushing && fifo_low) st <= S_IDLE;      // S_END: the last rows are on their way
        endcase
    end

    // ---- rectification ---------------------------------------------------------
    rectify #(.W(W), .H(H), .LINES(LINES0), .AW(AW), .NODES_X(NODES_X), .CYC(SLOT), .NODE_FILE("cam0_nodes.hex")) u_rect0 (
        .clk(clk), .rst(rst), .node_we(1'b0), .node_waddr(11'd0), .node_wdata(32'd0),
        .frame_base(frame_base0), .row_start(row_start), .row_y(y), .busy(r_busy0), .row_done(row_done0),
        .rd_addr(rd_addr0), .rd_data(rd_data0),
        .px_valid(v0), .px_x(x0), .px_luma(l0), .px_ok(ok0));
    rectify #(.W(W), .H(H), .LINES(LINES1), .AW(AW), .NODES_X(NODES_X), .CYC(SLOT), .NODE_FILE("cam1_nodes.hex")) u_rect1 (
        .clk(clk), .rst(rst), .node_we(1'b0), .node_waddr(11'd0), .node_wdata(32'd0),
        .frame_base(frame_base1), .row_start(row_start), .row_y(y), .busy(r_busy1), .row_done(row_done1),
        .rd_addr(rd_addr1), .rd_data(rd_data1),
        .px_valid(v1), .px_x(x1), .px_luma(l1), .px_ok(ok1));

    // ---- census of both pictures, with the rows of nothing after the last one -----
    reg  [9:0] cx = 0, cy = 0;
    reg  [2:0] gap = 0;
    wire       sof   = v0 && (y == 10'd0) && (x0 == 10'd0);
    wire       dummy = flushing && (gap == 3'd0) && room;
    wire       step  = v0 || dummy;
    wire [9:0] px = sof ? 10'd0 : cx;
    wire [9:0] py = sof ? 10'd0 : cy;
    wire       row_end = (px == W - 1);
    always @(posedge clk) begin
        if (gap != 3'd0) gap <= gap - 3'd1;
        if (step) begin
            gap <= 3'd3;
            cx  <= row_end ? 10'd0 : px + 10'd1;
            cy  <= row_end ? py + 10'd1 : py;
            if (row_end && py == H - 1) flushing <= 1'b1;
            if (row_end && py == H + FLUSH_ROWS - 1) begin
                flushing <= 1'b0;
                cy <= 10'd0;
            end
        end
        if (rst) begin
            cx <= 10'd0;  cy <= 10'd0;  flushing <= 1'b0;  gap <= 3'd0;
        end
    end

    wire             c0_valid, c0_ok, c1_ok;
    wire [NBITS-1:0] c0_sig, c1_sig;
    census #(.W(W), .H(H), .PREFILTER(PREFILTER), .RY(CENSUS_RY), .RX(CENSUS_RX), .STEP(CENSUS_STEP), .NBITS(NBITS)) u_cen0 (
        .clk(clk), .rst(rst), .in_valid(step), .in_y(py), .in_x(px),
        .in_luma(v0 ? l0 : 8'h00), .in_ok(v0 && ok0),
        .out_valid(c0_valid), .out_y(), .out_x(), .out_census(c0_sig), .out_ok(c0_ok));
    census #(.W(W), .H(H), .PREFILTER(PREFILTER), .RY(CENSUS_RY), .RX(CENSUS_RX), .STEP(CENSUS_STEP), .NBITS(NBITS)) u_cen1 (
        .clk(clk), .rst(rst), .in_valid(step), .in_y(py), .in_x(px),
        .in_luma(v0 ? l1 : 8'h00), .in_ok(v0 && ok1),
        .out_valid(), .out_y(), .out_x(), .out_census(c1_sig), .out_ok(c1_ok));

    // ---- FIFO in front of the hub: a row of signatures ----------------------------
    localparam FW = 2 * NBITS + 2;
    reg  [8:0]    f_wp = 0, f_wp_seen = 0, f_rp = 0;
    wire [FW-1:0] f_q;
    wire          h_ready = sig_ready;
    wire          f_none = (f_wp_seen == f_rp);
    wire          h_take = h_ready && !f_none;
    wire [8:0]    f_next = f_rp + {8'd0, h_take};
    assign f_level = f_wp - f_rp;
    mem_1r1w #(.AW(8), .DW(FW)) u_fifo (
        .clk(clk), .re(1'b1), .raddr(f_next[7:0]), .q(f_q),
        .we(c0_valid), .waddr(f_wp[7:0]), .wdata({c0_ok, c0_sig, c1_ok, c1_sig}));
    always @(posedge clk) begin
        if (c0_valid) f_wp <= f_wp + 9'd1;
        f_wp_seen <= f_wp;
        f_rp      <= f_next;
        if (rst) begin
            f_wp <= 9'd0;  f_wp_seen <= 9'd0;  f_rp <= 9'd0;
        end
    end

    assign sig_valid    = !f_none;
    assign sig_left     = f_q[2*NBITS : NBITS+1];
    assign sig_left_ok  = f_q[2*NBITS+1];
    assign sig_right    = f_q[NBITS-1:0];
    assign sig_right_ok = f_q[NBITS];
    assign l_valid = v0;
    assign l_first = sof;
    assign l_luma  = l0;
    assign dbg = {f_level[8:1], y[7:0], st, flushing};
endmodule
