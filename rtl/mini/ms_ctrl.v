// Matcher slice, block 1 of 5: the down-link receiver, the settings, and the
// clock and flags of the slot being computed. See mini_slice.v for the frames.
module ms_ctrl #(
    parameter NBITS = 44
) (
    input  wire         clk,
    input  wire         rst,
    input  wire [7:0]   ui,
    input  wire [2:0]   pos_in,             // what the slice below shows while the chain numbers itself
    output reg          run,
    output reg  [2:0]   pos, n,
    output reg  [6:0]   p1, p2,
    output reg  [3:0]   uq,
    output reg  [6:0]   gmin, kstar, up_edge,
    output wire [NBITS:0] in_left, in_right,    // the signatures waiting for their slot
    output wire         load,               // a slot starts: they become the ones in work
    output reg          sg_first,
    output reg          act,                // a slot has been started since reset
    output reg  [6:0]   uc,                 // clocks since the start
    output wire         scan,               // one disparity per clock, 16 clocks
    output wire [3:0]   j,
    output reg          w_real,             // the arriving pixel exists (not a slot after the row)
    output reg          b_v, b_first, b_real, b_use     // about the pixel being aggregated
);
    reg [7:0]  ui_r;
    reg [6:0]  ph;
    reg [2:0]  ftype;
    reg        hn_valid, hn_first, hn_real, hn_use;     // header of the frame arriving
    reg        sg_valid, sg_real, sg_use;               // header of the frame whose signatures are waiting
    reg        w_first;
    reg [48:0] left_sr, right_sr;

    wire [6:0] ph_left  = ph - 7'd3 - {4'd0, n};
    wire [6:0] ph_right = ph - 7'd10 - {4'd0, n} - {1'b0, pos, 3'b000} + {4'd0, pos};   // 7 clocks per slice
    wire       start    = (ftype == 3'd1) && (ph == 7'd3 + {4'd0, n});
    assign load     = start && sg_valid;
    assign in_left  = left_sr[NBITS:0];
    assign in_right = right_sr[NBITS:0];
    assign scan     = act && (uc < 7'd16);
    assign j        = uc[3:0];

    always @(posedge clk) begin
        ui_r <= ui;
        if (ui[7])              ph <= 7'd0;
        else if (ph != 7'd127)  ph <= ph + 7'd1;
        if (uc != 7'd127)       uc <= uc + 7'd1;
        if (!run)               pos <= pos_in;

        if (ph == 7'd0) begin
            ftype <= ui_r[6:4];
            if (ui_r[6:4] == 3'd1) begin
                run <= 1'b1;
                hn_valid <= 1'b1;  hn_first <= ui_r[0];  hn_real <= ui_r[1];  hn_use <= ui_r[2];
            end
            if (ui_r[6:4] == 3'd2) begin
                run <= 1'b0;  hn_valid <= 1'b0;  sg_valid <= 1'b0;  act <= 1'b0;
            end
        end else if (ftype == 3'd2) begin
            if (ph == 7'd1) p1 <= ui_r[6:0];
            if (ph == 7'd2) p2 <= ui_r[6:0];
            if (ph == 7'd3) uq <= ui_r[3:0];
            if (ph == 7'd4) n  <= ui_r[2:0];
        end else if (ftype == 3'd1) begin
            if (ph == 7'd1) gmin  <= ui_r[6:0];
            if (ph == 7'd2) kstar <= ui_r[6:0];
            if (ph == 7'd3 + {4'd0, pos}) up_edge <= ui_r[6:0];
            if (ph_left  < 7'd7) left_sr [ph_left  * 7 +: 7] <= ui_r[6:0];
            if (ph_right < 7'd7) right_sr[ph_right * 7 +: 7] <= ui_r[6:0];
        end

        if (start) begin
            sg_valid <= hn_valid;  sg_first <= hn_first;  sg_real <= hn_real;  sg_use <= hn_use;
            if (sg_valid) begin
                act     <= 1'b1;
                uc      <= 7'd0;
                w_real  <= sg_real;
                b_v     <= !sg_first;
                w_first <= sg_first;
                b_first <= w_first;
                b_real  <= w_real;
                b_use   <= sg_use;
            end
        end

        if (rst) begin
            ph <= 7'd127;  uc <= 7'd127;  ftype <= 3'd0;  run <= 1'b0;  act <= 1'b0;
            hn_valid <= 1'b0;  sg_valid <= 1'b0;  w_real <= 1'b0;  w_first <= 1'b0;  b_v <= 1'b0;  b_real <= 1'b0;
            p1 <= 7'd15;  p2 <= 7'd73;  uq <= 4'd3;  n <= 3'd1;  pos <= 3'd0;
        end
    end
endmodule
