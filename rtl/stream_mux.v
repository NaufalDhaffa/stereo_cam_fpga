// Merges three byte streams into one, in fixed 512-byte chunks (the format of
// cam_mux.v, with a third stream):
//
//   byte 0      0xA5
//   byte 1      stream number (0, 1 or 2)
//   byte 2..3   number of valid payload bytes, 1..508 (LE)
//   byte 4..511 payload, zero padded
//
// A stream is served when it has a full payload waiting, or after FLUSH
// cycles with less (the tail of a frame). Streams that are ready together
// take turns.
module stream_mux #(
    parameter        AW      = 13,
    parameter [8:0]  PAYLOAD = 9'd508,
    parameter [19:0] FLUSH   = 20'd400000      // 2 ms at 200 MHz
) (
    input  wire        clk,
    input  wire        rst,
    input  wire [7:0]  c0_dout, c1_dout, c2_dout,
    input  wire [AW:0] c0_count, c1_count, c2_count,
    output wire        c0_rd, c1_rd, c2_rd,
    input  wire        out_full,
    output reg         out_wr  = 1'b0,
    output reg  [7:0]  out_din = 8'h00
);
    localparam [2:0] S_SETTLE = 3'd0, S_PICK = 3'd1, S_HDR = 3'd2, S_DATA = 3'd3, S_PAD = 3'd4, S_SETTLE2 = 3'd5;

    reg [2:0]  state = S_SETTLE;
    reg [1:0]  sel = 2'd0, last = 2'd2;
    reg [8:0]  n = 9'd0, left = 9'd0, pad = 9'd0;
    reg [1:0]  hidx = 2'd0;
    // Flush timers: they start at 2^20 - FLUSH and stop when the carry reaches bit 20, so
    // "FLUSH cycles have passed" is one bit and not a 20-bit comparison (200 MHz clock).
    localparam [20:0] T0 = 21'h100000 - {1'b0, FLUSH};
    reg [20:0] wait0 = T0, wait1 = T0, wait2 = T0;
    reg [2:0]  full = 3'b000, nz = 3'b000;      // one clock behind the counts
    reg [2:0]  rdy = 3'b000;                    // two clocks behind (it uses nz)
    reg [8:0]  cnt_sel = 9'd0;

    wire [7:0] sel_dout = (sel == 2'd0) ? c0_dout : (sel == 2'd1) ? c1_dout : c2_dout;
    wire       take     = (state == S_DATA) && !out_full;
    assign c0_rd = take && (sel == 2'd0);
    assign c1_rd = take && (sel == 2'd1);
    assign c2_rd = take && (sel == 2'd2);

    // the two streams after the one served last, in turn, then that one again
    wire [1:0] first  = (last == 2'd2) ? 2'd0 : last + 2'd1;
    wire [1:0] second = (first == 2'd2) ? 2'd0 : first + 2'd1;
    wire [1:0] pick   = rdy[first] ? first : rdy[second] ? second : last;

    always @(posedge clk) begin
        out_wr <= 1'b0;

        nz <= {c2_count != 0, c1_count != 0, c0_count != 0};
        if (!nz[0])          wait0 <= T0;
        else if (!wait0[20]) wait0 <= wait0 + 21'd1;
        if (!nz[1])          wait1 <= T0;
        else if (!wait1[20]) wait1 <= wait1 + 21'd1;
        if (!nz[2])          wait2 <= T0;
        else if (!wait2[20]) wait2 <= wait2 + 21'd1;

        full <= {c2_count >= PAYLOAD, c1_count >= PAYLOAD, c0_count >= PAYLOAD};
        rdy  <= {(c2_count >= PAYLOAD) || (nz[2] && wait2[20]),
                 (c1_count >= PAYLOAD) || (nz[1] && wait1[20]),
                 (c0_count >= PAYLOAD) || (nz[0] && wait0[20])};
        cnt_sel <= (sel == 2'd0) ? c0_count[8:0] : (sel == 2'd1) ? c1_count[8:0] : c2_count[8:0];

        case (state)
            S_SETTLE:                               // let `rdy` catch up with what was just taken
                state <= S_SETTLE2;
            S_SETTLE2:
                state <= S_PICK;
            S_PICK:
                if (rdy != 3'b000) begin
                    sel   <= pick;
                    last  <= pick;
                    hidx  <= 2'd0;
                    state <= S_HDR;
                end
            S_HDR:
                if (!out_full) begin
                    out_wr <= 1'b1;
                    case (hidx)
                        2'd0: out_din <= 8'hA5;
                        2'd1: begin
                            out_din <= {6'd0, sel};
                            // `full` and `cnt_sel` are for the chosen stream by now; the count only grows meanwhile
                            // (cnt_sel is the low bits of a count that may have passed 511: still not
                            // more than is there, and never more than a payload)
                            n <= (full[sel] || cnt_sel > PAYLOAD) ? PAYLOAD : cnt_sel;
                        end
                        2'd2: out_din <= n[7:0];
                        2'd3: begin
                            out_din <= {7'd0, n[8]};
                            left    <= n;
                            pad     <= PAYLOAD - n;
                            state   <= S_DATA;
                            case (sel)
                                2'd0:    wait0 <= T0;
                                2'd1:    wait1 <= T0;
                                default: wait2 <= T0;
                            endcase
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
                        state <= (pad != 0) ? S_PAD : S_SETTLE;
                end
            S_PAD:
                if (!out_full) begin
                    out_wr  <= 1'b1;
                    out_din <= 8'h00;
                    pad     <= pad - 9'd1;
                    if (pad == 9'd1)
                        state <= S_SETTLE;
                end
            default: state <= S_SETTLE;
        endcase

        if (rst) begin
            state  <= S_SETTLE;
            out_wr <= 1'b0;
        end
    end
endmodule
