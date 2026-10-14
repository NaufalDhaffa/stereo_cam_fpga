// DVP capture for OV2640, oversampled.
//
// PCLK is NOT used as a clock. The camera hangs on jumper wires, and ringing
// on PCLK produces runt pulses; anything clocked by them (state machines,
// FIFO pointers) eventually ends up in an illegal state and stops. Instead
// all camera pins are sampled by `clk` (200 MHz) and a rising edge of PCLK
// is accepted only after two consecutive high samples following two
// consecutive low ones, so pulses shorter than ~10 ns are ignored. That
// limits PCLK to roughly 36 MHz.
//
// Every rising edge of VSYNC starts a new frame: a 24-byte header is written
// to the FIFO, then every byte clocked out while HREF is high. The header
// carries measurements of the PREVIOUS frame, so the receiver can check a
// frame's size once the next header arrives:
//
//   0..7   magic  AA 55 F0 0F 'C' 'A' 'M' '0'
//   8..9   frame number of the frame that follows        (LE)
//   10..11 bytes per line of the previous frame          (LE)
//   12..13 lines in the previous frame                   (LE)
//   14..15 PCLK frequency in units of 2 kHz              (LE)
//   16..17 length of the previous frame in 0.5 ms ticks  (LE)
//   18     flags, bit0 = previous frame was truncated (FIFO overflowed)
//   19..23 zero
//
// The camera cannot be paused. If the FIFO fills up, the rest of that frame
// is dropped and the truncation is reported in the next header.
module cam_capture (
    input  wire        clk,
    input  wire        rst,
    input  wire        cam_pclk,
    input  wire [7:0]  cam_d,
    input  wire        cam_href,
    input  wire        cam_vsync,
    input  wire        tick,          // one-cycle pulse every 0.5 ms
    input  wire        fifo_full,
    output reg         fifo_wr_en = 1'b0,
    output reg  [7:0]  fifo_din   = 8'h00,
    output wire        frame_led,
    // for the ILA
    output reg         pclk_f     = 1'b0,   // filtered PCLK level
    output reg         stb        = 1'b0,   // one cycle per accepted PCLK edge
    output reg  [7:0]  d_q        = 8'h00,
    output reg         href_q     = 1'b0,
    output reg         vsync_q    = 1'b0,
    output reg         trunc      = 1'b0,
    output reg  [1:0]  state      = 2'd0,
    output reg  [15:0] lines      = 16'd0,
    output reg  [15:0] line_bytes = 16'd0
);
    localparam [1:0] S_IDLE = 2'd0, S_HDR = 2'd1, S_RUN = 2'd2;

    // Two-stage synchronisers, then two more samples of history so that the
    // data taken is the one sampled together with the first high PCLK sample.
    (* ASYNC_REG = "TRUE" *) reg [1:0] pclk_m = 2'b00, href_m = 2'b00, vsync_m = 2'b00;
    (* ASYNC_REG = "TRUE" *) reg [7:0] d_m0 = 8'h00, d_m1 = 8'h00;
    reg [1:0] pclk_h = 2'b00, href_h = 2'b00, vsync_h = 2'b00;
    reg [7:0] d_h0 = 8'h00, d_h1 = 8'h00;

    always @(posedge clk) begin
        pclk_m  <= {pclk_m[0],  cam_pclk};
        href_m  <= {href_m[0],  cam_href};
        vsync_m <= {vsync_m[0], cam_vsync};
        d_m0    <= cam_d;
        d_m1    <= d_m0;

        pclk_h  <= {pclk_h[0],  pclk_m[1]};
        href_h  <= {href_h[0],  href_m[1]};
        vsync_h <= {vsync_h[0], vsync_m[1]};
        d_h0    <= d_m1;
        d_h1    <= d_h0;

        stb <= 1'b0;
        if (pclk_h == 2'b11 && !pclk_f) begin
            pclk_f  <= 1'b1;
            stb     <= 1'b1;
            d_q     <= d_h1;
            href_q  <= href_h[1];
            vsync_q <= vsync_h[1];
        end else if (pclk_h == 2'b00 && pclk_f)
            pclk_f  <= 1'b0;
    end

    reg        href_qq = 1'b0, vsync_qq = 1'b0;
    reg [4:0]  idx        = 5'd0;
    reg        prev_trunc = 1'b0;
    reg [15:0] frame_no   = 16'd0;
    reg [15:0] last_bpl   = 16'd0, prev_bpl = 16'd0;
    reg [15:0] prev_lines = 16'd0;
    reg [15:0] ticks      = 16'd0, prev_ticks = 16'd0;
    reg [15:0] pclk_cnt   = 16'd0, pclk_2khz = 16'd0;

    reg [7:0] hdr;
    always @* begin
        case (idx)
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
            5'd10: hdr = prev_bpl[7:0];
            5'd11: hdr = prev_bpl[15:8];
            5'd12: hdr = prev_lines[7:0];
            5'd13: hdr = prev_lines[15:8];
            5'd14: hdr = pclk_2khz[7:0];
            5'd15: hdr = pclk_2khz[15:8];
            5'd16: hdr = prev_ticks[7:0];
            5'd17: hdr = prev_ticks[15:8];
            5'd18: hdr = {7'd0, prev_trunc};
            default: hdr = 8'h00;
        endcase
    end

    always @(posedge clk) begin
        fifo_wr_en <= 1'b0;

        if (tick) begin
            pclk_2khz <= pclk_cnt;
            pclk_cnt  <= {15'd0, stb};
            if (ticks != 16'hFFFF)
                ticks <= ticks + 16'd1;
        end else if (stb && pclk_cnt != 16'hFFFF)
            pclk_cnt  <= pclk_cnt + 16'd1;

        // One step of the capture logic per accepted PCLK edge.
        if (stb) begin
            href_qq  <= href_q;
            vsync_qq <= vsync_q;

            if (href_q)
                line_bytes <= line_bytes + 16'd1;
            if (href_qq && !href_q) begin
                last_bpl   <= line_bytes;
                lines      <= lines + 16'd1;
                line_bytes <= 16'd0;
            end

            case (state)
                S_HDR: begin
                    if (!fifo_full && !trunc) begin
                        fifo_wr_en <= 1'b1;
                        fifo_din   <= hdr;
                    end else
                        trunc <= 1'b1;
                    idx <= idx + 5'd1;
                    if (idx == 5'd23)
                        state <= S_RUN;
                end
                S_RUN:
                    if (href_q) begin
                        if (!fifo_full && !trunc) begin
                            fifo_wr_en <= 1'b1;
                            fifo_din   <= d_q;
                        end else
                            trunc <= 1'b1;
                    end
                default: ;
            endcase

            if (vsync_q && !vsync_qq) begin
                state      <= S_HDR;
                idx        <= 5'd0;
                frame_no   <= frame_no + 16'd1;
                prev_bpl   <= last_bpl;
                prev_lines <= lines;
                prev_ticks <= ticks;
                prev_trunc <= trunc;
                trunc      <= 1'b0;
                lines      <= 16'd0;
                ticks      <= 16'd0;
            end
        end

        if (rst) begin
            state      <= S_IDLE;
            trunc      <= 1'b0;
            fifo_wr_en <= 1'b0;
        end
    end

    assign frame_led = frame_no[2];
endmodule
