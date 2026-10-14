// The tape-out top (stereo_chip) through its pins, against the Python model.
// The model's rectified luma of both cameras (cam<N>_rect.hex) goes in byte
// by byte with idle clocks thrown in at random, after the four setting bytes
// of match_cfg.vh; every disparity coming out is compared with match.hex.
// Nothing in the chip has an initial value here: memories and registers
// start unknown, as on silicon, and an unknown at the output is a mismatch.
`timescale 1ns / 1ps
module tb_chip;
    `include "rect_cfg.vh"
    `include "match_cfg.vh"
    localparam W = IMG_W, H = IMG_H;
    parameter FRAMES = 2;
    parameter IDLE_MAX = 3;                 // up to this many idle clocks before a byte

    reg clk = 1'b0;
    always #5 clk = ~clk;

    reg [11:0] rect0 [0:W*H-1];
    reg [11:0] rect1 [0:W*H-1];
    reg [11:0] expect [0:W*H-1];

    reg        rst_n = 1'b0;
    reg [7:0]  din = 8'h00;
    reg [1:0]  din_kind = 2'd0;
    reg        din_ok = 1'b0;
    wire       din_ready, dout_valid, dout_first, busy;
    wire [7:0] dout;

    stereo_chip dut (.clk(clk), .rst_n(rst_n), .din(din), .din_kind(din_kind), .din_ok(din_ok),
                     .din_ready(din_ready), .dout(dout), .dout_valid(dout_valid), .dout_first(dout_first), .busy(busy));

    integer seed = 1, f, i, n, errors = 0, checked = 0, next = 0;
    reg     taken, second = 1'b0, first_flag = 1'b0;
    reg [7:0] low = 8'h00;

    // offer one byte until the chip takes it (a setting is taken at once)
    task send;
        input [1:0] kind;
        input [7:0] data;
        input       ok;
        begin
            n = $random(seed);
            if (IDLE_MAX > 0) repeat (((n % (IDLE_MAX + 1)) + (IDLE_MAX + 1)) % (IDLE_MAX + 1)) @(posedge clk);
            din_kind <= kind;  din <= data;  din_ok <= ok;
            taken = 1'b0;
            while (!taken) begin
                @(negedge clk) taken = din_ready || (kind == 2'd1);
                @(posedge clk);
            end
            din_kind <= 2'd0;
        end
    endtask

    initial begin
        $readmemh("cam0_rect.hex", rect0);
        $readmemh("cam1_rect.hex", rect1);
        $readmemh("match.hex", expect);
        if (IMG_W != 400 || IMG_H != 296 || NDISP != 64 || UNITS != 8) begin
            $display("FAIL: the chip is built for 400 x 296 and 64 disparities, the vectors are not");
            $finish;
        end
        repeat (5) @(posedge clk);
        rst_n <= 1'b1;
        repeat (30) @(posedge clk);
        send(2'd1, DMIN, 1'b0);
        send(2'd1, SGM_P1, 1'b0);
        send(2'd1, SGM_P2, 1'b0);
        send(2'd1, UNIQ, 1'b0);
        for (f = 0; f < FRAMES; f = f + 1)
            for (i = 0; i < W * H; i = i + 1) begin
                send(2'd2, rect0[i][7:0], rect0[i][8]);
                send(2'd3, rect1[i][7:0], rect1[i][8]);
            end
        wait (checked == FRAMES * W * H);
        repeat (100) @(posedge clk);
        if (errors == 0 && !busy)
            $display("PASS: %0d pixels identical through the pins (settings %0d, %0d, %0d, %0d)", checked, DMIN, SGM_P1, SGM_P2, UNIQ);
        else
            $display("FAIL: %0d mismatches in %0d pixels, busy %0d", errors, checked, busy);
        $finish;
    end

    always @(posedge clk) begin
        if (dout_valid === 1'b1) begin
            if (!second) begin
                low <= dout;  first_flag <= dout_first;  second <= 1'b1;
            end else begin
                second <= 1'b0;
                if ({dout[3:0], low} !== expect[next] || dout[7:4] !== 4'h0 || first_flag !== (next == 0)) begin
                    errors = errors + 1;
                    if (errors <= 10)
                        $display("mismatch at pixel %0d (%0d,%0d): got %0d first %0d, expected %0d",
                                 next, next / W, next % W, {dout[3:0], low}, first_flag, expect[next]);
                end
                checked = checked + 1;
                next = (next == W * H - 1) ? 0 : next + 1;
            end
        end else if (dout_valid !== 1'b0 && rst_n && $time > 1000) begin
            errors = errors + 1;
            if (errors <= 10) $display("dout_valid unknown at %0t", $time);
        end
    end

    initial begin
        #(FRAMES * 200000000 + 100000000);
        $display("FAIL: timeout after %0d pixels", checked);
        $finish;
    end
endmodule
