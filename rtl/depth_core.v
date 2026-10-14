// The depth chain behind the two line buffers, in the processing clock:
//
//   row scheduler -> 2 x rectify -> stereo_core (census, matcher) -> bytes out
//
// stereo_core is the block meant for tape-out and follows the chip rules (see
// there). This file and everything else around it is FPGA glue: it may use
// tables read from files, initial values and vendor memories.
//
// Scheduler. Output row y is started when both line buffers hold the input
// rows it reads (tables need0 / need1, made by host/stereo/golden.py for the
// calibration in use) and the core has finished the previous row. The
// rectifiers cannot wait in the middle of a row, so a row only starts when
// the core is empty; it then takes every pixel at once (`overrun` otherwise).
// After the last row the core pushes the last rows out by itself.
//
// Output: per frame a 32-byte header in the format of cam_capture.v (so the
// PC's frame splitter needs no change), then for every pixel the disparity
// in 1/16 pixel as two bytes, low byte first; 0 = no measurement.
module depth_core #(
    parameter W = 800,
    parameter H = 600,
    parameter AW = 16,
    parameter LINES0 = 47,
    parameter LINES1 = 47,
    parameter NODES_X = 51,
    parameter PREFILTER = 1,
    parameter CENSUS_RY = 4,
    parameter CENSUS_RX = 8,
    parameter CENSUS_STEP = 2,
    parameter NBITS = 44,
    parameter DMIN = 27,
    parameter HBOX = 3,
    parameter SGM_P1 = 15,
    parameter SGM_P2 = 73,
    parameter LMAX = 127,
    parameter TBCAP = 63,
    parameter UNIQ = 3,
    parameter UNITS = 16,                       // matcher units, NDISP / 8
    parameter NDISP = 128,
    parameter FLUSH_ROWS = 6,
    parameter SLOT = 10                         // clocks per pixel, the same for the rectifiers and the matcher
) (
    input  wire          clk,
    input  wire          rst,
    // line buffers (their write side lives in the capture clock)
    input  wire [9:0]    rows_gray0, rows_gray1,
    input  wire          sof_toggle0, sof_toggle1,
    input  wire [AW-1:0] frame_base0, frame_base1,
    output wire [AW-1:0] rd_addr0, rd_addr1,
    input  wire [7:0]    rd_data0, rd_data1,
    input  wire [31:0]   start_us,              // time stamp for the frame header (changes only at frame start)
    // bytes of the output stream
    output reg           out_wr  = 1'b0,
    output reg  [7:0]    out_byte = 8'h00,
    // for tests and status
    output wire          px_valid,
    output wire [9:0]    px_y, px_x,
    output wire [11:0]   px_disp,
    output reg           overrun = 1'b0         // a new frame began before the previous one was finished, or the core refused a pixel
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
    reg        row_start = 1'b0, hdr_start = 1'b0;
    reg [5:0]  idle = 0;
    reg [3:0]  arm = 0;
    reg [1:0]  settle = 0;
    wire       row_done0, row_done1, r_busy0, r_busy1;
    wire       quiet, core_ready;
    wire       drained = (idle == 6'd40);       // quiet for 40 clocks: nothing left on the way
    wire       v0, v1, ok0, ok1;
    wire [9:0] x0, x1;
    wire [7:0] l0, l1;

    always @(posedge clk) begin
        row_start <= 1'b0;
        hdr_start <= 1'b0;
        idle      <= !quiet ? 6'd0 : (drained ? idle : idle + 6'd1);
        n0        <= need0[y];
        n1        <= need1[y];
        if (new0) got0 <= 1'b1;
        if (new1) got1 <= 1'b1;
        if (v0 && !core_ready) overrun <= 1'b1;
        if (rst) begin
            st <= S_IDLE;  got0 <= 1'b0;  got1 <= 1'b0;  overrun <= 1'b0;  idle <= 6'd0;
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
                    if (rows0 < 10'd100 && rows1 < 10'd100) begin
                        got0 <= 1'b0;  got1 <= 1'b0;
                        y <= 10'd0;
                        hdr_start <= 1'b1;
                        settle <= 2'd0;
                        st <= S_WAIT;
                    end
                end
            end
            S_WAIT: begin
                if (got0 && got1) overrun <= 1'b1;
                if (settle != 2'd3) settle <= settle + 2'd1;    // need0/need1 of the new row are being read
                if (settle == 2'd3 && rows0 >= n0 && rows1 >= n1 && drained && !r_busy0) begin
                    row_start <= 1'b1;
                    st <= S_ROW;
                end
            end
            S_ROW: if (row_done0) begin
                y  <= y + 10'd1;
                settle <= 2'd0;
                st <= (y == H - 1) ? S_END : S_WAIT;
            end
            default: if (drained) st <= S_IDLE;     // S_END: the core flushes its last rows
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

    // ---- census and matching: the tape-out block ----------------------------------
    // Its settings are constants of this build here; on the chip they are registers.
    wire core_idle;
    localparam [5:0] C_DMIN = DMIN;
    localparam [6:0] C_P1 = SGM_P1, C_P2 = SGM_P2;
    localparam [3:0] C_UNIQ = UNIQ;
    assign quiet = core_idle;
    stereo_core #(.W(W), .H(H), .PREFILTER(PREFILTER), .CENSUS_RY(CENSUS_RY), .CENSUS_RX(CENSUS_RX),
                  .CENSUS_STEP(CENSUS_STEP), .NBITS(NBITS), .HBOX(HBOX), .LMAX(LMAX), .TBCAP(TBCAP),
                  .UNITS(UNITS), .NDISP(NDISP), .FLUSH_ROWS(FLUSH_ROWS), .SLOT(SLOT)) u_core (
        .clk(clk), .rst(rst),
        .cfg_dmin(C_DMIN), .cfg_p1(C_P1), .cfg_p2(C_P2), .cfg_uniq(C_UNIQ),
        .in_valid(v0), .in_ready(core_ready), .in_sof(y == 10'd0 && x0 == 10'd0),
        .in_left(l0), .in_left_ok(ok0), .in_right(l1), .in_right_ok(ok1),
        .out_valid(px_valid), .out_y(px_y), .out_x(px_x), .out_disp(px_disp), .idle(core_idle));

    // ---- bytes out --------------------------------------------------------------------
    reg [15:0] frame_no = 0;
    reg [5:0]  hidx = 6'd32;                    // 32 = no header in progress
    reg        hi_pending = 1'b0;
    reg [7:0]  hi_byte = 0;
    (* ASYNC_REG = "TRUE" *) reg [31:0] us_a = 0, us_b = 0;
    reg [7:0]  hdr;
    always @* begin
        case (hidx[4:0])
            5'd0:  hdr = 8'hAA;
            5'd1:  hdr = 8'h55;
            5'd2:  hdr = 8'hF0;
            5'd3:  hdr = 8'h0F;
            5'd4:  hdr = "C";
            5'd5:  hdr = "A";
            5'd6:  hdr = "M";
            5'd7:  hdr = "0";
            5'd8:  hdr = frame_no[7:0];
            5'd9:  hdr = frame_no[15:8];
            5'd10: hdr = (2 * W) & 8'hFF;        // bytes per line and lines "of the previous frame": always the same
            5'd11: hdr = (2 * W) >> 8;
            5'd12: hdr = H & 8'hFF;
            5'd13: hdr = H >> 8;
            5'd20: hdr = us_b[7:0];
            5'd21: hdr = us_b[15:8];
            5'd22: hdr = us_b[23:16];
            5'd23: hdr = us_b[31:24];
            5'd24: hdr = 8'hFF;                  // no ToF reading in this stream
            5'd25: hdr = 8'hFF;
            default: hdr = 8'h00;
        endcase
    end
    always @(posedge clk) begin
        out_wr <= 1'b0;
        us_a <= start_us;  us_b <= us_a;
        if (rst) begin
            hidx <= 6'd32;  hi_pending <= 1'b0;
        end else begin
            if (hdr_start) begin
                hidx <= 6'd0;
                frame_no <= frame_no + 16'd1;
            end else if (!hidx[5]) begin
                out_wr <= 1'b1;  out_byte <= hdr;  hidx <= hidx + 6'd1;
            end
            if (px_valid) begin
                out_wr <= 1'b1;  out_byte <= px_disp[7:0];
                hi_byte <= {4'b0000, px_disp[11:8]};  hi_pending <= 1'b1;
            end else if (hi_pending) begin
                out_wr <= 1'b1;  out_byte <= hi_byte;  hi_pending <= 1'b0;
            end
        end
    end
endmodule
