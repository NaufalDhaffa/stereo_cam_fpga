// Webcam output of the mini depth chain: every picture row becomes one USB
// Video Class payload for the FX2LP (see fx2/uvc/uvc.c), in the processing clock.
//
//   2 bytes   payload header: 0x02, then 0x80 | end-of-frame << 1 | frame bit
//   2 W bytes the row of the left picture as it goes into the matcher
//             (rectified luma), YUY2 with neutral colour: Y, 0x80 per pixel
//   2 W bytes the disparity row, still a valid YUY2 picture (brighter = nearer):
//             Y = d[9:2], colour byte = 0x80 | d[1:0]; d in 1/16 pixel, 0 = none
//
// `last` marks the final byte of the row: the FX2LP writer ends the USB
// packet there, which is what ends a payload. The picture a camera program
// sees is 2 W x H: left the camera picture in grey, right the depth.
//
// The left row is taken when the rectifier delivers it, a few rows before
// the matcher's result for that row; a FIFO holds it. The first pixel of a
// frame is tagged, so the two always meet at the right row. A row is only
// sent when the FIFO towards the USB has room for all of it; otherwise the
// whole row is dropped (nobody is reading), never part of one.
module uvc_lines #(
    parameter W = 200,
    parameter H = 148
) (
    input  wire        clk,
    input  wire        rst,
    // left picture, as the rectifier delivers it
    input  wire        l_valid,
    input  wire        l_first,             // first pixel of a frame
    input  wire [7:0]  l_luma,
    // disparity, as the hub delivers it
    input  wire        d_valid,
    input  wire [9:0]  d_y, d_x,
    input  wire [11:0] d_disp,
    // bytes out
    input  wire        room,                // space for a whole row
    output reg         out_wr   = 1'b0,
    output reg  [7:0]  out_byte = 8'h00,
    output reg         out_last = 1'b0
);
    // ---- the left rows waiting for their disparity ---------------------------
    reg  [12:0] lw = 0, lr = 0;
    wire [8:0]  lq;
    reg         l_re = 1'b0;
    mem_1r1w #(.AW(12), .DW(9)) u_left (
        .clk(clk), .re(1'b1), .raddr(lr[11:0]), .q(lq),
        .we(l_valid), .waddr(lw[11:0]), .wdata({l_first, l_luma}));

    // ---- the disparity row just finished -------------------------------------------
    reg  [9:0]  drow [0:255];
    reg  [9:0]  dq = 0;
    reg  [7:0]  dr = 0;
    wire [9:0]  d10 = (d_disp > 12'd1023) ? 10'd1023 : d_disp[9:0];

    localparam [2:0] S_IDLE = 3'd0, S_SYNC = 3'd1, S_HDR = 3'd2, S_LEFT = 3'd3, S_DEPTH = 3'd4;
    reg [2:0]  st = S_IDLE;
    reg        send = 1'b0;                 // this row goes out (there was room)
    reg        phase = 1'b0;                // 0: Y byte, 1: colour byte
    reg        fid = 1'b0, eof = 1'b0, first_row = 1'b0;
    reg [9:0]  n = 0;
    reg [1:0]  wait2 = 0;

    always @(posedge clk) begin
        out_wr   <= 1'b0;
        out_last <= 1'b0;
        if (l_valid) lw <= lw + 13'd1;
        if (d_valid) drow[d_x[7:0]] <= d10;
        dq <= drow[dr];

        case (st)
            S_IDLE: if (d_valid && d_x == W - 1) begin
                send      <= room;
                eof       <= (d_y == H - 1);
                first_row <= (d_y == 10'd0);
                wait2     <= 2'd0;
                st        <= S_SYNC;
            end
            S_SYNC: begin
                // the read side of the left FIFO shows mem[lr] two clocks after lr changed
                wait2 <= wait2 + 2'd1;
                if (wait2 == 2'd2) begin
                    if (first_row && !lq[8] && lr != lw) begin
                        lr    <= lr + 13'd1;            // left over from a frame that did not come out: skip
                        wait2 <= 2'd0;
                    end else begin
                        n     <= 10'd0;
                        phase <= 1'b0;
                        st    <= S_HDR;
                    end
                end
            end
            S_HDR: begin
                out_wr   <= send;
                out_byte <= phase ? {6'b100000, eof, fid} : 8'h02;
                phase    <= ~phase;
                wait2    <= 2'd0;
                if (phase) st <= S_LEFT;
            end
            S_LEFT: begin                               // one pixel per four clocks: the FIFO read needs two
                wait2 <= wait2 + 2'd1;
                if (wait2 == 2'd0) begin
                    out_wr <= send;  out_byte <= lq[7:0];
                end
                if (wait2 == 2'd1) begin
                    out_wr <= send;  out_byte <= 8'h80;
                    lr <= lr + 13'd1;
                end
                if (wait2 == 2'd3) begin
                    n <= n + 10'd1;
                    if (n == W - 1) begin
                        n  <= 10'd0;
                        dr <= 8'd0;
                        st <= S_DEPTH;
                    end
                end
            end
            S_DEPTH: begin
                wait2 <= wait2 + 2'd1;
                if (wait2 == 2'd1) begin
                    out_wr <= send;  out_byte <= dq[9:2];
                end
                if (wait2 == 2'd2) begin
                    out_wr <= send;  out_byte <= {6'b100000, dq[1:0]};
                    out_last <= send && (n == W - 1);
                    dr <= dr + 8'd1;
                end
                if (wait2 == 2'd3) begin
                    n <= n + 10'd1;
                    if (n == W - 1) begin
                        if (eof) fid <= ~fid;
                        st <= S_IDLE;
                    end
                end
            end
            default: st <= S_IDLE;
        endcase

        if (rst) begin
            st <= S_IDLE;  lw <= 13'd0;  lr <= 13'd0;  fid <= 1'b0;  out_wr <= 1'b0;  out_last <= 1'b0;
        end
    end
endmodule
