// The depth chain with the chained matcher mini (rtl/mini) in place of the
// full core, as a proof of concept inside the FPGA:
//
//   row scheduler -> 2 x rectify -> 2 x census -> FIFO -> hub <-> SLICES x slice -> bytes out
//
// The pieces are blocks of their own (rtl/blocks), the same ones the block design
// of the Vivado project places. Everything here is FPGA glue except the slices themselves, which are the
// Tiny Tapeout tops (tt_um_stereo_slice) exactly as they would be taped out;
// the "wires" between hub and slices are nets inside the FPGA.
//
// The hub takes a pixel every 34 clocks or so, much slower than the
// rectifiers deliver a row. A row is therefore only started when the FIFO in
// front of the hub is nearly empty; it then holds the whole row. After the
// last row, FLUSH_ROWS rows of nothing push the last rows out of the census.
//
// Output: as depth_core, a 32-byte header and two bytes per pixel. The header
// is sent when the hub is about to put out the first row of a picture.
module depth_mini #(
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
    parameter DMIN = 7,
    parameter SGM_P1 = 15,
    parameter SGM_P2 = 73,
    parameter UNIQ = 3,
    parameter SLICES = 2,
    parameter FLUSH_ROWS = 6,
    parameter SLOT = 10                         // clocks per pixel of the rectifiers
) (
    input  wire          clk,
    input  wire          rst,
    input  wire [9:0]    rows_gray0, rows_gray1,
    input  wire          sof_toggle0, sof_toggle1,
    input  wire [AW-1:0] frame_base0, frame_base1,
    output wire [AW-1:0] rd_addr0, rd_addr1,
    input  wire [7:0]    rd_data0, rd_data1,
    input  wire [31:0]   start_us,
    input  wire          uvc,                   // 1: the bytes are webcam payloads (uvc_lines.v), not the PC tools' stream
    input  wire          out_room,              // webcam mode: the FIFO behind takes a whole row
    output wire          out_wr,
    output wire [7:0]    out_byte,
    output wire          out_last,              // webcam mode: last byte of a payload
    output wire          px_valid,
    output wire [9:0]    px_y, px_x,
    output wire [11:0]   px_disp,
    output wire          overrun,               // a frame began before the one before was through, or a pixel found no room
    output wire [7:0]    chain_n,               // slices the hub found
    output wire [23:0]   dbg                    // for diagnosis: {FIFO level / 2, row, scheduler state, flushing, hub state}
);
    wire             sig_valid, sig_ready, sig_left_ok, sig_right_ok;
    wire [NBITS-1:0] sig_left, sig_right;
    wire             l_valid, l_first;
    wire [7:0]       l_luma;
    wire [19:0]      f_dbg;

    depth_frontend #(.W(W), .H(H), .AW(AW), .LINES0(LINES0), .LINES1(LINES1), .NODES_X(NODES_X),
                     .PREFILTER(PREFILTER), .CENSUS_RY(CENSUS_RY), .CENSUS_RX(CENSUS_RX), .CENSUS_STEP(CENSUS_STEP),
                     .NBITS(NBITS), .FLUSH_ROWS(FLUSH_ROWS), .SLOT(SLOT)) u_front (
        .clk(clk), .rst(rst),
        .rows_gray0(rows_gray0), .rows_gray1(rows_gray1), .sof_toggle0(sof_toggle0), .sof_toggle1(sof_toggle1),
        .frame_base0(frame_base0), .frame_base1(frame_base1), .rd_addr0(rd_addr0), .rd_addr1(rd_addr1),
        .rd_data0(rd_data0), .rd_data1(rd_data1),
        .sig_valid(sig_valid), .sig_ready(sig_ready), .sig_left(sig_left), .sig_left_ok(sig_left_ok),
        .sig_right(sig_right), .sig_right_ok(sig_right_ok),
        .l_valid(l_valid), .l_first(l_first), .l_luma(l_luma), .overrun(overrun), .dbg(f_dbg));

    // ---- hub and slices ---------------------------------------------------------------
    wire [7:0] dl;
    wire [7:0] link [0:SLICES];
    wire       hdr_start;
    wire [3:0] hub_st;
    assign dbg = {f_dbg, hub_st};
    assign link[0] = 8'h00;
    mini_hub #(.N(SLICES), .W(W), .H(H), .NBITS(NBITS), .DMIN(DMIN), .P1(SGM_P1), .P2(SGM_P2), .UNIQ(UNIQ),
               .RX(CENSUS_RX), .RY(CENSUS_RY), .LOOP(1)) u_hub (
        .clk(clk), .rst(rst), .in_valid(sig_valid), .in_ready(sig_ready),
        .in_left(sig_left), .in_left_ok(sig_left_ok),
        .in_right(sig_right), .in_right_ok(sig_right_ok),
        .dl(dl), .ul(link[SLICES]),
        .out_valid(px_valid), .out_y(px_y), .out_x(px_x), .out_disp(px_disp),
        .chain_n(chain_n), .frame_start(hdr_start), .dbg_st(hub_st), .idle());
    genvar p;
    generate
        for (p = 0; p < SLICES; p = p + 1) begin : g_slice
            tt_um_stereo_slice u (.ui_in(dl), .uo_out(link[p + 1]), .uio_in(link[p]), .uio_out(), .uio_oe(),
                                  .ena(1'b1), .clk(clk), .rst_n(!rst));
        end
    endgenerate

    frame_format #(.W(W), .H(H)) u_format (
        .clk(clk), .rst(rst),
        .px_valid(px_valid), .px_y(px_y), .px_x(px_x), .px_disp(px_disp), .hdr_start(hdr_start),
        .l_valid(l_valid), .l_first(l_first), .l_luma(l_luma), .start_us(start_us),
        .uvc(uvc), .out_room(out_room), .out_wr(out_wr), .out_byte(out_byte), .out_last(out_last));
endmodule
