// Matcher slice, block 5 of 5: the up-link. The record of a slot passes
// through every slice, one clock each; this block merges the slice's own
// values into it, keeps what the slice below hands up, and in the top slice
// finishes the pixel before (sub-pixel offset, uniqueness). See mini_slice.v.
module ms_up (
    input  wire        clk,
    input  wire        rst,
    input  wire [7:0]  uio,
    output reg  [7:0]  uo,
    output reg  [7:0]  uio_r,
    input  wire        run, act, load,
    input  wire [6:0]  uc,
    input  wire [2:0]  pos, n,
    input  wire [3:0]  uq,
    input  wire [6:0]  lmin,
    input  wire [7:0]  best_s,
    input  wire [6:0]  best_k,
    input  wire [6:0]  l_bot, l_top,
    input  wire [14:0] rec_top,
    input  wire [7:0]  sec, s0, s2,
    output reg  [6:0]  dn_edge,
    output reg  [14:0] rec_in
);
    wire       top    = (pos == n - 3'd1);
    wire       bottom = (pos == 3'd0);
    wire [6:0] bi     = uc - 7'd17 - {4'd0, pos};
    wire       up_on  = act && (uc >= 7'd17 + {4'd0, pos}) && (bi <= 7'd10 + {4'd0, n});
    wire [6:0] n7     = {4'd0, n};
    reg        own_wins;
    reg [7:0]  mw_s, pw_s;                  // winner as it left this slice: this pixel, the one before
    reg [6:0]  mw_k, pw_k;
    reg [7:0]  m_sec, m_s0, m_s2;
    reg [7:0]  rin_s;
    wire       b_own = bottom || (best_s < uio_r);

    // the top slice finishes the pixel before: sub-pixel offset and uniqueness
    wire [8:0]  f_second = m_sec[7] ? 9'd511 : {2'b00, m_sec[6:0]};
    wire signed [10:0] f_a = $signed({4'b0000, m_s0[6:0]}) - $signed({4'b0000, m_s2[6:0]});
    wire [10:0] f_b = {4'b0000, m_s0[6:0]} + {4'b0000, m_s2[6:0]} - {3'b000, pw_s[6:0], 1'b0};
    wire [13:0] f_margin = {1'b0, f_second, 4'b0000} - {3'b000, pw_s[6:0], 4'b0000};
    wire        f_uniq = f_margin >= f_second * uq;
    wire signed [16:0] pbs = $signed({6'b000000, f_b});
    wire signed [16:0] pt  = f_a * 17'sd16 + ((f_a > 0) ? pbs : (f_a < 0) ? -pbs : 17'sd0);
    // offset = floor(pt / (2 pbs)), limited to -8 .. 8: a short division (the quotient needs only
    // three bits once "8 or more" is known), instead of comparing pt with all 17 candidates
    wire        p_neg = pt[16];
    wire [16:0] p_mag = p_neg ? -pt : pt;
    wire [12:0] p_dv  = {1'b0, f_b, 1'b0};                                     // 2 pbs
    wire [17:0] p_u   = {1'b0, p_mag} + (p_neg ? {5'd0, p_dv} - 18'd1 : 18'd0); // ceiling for negative pt
    wire        p_sat = p_u >= {2'b00, p_dv, 3'b000};
    wire        p_b2  = p_u >= {3'b000, p_dv, 2'b00};
    wire [17:0] p_r2  = p_b2 ? p_u - {3'b000, p_dv, 2'b00} : p_u;
    wire        p_b1  = p_r2 >= {4'b0000, p_dv, 1'b0};
    wire [17:0] p_r1  = p_b1 ? p_r2 - {4'b0000, p_dv, 1'b0} : p_r2;
    wire        p_b0  = p_r1 >= {5'b00000, p_dv};
    wire [3:0]  p_q   = p_sat ? 4'd8 : {1'b0, p_b2, p_b1, p_b0};
    wire signed [5:0] f_off = (f_b == 11'd0) ? 6'sd0 : p_neg ? -$signed({2'b00, p_q}) : $signed({2'b00, p_q});
    // its inputs settle two clocks before it is sent: kept one clock in a register, so that the
    // division has a whole clock instead of the half before the negative-edge output register
    reg [4:0] f_off_r;

    reg [7:0] ucomb;
    always @* begin
        ucomb = 8'h00;
        if (!run)
            ucomb = uio_r + 8'd1;
        else if (up_on) begin
            if (bi == 7'd0)                 ucomb = {1'b0, (bottom || lmin < uio_r[6:0]) ? lmin : uio_r[6:0]};
            else if (bi == 7'd1)            ucomb = b_own ? best_s : uio_r;
            else if (bi == 7'd2)            ucomb = own_wins ? {1'b0, best_k} : uio_r;
            else if (bi < 7'd3 + n7)        ucomb = (bi == 7'd3 + {4'd0, pos}) ? {1'b0, l_bot} : uio_r;
            else if (bi == 7'd3 + n7)       ucomb = {1'b0, l_top};
            else if (bi == 7'd4 + n7)       ucomb = rec_top[14:7];
            else if (bi == 7'd5 + n7)       ucomb = {1'b0, rec_top[6:0]};
            else if (bi == 7'd6 + n7)       ucomb = (bottom || sec < uio_r) ? sec : uio_r;
            else if (bi == 7'd7 + n7)       ucomb = (!bottom && uio_r[7]) ? uio_r : s0;
            else if (bi == 7'd8 + n7)       ucomb = (!bottom && uio_r[7]) ? uio_r : s2;
            else if (bi == 7'd9 + n7)       ucomb = top ? {f_uniq, pw_k} : 8'h00;
            else                            ucomb = top ? {3'b000, f_off_r} : 8'h00;
        end
    end
    always @(negedge clk) uo <= rst ? 8'h00 : ucomb;

    always @(posedge clk) begin
        uio_r <= uio;
        f_off_r <= f_off[4:0];
        if (load) begin
            pw_s <= mw_s;
            pw_k <= mw_k;
        end
        if (run && up_on) begin
            if (bi == 7'd1) begin own_wins <= b_own;  mw_s <= ucomb; end
            if (bi == 7'd2) mw_k <= ucomb[6:0];
            if (bi == 7'd3 + n7) dn_edge <= bottom ? 7'd127 : uio_r[6:0];
            if (bi == 7'd4 + n7) rin_s   <= bottom ? 8'h80  : uio_r;
            if (bi == 7'd5 + n7) rec_in  <= {rin_s, bottom ? 7'd0 : uio_r[6:0]};
            if (bi == 7'd6 + n7) m_sec   <= ucomb;
            if (bi == 7'd7 + n7) m_s0    <= ucomb;
            if (bi == 7'd8 + n7) m_s2    <= ucomb;
        end
        if (rst) begin
            rec_in <= 15'h4000;  dn_edge <= 7'd127;
        end
    end
endmodule
