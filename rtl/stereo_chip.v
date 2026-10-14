// Pin-level wrapper of the stereo matching core: the top of the tape-out.
//
// 25 signal pins, all sampled or driven on the rising edge of clk, with a
// ready/valid hand-shake on the way in, so the chip can be wired to an FPGA
// or a microcontroller with loose wires and a slow clock; no pair of signals
// has to match in length.
//
//   clk          in   the only clock
//   rst_n        in   reset, low; may be released at any time
//   din[7:0]     in   a byte for the chip
//   din_kind[1:0] in  what the byte is: 0 nothing, 1 setting, 2 left pixel, 3 right pixel
//   din_ok       in   with a pixel: the pixel is a real one (0: outside the rectified picture)
//   din_ready    out  the byte offered in this clock is taken
//   dout[7:0]    out  disparity, low byte then high byte (4 bits)
//   dout_valid   out  dout carries a byte (two clocks in a row per pixel)
//   dout_first   out  with dout_valid: the bytes belong to pixel (0, 0) of a frame
//   busy         out  a frame is on its way through the chip
//
// Pixels: for every pixel first the left luma (kind 2), then the right one
// (kind 3), in raster order, 400 x 296 per frame. A byte is taken in a clock
// in which din_kind is not 0 and din_ready is high; otherwise keep it there.
//
// Settings: four bytes of kind 1, taken at any time (din_ready does not
// matter): smallest disparity (0..63), penalty P1, penalty P2 (0..127),
// uniqueness in sixteenths (0..15). After reset they are 14, 15, 73, 3.
// The pixel that follows a setting byte is taken as pixel (0, 0), so send
// settings between frames; one setting byte is also the way to start over.
//
// Disparity: 12 bits in 1/16 pixel, 0 = no measurement. Pixels come out in
// raster order, at least 10 clocks apart, about 5 rows after they went in.
// There is no hand-shake on the way out.
module stereo_chip (
    input  wire       clk,
    input  wire       rst_n,
    input  wire [7:0] din,
    input  wire [1:0] din_kind,
    input  wire       din_ok,
    output wire       din_ready,
    output reg  [7:0] dout,
    output reg        dout_valid,
    output reg        dout_first,
    output wire       busy
);
    // ---- reset: taken into the clock, held for 16 clocks ----------------------
    reg [1:0] rs;
    reg [4:0] hold;
    wire      rst = !hold[4];
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            rs   <= 2'b00;
            hold <= 5'd0;
        end else begin
            rs <= {rs[0], 1'b1};
            if (rs[1] && !hold[4]) hold <= hold + 5'd1;
        end
    end

    // ---- settings and the pixel being put together -------------------------------
    reg  [31:0] cfg;                            // the last four setting bytes, the first one on top
    wire [5:0]  cfg_dmin = cfg[29:24];
    wire [6:0]  cfg_p1   = cfg[22:16];
    wire [6:0]  cfg_p2   = cfg[14:8];
    wire [3:0]  cfg_uniq = cfg[3:0];
    reg [7:0] left, right;
    reg       left_ok, right_ok;
    reg       have;                             // a complete pixel waits for the core
    reg       sof;                              // the next pixel is the first of a frame
    wire      core_ready, core_idle;
    wire      give = have && core_ready;
    assign    din_ready = !have && !rst;

    always @(posedge clk) begin
        if (give) begin
            have <= 1'b0;
            sof  <= 1'b0;
        end
        if (din_kind == 2'd1) begin
            cfg <= {cfg[23:0], din};
            sof <= 1'b1;
        end
        if (din_kind == 2'd2 && din_ready) begin
            left    <= din;
            left_ok <= din_ok;
        end
        if (din_kind == 2'd3 && din_ready) begin
            right    <= din;
            right_ok <= din_ok;
            have     <= 1'b1;
        end
        if (rst) begin
            cfg  <= {8'd14, 8'd15, 8'd73, 8'd3};
            have <= 1'b0;  sof <= 1'b1;
        end
    end

    // ---- the core ------------------------------------------------------------------
    wire        o_valid;
    wire [9:0]  o_y, o_x;
    wire [11:0] o_disp;
    stereo_core u_core (
        .clk(clk), .rst(rst),
        .cfg_dmin(cfg_dmin), .cfg_p1(cfg_p1), .cfg_p2(cfg_p2), .cfg_uniq(cfg_uniq),
        .in_valid(have), .in_ready(core_ready), .in_sof(sof),
        .in_left(left), .in_left_ok(left_ok), .in_right(right), .in_right_ok(right_ok),
        .out_valid(o_valid), .out_y(o_y), .out_x(o_x), .out_disp(o_disp), .idle(core_idle));
    assign busy = !core_idle || have;

    // ---- disparity out, two bytes ------------------------------------------------------
    reg       second;
    reg [3:0] high;
    always @(posedge clk) begin
        dout_valid <= 1'b0;
        second     <= 1'b0;
        if (o_valid) begin
            dout       <= o_disp[7:0];
            high       <= o_disp[11:8];
            dout_valid <= 1'b1;
            dout_first <= (o_y == 10'd0) && (o_x == 10'd0);
            second     <= 1'b1;
        end else if (second) begin
            dout       <= {4'b0000, high};
            dout_valid <= 1'b1;
        end
        if (rst) begin
            dout_valid <= 1'b0;  second <= 1'b0;
        end
    end
endmodule
