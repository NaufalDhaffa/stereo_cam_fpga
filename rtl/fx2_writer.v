// Drains a first-word-fall-through FIFO into EP6 IN of a CY7C68013A in
// synchronous Slave FIFO mode (8-bit bus, IFCLK from the FX2LP).
//
// The FX2LP full flag only updates after the clock edge that takes the last
// byte of a packet, so it cannot stop the very next write. The flag is
// therefore only consulted at packet boundaries: after the 512th byte of a
// packet (or after PKTEND) writing pauses for GAP cycles, and resumes once
// the settled flag says there is room for another packet. Inside a packet,
// bytes are written whenever the FIFO has them.
//
// When the FIFO stays empty for IDLE_FLUSH cycles with a partial packet
// pending (the vertical blanking of the camera), PKTEND commits it.
//
// A byte that comes with fifo_last ends its packet at once: PKTEND follows
// it (webcam mode: a short packet is the end of a video payload).
module fx2_writer #(
    parameter [15:0] IDLE_FLUSH = 16'd48000     // 1 ms at 48 MHz
) (
    input  wire        clk,
    input  wire        fx2_flagb_n,              // low = EP6 full
    output reg  [7:0]  fx2_fd       = 8'h00,
    output reg         fx2_slwr_n   = 1'b1,
    output reg         fx2_pktend_n = 1'b1,
    input  wire [7:0]  fifo_dout,
    input  wire        fifo_last,
    input  wire        fifo_empty,
    output wire        fifo_rd_en,
    // for the ILA
    output wire        room,                     // settled "not full" flag
    output reg         hold       = 1'b1,        // waiting at a packet boundary
    output reg         partial    = 1'b0,        // packet has at least one byte
    output reg  [8:0]  pkt_cnt    = 9'd0,        // bytes in the packet, mod 512
    (* DONT_TOUCH = "TRUE" *) output reg [7:0] fd_dbg     = 8'h00,
    (* DONT_TOUCH = "TRUE" *) output reg       slwr_dbg   = 1'b1,
    (* DONT_TOUCH = "TRUE" *) output reg       pktend_dbg = 1'b1
);
    localparam [2:0] GAP = 3'd4;

    (* IOB = "TRUE" *) reg flag_q0 = 1'b0;
    reg flag_q1 = 1'b0;
    always @(posedge clk) begin
        flag_q0 <= fx2_flagb_n;
        flag_q1 <= flag_q0;
    end
    assign room = flag_q1;

    reg [2:0]  gap     = 3'd0;
    reg        end_now = 1'b0;                   // the byte just written was the last of its payload
    reg [15:0] idle    = 16'd0;

    wire can_write = !fifo_empty && !hold && !end_now;
    assign fifo_rd_en = can_write;

    // fd_dbg/slwr_dbg/pktend_dbg are copies of the pad registers: the
    // originals live in the I/O blocks and cannot be routed into the fabric.

    always @(posedge clk) begin
        fx2_pktend_n <= 1'b1;
        pktend_dbg   <= 1'b1;

        if (can_write) begin
            fx2_fd     <= fifo_dout;
            fd_dbg     <= fifo_dout;
            fx2_slwr_n <= 1'b0;
            slwr_dbg   <= 1'b0;
            gap        <= 3'd0;
            idle       <= 16'd0;
            pkt_cnt    <= pkt_cnt + 9'd1;
            partial    <= (pkt_cnt != 9'd511);
            if (pkt_cnt == 9'd511)
                hold <= 1'b1;
            else if (fifo_last)
                end_now <= 1'b1;
        end else begin
            fx2_slwr_n <= 1'b1;
            slwr_dbg   <= 1'b1;
            if (gap != GAP)
                gap <= gap + 3'd1;

            if (hold) begin
                if (gap == GAP && room)
                    hold <= 1'b0;
            end else if (partial) begin
                if (idle != IDLE_FLUSH && !end_now)
                    idle <= idle + 16'd1;
                else if (gap == GAP && room) begin
                    end_now      <= 1'b0;
                    fx2_pktend_n <= 1'b0;
                    pktend_dbg   <= 1'b0;
                    pkt_cnt      <= 9'd0;
                    partial      <= 1'b0;
                    hold         <= 1'b1;
                    gap          <= 3'd0;
                    idle         <= 16'd0;
                end
            end
        end
    end
endmodule
