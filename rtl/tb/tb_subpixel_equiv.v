// The sub-pixel offset of ms_up.v as a short division, against the 17 comparators it replaced:
// every combination of the three inputs (m_s0, m_s2, pw_s: 7 bits each, 2^21 cases).
//   iverilog -g2012 -o eq rtl/tb/tb_subpixel_equiv.v && vvp eq
`timescale 1ns / 1ps
module tb_subpixel_equiv;
    reg [6:0] s0, s2, pw;
    integer errors = 0, nonzero = 0;

    // as before: 17 comparisons
    function signed [5:0] off_old;
        input [6:0] a0, a2, w;
        reg signed [10:0] f_a;
        reg [10:0] f_b;
        reg signed [16:0] pbs, pt;
        reg [4:0] fit;
        integer q5;
        begin
            f_a = $signed({4'b0000, a0}) - $signed({4'b0000, a2});
            f_b = {4'b0000, a0} + {4'b0000, a2} - {3'b000, w, 1'b0};
            pbs = $signed({6'b000000, f_b});
            pt  = f_a * 17'sd16 + ((f_a > 0) ? pbs : (f_a < 0) ? -pbs : 17'sd0);
            fit = 5'd0;
            for (q5 = 0; q5 < 17; q5 = q5 + 1)
                if ((q5 - 8) * 2 * pbs <= pt) fit = q5 + 1;
            off_old = (f_b == 11'd0) ? 6'sd0 : (fit == 5'd0) ? -6'sd8 : $signed({1'b0, fit}) - 6'sd9;
        end
    endfunction

    // now: the division of ms_up.v
    function signed [5:0] off_new;
        input [6:0] a0, a2, w;
        reg signed [10:0] f_a;
        reg [10:0] f_b;
        reg signed [16:0] pbs, pt;
        reg p_neg, p_sat, p_b2, p_b1, p_b0;
        reg [16:0] p_mag;
        reg [12:0] p_dv;
        reg [17:0] p_u, p_r2, p_r1;
        reg [3:0] p_q;
        begin
            f_a = $signed({4'b0000, a0}) - $signed({4'b0000, a2});
            f_b = {4'b0000, a0} + {4'b0000, a2} - {3'b000, w, 1'b0};
            pbs = $signed({6'b000000, f_b});
            pt  = f_a * 17'sd16 + ((f_a > 0) ? pbs : (f_a < 0) ? -pbs : 17'sd0);
            p_neg = pt[16];
            p_mag = p_neg ? -pt : pt;
            p_dv  = {1'b0, f_b, 1'b0};
            p_u   = {1'b0, p_mag} + (p_neg ? {5'd0, p_dv} - 18'd1 : 18'd0);
            p_sat = p_u >= {2'b00, p_dv, 3'b000};
            p_b2  = p_u >= {3'b000, p_dv, 2'b00};
            p_r2  = p_b2 ? p_u - {3'b000, p_dv, 2'b00} : p_u;
            p_b1  = p_r2 >= {4'b0000, p_dv, 1'b0};
            p_r1  = p_b1 ? p_r2 - {4'b0000, p_dv, 1'b0} : p_r2;
            p_b0  = p_r1 >= {5'b00000, p_dv};
            p_q   = p_sat ? 4'd8 : {1'b0, p_b2, p_b1, p_b0};
            off_new = (f_b == 11'd0) ? 6'sd0 : p_neg ? -$signed({2'b00, p_q}) : $signed({2'b00, p_q});
        end
    endfunction

    integer i;
    reg signed [5:0] a, b;
    initial begin
        for (i = 0; i < (1 << 21); i = i + 1) begin
            {s0, s2, pw} = i[20:0];
            a = off_old(s0, s2, pw);
            b = off_new(s0, s2, pw);
            if (a != 0) nonzero = nonzero + 1;
            if (a !== b) begin
                errors = errors + 1;
                if (errors <= 10) $display("differ: s0=%0d s2=%0d pw=%0d old=%0d new=%0d", s0, s2, pw, a, b);
            end
        end
        if (errors == 0) $display("EQUIVALENT: all %0d cases identical (%0d with a non-zero offset)", 1 << 21, nonzero);
        else $display("FAIL: %0d of %0d cases differ", errors, 1 << 21);
        $finish;
    end
endmodule
