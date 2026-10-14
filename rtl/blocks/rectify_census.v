// depth_frontend with this build's constants (rect_cfg.vh, from the calibration):
// the block of the block design that turns the two cameras' rows into rectified
// census signatures for the chain's hub.
module rectify_census (
    input  wire        clk,
    input  wire        rst,
    // line buffers of the two cameras
    input  wire [9:0]  rows_gray0, rows_gray1,
    input  wire        sof_toggle0, sof_toggle1,
    input  wire [15:0] frame_base0, frame_base1,
    output wire [15:0] rd_addr0, rd_addr1,
    input  wire [7:0]  rd_data0, rd_data1,
    // signatures to the hub
    output wire        sig_valid,
    input  wire        sig_ready,
    output wire [43:0] sig_left,
    output wire        sig_left_ok,
    output wire [43:0] sig_right,
    output wire        sig_right_ok,
    // rectified left picture, for the webcam output
    output wire        l_valid,
    output wire        l_first,
    output wire [7:0]  l_luma,
    output wire        overrun,
    output wire [19:0] dbg
);
    `include "rect_cfg.vh"
    // two more rows in the line buffers than the calibration asks for: see cam_input.v
    localparam BUF0 = LINES0 + (MINI ? 2 : 0), BUF1 = LINES1 + (MINI ? 2 : 0);

    depth_frontend #(.W(IMG_W), .H(IMG_H), .AW(16), .LINES0(BUF0), .LINES1(BUF1), .NODES_X(NODES_X),
                     .PREFILTER(PREFILTER), .CENSUS_RY(CENSUS_RY), .CENSUS_RX(CENSUS_RX), .CENSUS_STEP(CENSUS_STEP),
                     .NBITS(CENSUS_BITS)) u_front (
        .clk(clk), .rst(rst),
        .rows_gray0(rows_gray0), .rows_gray1(rows_gray1), .sof_toggle0(sof_toggle0), .sof_toggle1(sof_toggle1),
        .frame_base0(frame_base0), .frame_base1(frame_base1), .rd_addr0(rd_addr0), .rd_addr1(rd_addr1),
        .rd_data0(rd_data0), .rd_data1(rd_data1),
        .sig_valid(sig_valid), .sig_ready(sig_ready), .sig_left(sig_left), .sig_left_ok(sig_left_ok),
        .sig_right(sig_right), .sig_right_ok(sig_right_ok),
        .l_valid(l_valid), .l_first(l_first), .l_luma(l_luma), .overrun(overrun), .dbg(dbg));
endmodule
