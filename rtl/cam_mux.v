// Merges the byte streams of two cameras into one, in fixed 512-byte chunks.
//
//   byte 0      0xA5
//   byte 1      camera number (0 or 1)
//   byte 2..3   number of valid payload bytes, 1..508 (LE)
//   byte 4..511 payload, zero padded
//
// A chunk is exactly one USB high-speed packet, and the fixed size lets the
// receiver find chunk boundaries from any point in the stream: 0xA5 repeats
// every 512 bytes. A camera is served when it has a full payload waiting, or
// after FLUSH cycles with less (the tail of a frame).
module cam_mux #(
    parameter        AW      = 14,
    parameter [8:0]  PAYLOAD = 9'd508,
    parameter [19:0] FLUSH   = 20'd400000      // 2 ms at 200 MHz
) (
    input  wire        clk,
    input  wire        rst,
    input  wire [7:0]  c0_dout,
    input  wire [AW:0] c0_count,
    output wire        c0_rd,
    input  wire [7:0]  c1_dout,
    input  wire [AW:0] c1_count,
    output wire        c1_rd,
    input  wire        out_full,
    output reg         out_wr  = 1'b0,
    output reg  [7:0]  out_din = 8'h00,
    // for the ILA
    output reg  [1:0]  state = 2'd0,
    output reg         sel   = 1'b0
);
    localparam [1:0] S_PICK = 2'd0, S_HDR = 2'd1, S_DATA = 2'd2, S_PAD = 2'd3;

    reg [8:0]  n = 9'd0, left = 9'd0, pad = 9'd0;
    reg [1:0]  hidx = 2'd0;
    reg        prefer = 1'b0;
    reg [19:0] wait0 = 20'd0, wait1 = 20'd0;

    wire full0 = (c0_count >= PAYLOAD);
    wire full1 = (c1_count >= PAYLOAD);
    wire rdy0  = full0 || (c0_count != 0 && wait0 == FLUSH);
    wire rdy1  = full1 || (c1_count != 0 && wait1 == FLUSH);

    wire [7:0] sel_dout = sel ? c1_dout : c0_dout;
    wire       take     = (state == S_DATA) && !out_full;
    assign c0_rd = take && !sel;
    assign c1_rd = take &&  sel;

    always @(posedge clk) begin
        out_wr <= 1'b0;

        if (c0_count == 0)        wait0 <= 20'd0;
        else if (wait0 != FLUSH)  wait0 <= wait0 + 20'd1;
        if (c1_count == 0)        wait1 <= 20'd0;
        else if (wait1 != FLUSH)  wait1 <= wait1 + 20'd1;

        case (state)
            S_PICK:
                if (rdy0 || rdy1) begin
                    // alternate when both are ready
                    sel    <= (rdy0 && rdy1) ? prefer : rdy1;
                    prefer <= (rdy0 && rdy1) ? ~prefer : rdy0;
                    hidx   <= 2'd0;
                    state  <= S_HDR;
                end
            S_HDR:
                if (!out_full) begin
                    out_wr <= 1'b1;
                    case (hidx)
                        2'd0: begin
                            out_din <= 8'hA5;
                            // sample the count once; it only grows meanwhile
                            if (sel) n <= full1 ? PAYLOAD : c1_count[8:0];
                            else     n <= full0 ? PAYLOAD : c0_count[8:0];
                        end
                        2'd1: out_din <= {7'd0, sel};
                        2'd2: out_din <= n[7:0];
                        2'd3: begin
                            out_din <= {7'd0, n[8]};
                            left    <= n;
                            pad     <= PAYLOAD - n;
                            state   <= S_DATA;
                            if (sel) wait1 <= 20'd0; else wait0 <= 20'd0;
                        end
                    endcase
                    hidx <= hidx + 2'd1;
                end
            S_DATA:
                if (!out_full) begin
                    out_wr  <= 1'b1;
                    out_din <= sel_dout;
                    left    <= left - 9'd1;
                    if (left == 9'd1)
                        state <= (pad != 0) ? S_PAD : S_PICK;
                end
            S_PAD:
                if (!out_full) begin
                    out_wr  <= 1'b1;
                    out_din <= 8'h00;
                    pad     <= pad - 9'd1;
                    if (pad == 9'd1)
                        state <= S_PICK;
                end
        endcase

        if (rst) begin
            state  <= S_PICK;
            out_wr <= 1'b0;
        end
    end
endmodule
