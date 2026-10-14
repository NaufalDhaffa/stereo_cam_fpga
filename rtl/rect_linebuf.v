// Line buffer in front of the rectifier: the last LINES rows of one camera's
// luma, written as the camera delivers them and read at random by the
// rectifier (dual-clock block RAM).
//
// Rows are stored back to back in a ring of LINES * W bytes that is never
// reset, so a frame's rows may start anywhere in it. `frame_base` is the
// address of row 0 of the current frame and `rows_done` the number of its
// rows written completely. Both are in the write clock domain: frame_base
// only changes at the start of a frame, rows_gray counts up by one in Gray
// code, so the reader may take them through ordinary synchronisers.
//
// The memory is built from 4096-byte slices (one block RAM each), exactly as
// many as the ring needs; written as one array, synthesis rounds the ring up
// to the next power of two.
module rect_linebuf #(
    parameter W     = 800,
    parameter LINES = 48,
    parameter AW    = 16                    // enough for LINES * W
) (
    input  wire          wclk,
    input  wire          wr_sof,            // one cycle, before the first pixel of a frame
    input  wire          wr_en,             // one luma pixel, row by row
    input  wire [7:0]    wr_data,
    output reg  [AW-1:0] frame_base = {AW{1'b0}},
    output reg  [9:0]    rows_done  = 10'd0,
    output reg  [9:0]    rows_gray  = 10'd0,    // rows_done one clock later, Gray coded
    output reg           sof_toggle = 1'b0,     // flips with every frame start

    input  wire          rclk,
    input  wire [AW-1:0] rd_addr,
    output wire [7:0]    rd_data            // one clock after rd_addr
);
    localparam [AW-1:0] LAST = LINES * W - 1;
    localparam NB = (LINES * W + 4095) / 4096;

    reg [AW-1:0] waddr = {AW{1'b0}};
    reg [9:0]    wx    = 10'd0;
    wire         do_wr = wr_en && !wr_sof;
    // address of the row after the one being written, kept ready for a frame that starts mid-row
    reg  [AW-1:0] next_row = W;
    wire [AW:0]   after = {1'b0, next_row} + W;

    always @(posedge wclk) begin
        rows_gray <= rows_done ^ (rows_done >> 1);
        if (wr_sof) begin
            sof_toggle <= ~sof_toggle;
            // A frame always starts on a row boundary of the ring; a row cut
            // short by the previous frame is simply abandoned.
            if (wx != 10'd0)
                waddr <= next_row;
            frame_base <= (wx == 10'd0) ? waddr : next_row;
            wx        <= 10'd0;
            rows_done <= 10'd0;
        end else if (wr_en) begin
            waddr <= (waddr == LAST) ? {AW{1'b0}} : waddr + 1'b1;
            if (wx == W - 1) begin
                wx        <= 10'd0;
                rows_done <= rows_done + 10'd1;
            end else
                wx <= wx + 10'd1;
        end
    end

    wire [7:0]       q [0:NB-1];
    reg  [AW-13:0]   sel = 0;
    always @(posedge rclk)
        sel <= rd_addr[AW-1:12];
    assign rd_data = q[sel];

    genvar b;
    generate
        for (b = 0; b < NB; b = b + 1) begin : g_slice
            (* ram_style = "block" *) reg [7:0] m [0:4095];
            reg [7:0] r = 8'h00;
            always @(posedge wclk)
                if (do_wr && waddr[AW-1:12] == b) m[waddr[11:0]] <= wr_data;
            always @(posedge rclk)
                r <= m[rd_addr[11:0]];
            assign q[b] = r;
        end
    endgenerate
endmodule
