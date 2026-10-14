// The hub of the matcher chain with this build's constants (match_cfg.vh, rect_cfg.vh):
// what an FPGA or microcontroller next to the chips would be. SLICES (match_cfg.vh) is the
// number of tt_um_stereo_slice blocks wired to it: the down-link `dl` goes to all of them, the
// up-link `ul` comes from the top one.
module chain_hub (
    input  wire        clk,
    input  wire        rst,
    // signatures from the front end
    input  wire        sig_valid,
    output wire        sig_ready,
    input  wire [43:0] sig_left,
    input  wire        sig_left_ok,
    input  wire [43:0] sig_right,
    input  wire        sig_right_ok,
    // the chain
    output wire [7:0]  dl,                      // to ui_in of every slice
    input  wire [7:0]  ul,                      // from uo_out of the top slice
    output wire        slice_rst_n,             // rst_n of the slices
    output wire        slice_ena,               // ena of the slices
    output wire [7:0]  chain_bottom,            // uio_in of the bottom slice: nothing below it
    // disparity of every pixel
    output wire        px_valid,
    output wire [9:0]  px_y, px_x,
    output wire [11:0] px_disp,
    output wire        frame_start,             // the first row of a picture will come out in about 80 clocks
    output wire [7:0]  chain_n,                 // slices the hub found
    output wire [3:0]  state                    // for diagnosis
);
    `include "rect_cfg.vh"
    `include "match_cfg.vh"

    assign slice_rst_n  = !rst;
    assign slice_ena    = 1'b1;
    assign chain_bottom = 8'h00;

    mini_hub #(.N(SLICES), .W(IMG_W), .H(IMG_H), .NBITS(CENSUS_BITS), .DMIN(DMIN), .P1(SGM_P1), .P2(SGM_P2),
               .UNIQ(UNIQ), .RX(CENSUS_RX), .RY(CENSUS_RY), .LOOP(1)) u_hub (
        .clk(clk), .rst(rst), .in_valid(sig_valid), .in_ready(sig_ready),
        .in_left(sig_left), .in_left_ok(sig_left_ok),
        .in_right(sig_right), .in_right_ok(sig_right_ok),
        .dl(dl), .ul(ul),
        .out_valid(px_valid), .out_y(px_y), .out_x(px_x), .out_disp(px_disp),
        .chain_n(chain_n), .frame_start(frame_start), .dbg_st(state), .idle());
endmodule
