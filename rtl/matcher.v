// Matching cost, semi-global aggregation and choice of the disparity.
// Bit-exact counterpart of cost_volume(), hbox(), sgm() with the paths LR + TB
// and pick() in host/stereo/disparity.py.
//
// Input: the census signatures of both cameras for the same pixel, in raster
// order, through a ready/valid handshake (a FIFO sits in front). After the
// last pixel of a row the block runs FLUSH further pixel slots by itself and
// takes nothing meanwhile. Output: the pixels of the row again in order, each
// about D + 2 slots late.
//
// Part of the tape-out block (stereo_core): one clock, synchronous reset of
// everything that decides whether something happens, memories through
// mem_1r1w, no initial values. Data registers and memory contents are not
// reset: after reset the first rows of a frame overwrite them before they
// are used. The settings (cfg_*) are inputs and must hold still while a
// frame is on its way.
//
// A pixel slot is SLOT clocks. The D = 128 disparities of a pixel are
// evaluated 16 at a time ("units") in its first 8 clocks: unit j handles
// k = 16 c + j in clock c; the disparity itself is cfg_dmin + k. The remaining
// clocks of the slot let the pixel's minima settle before the next pixel
// needs them.
//
// Stages, each one clock, for the pixel xa arriving in a slot:
//   P0a (xa)    left signature XOR the right one cfg_dmin + k pixels back
//   P0b (xa)    raw cost: number of differing bits; NBITS where either is invalid
//   P1  (xa-1)  mean of the raw cost over 3 pixels of the row (edges repeated)
//   P2a (xa-1)  lowest of the candidates each path may continue from
//   P2b (xa-1)  path costs left-to-right and top-to-bottom, and their sum S
//   P2c (xa-1)  lowest path costs of the pixel (the next pixel subtracts them)
//   P3a (xa-1)  lowest S of the 16 and where; the right image's own winner
//               (a chain that moves one disparity per pixel); for the previous
//               pixel, the runner-up and the neighbours of its winner
//   P3b (xa-1)  the pixel's winner so far
// then, once per pixel, the sub-pixel offset and the acceptance tests. The
// left-right test needs the right image's winner up to 127 pixels later, so
// results wait in a small memory and leave D + 2 slots after their pixel.
module matcher #(
    parameter W      = 800,
    parameter H      = 600,
    parameter NBITS  = 44,                  // census bits = largest raw cost
    parameter RX     = 8,
    parameter RY     = 4,
    parameter HBOX   = 3,                   // 1 or 3
    parameter LMAX   = 127,                 // path cost saturates here
    parameter TBCAP  = 63,                  // top-to-bottom cost as stored: relative, limited to P2, then to this
    parameter U      = 16,                  // units working side by side, a power of two up to 16
    parameter D      = 128,                 // disparities in the window, 8 * U
    parameter FLUSH  = 132,                 // slots run after every row, at least D + 4
    parameter SLOT   = 10                   // clocks per pixel, at least 10
) (
    input  wire              clk,
    input  wire              rst,
    input  wire [5:0]        cfg_dmin,              // smallest disparity searched
    input  wire [6:0]        cfg_p1,                // SGM penalties, small and large step
    input  wire [6:0]        cfg_p2,
    input  wire [3:0]        cfg_uniq,              // winner must beat the runner-up by cfg_uniq/16 of it
    input  wire              in_valid,              // only together with in_ready
    input  wire [9:0]        in_y,
    input  wire [9:0]        in_x,
    input  wire [NBITS-1:0]  in_left,
    input  wire              in_left_ok,
    input  wire [NBITS-1:0]  in_right,
    input  wire              in_right_ok,
    output wire              in_ready,

    output reg               out_valid,
    output reg  [9:0]        out_y,
    output reg  [9:0]        out_x,
    output reg  [11:0]       out_disp,              // 1/16 pixel, 0 = no measurement
    output wire              busy
);
    localparam HIST = D;                    // right signatures kept: position k is disparity cfg_dmin + k
    localparam [8:0] BIG  = 9'd511;         // "no value" where sums (up to 254) are compared
    localparam [8:0] PBIG = 9'd300;         // the same for path costs, with room to add P1
    localparam [5:0] NB6  = NBITS;
    localparam [6:0] LMAX7 = LMAX;
    localparam [5:0] CAP6 = TBCAP;
    wire [10:0] x_lo = {5'd0, cfg_dmin} + RX;   // columns that can hold a result: x_lo .. X_HI - 1
    localparam X_HI = W - RX;
    localparam TBW  = 6 * U;                // one line-memory word: 16 stored costs
    localparam TB_COLS = W - 2 * RX;        // line memory columns: RX .. X_HI - 1, whatever cfg_dmin is
    localparam TB_SLICES = (TB_COLS * 8 + 1023) / 1024;

    integer i;
    genvar  j;

    // ---- slots -------------------------------------------------------------
    reg         run, ld, ld_flush;
    reg [10:0]  xa;                         // pixel arriving in this slot (>= W: flush slot)
    reg [3:0]   c;
    reg [9:0]   ya;
    reg [NBITS-1:0] left;
    reg         left_ok;
    reg [NBITS-1:0] rs   [0:HIST-1];        // rs[i]: right signature i pixels back
    reg [HIST-1:0]  rs_ok;
    reg [9:0]   li_y, li_x;                 // the pixel taken from the input, for the slot that starts next
    reg [NBITS-1:0] li_left, li_right;
    reg         li_left_ok, li_right_ok;

    wire last_but_one = run && (c == SLOT - 2);
    assign in_ready = !ld && (!run || (last_but_one && xa < W - 1));
    assign busy = run || ld;
    wire more_flush = (xa >= W - 1) && (xa != W + FLUSH - 1);

    // The right signature enters the history cfg_dmin pixels late (a 64-word
    // delay memory), so that history position k is the candidate of disparity
    // cfg_dmin + k. The first cfg_dmin pixels of a row have no candidate.
    wire             take_in = in_valid && in_ready;
    wire [NBITS:0]   dl_q;
    mem_1r1w #(.AW(6), .DW(NBITS + 1)) u_delay (
        .clk(clk), .re(take_in), .raddr(in_x[5:0] - cfg_dmin), .q(dl_q),
        .we(take_in), .waddr(in_x[5:0]), .wdata({in_right_ok, in_right}));
    wire [NBITS-1:0] dl_sig = (cfg_dmin == 6'd0) ? li_right : dl_q[NBITS-1:0];
    wire             dl_ok  = (cfg_dmin == 6'd0) ? li_right_ok : (dl_q[NBITS] && li_x >= {4'd0, cfg_dmin});

    always @(posedge clk) begin
        if (rst) begin
            run <= 1'b0;  ld <= 1'b0;
        end else begin
            if (take_in) begin
                ld <= 1'b1;  ld_flush <= 1'b0;
                li_y <= in_y;  li_x <= in_x;
                li_left <= in_left;    li_left_ok <= in_left_ok;
                li_right <= in_right;  li_right_ok <= in_right_ok;
            end else if (last_but_one && more_flush) begin
                ld <= 1'b1;  ld_flush <= 1'b1;
            end
            if (ld) begin                           // a slot starts
                ld  <= 1'b0;
                run <= 1'b1;
                c   <= 4'd0;
                for (i = HIST - 1; i > 0; i = i - 1) rs[i] <= rs[i - 1];
                if (ld_flush) begin
                    xa      <= xa + 11'd1;
                    left_ok <= 1'b0;
                    rs_ok   <= {rs_ok[HIST-2:0], 1'b0};
                end else begin
                    xa      <= {1'b0, li_x};
                    ya      <= li_y;
                    left    <= li_left;
                    left_ok <= li_left_ok;
                    rs[0]   <= dl_sig;
                    // a row starts with an empty history: nothing to the left of pixel 0
                    rs_ok   <= (li_x == 10'd0) ? {{HIST-1{1'b0}}, dl_ok} : {rs_ok[HIST-2:0], dl_ok};
                end
            end else if (run) begin
                if (c == SLOT - 1) run <= 1'b0;     // nothing followed: wait for the next pixel
                else               c   <= c + 4'd1;
            end
        end
    end
    wire tv = run && !c[3];                         // one of the 8 working clocks

    // ---- P0a / P0b: raw cost -------------------------------------------------
    function [2:0] ones6;
        input [5:0] v;
        begin ones6 = v[0] + v[1] + v[2] + v[3] + v[4] + v[5]; end
    endfunction
    function [5:0] popcount;                        // of up to 48 bits, as a tree
        input [47:0] v;
        reg [3:0] s0, s1, s2, s3;
        begin
            s0 = ones6(v[5:0])   + ones6(v[11:6]);
            s1 = ones6(v[17:12]) + ones6(v[23:18]);
            s2 = ones6(v[29:24]) + ones6(v[35:30]);
            s3 = ones6(v[41:36]) + ones6(v[47:42]);
            popcount = ({2'b00, s0} + {2'b00, s1}) + ({2'b00, s2} + {2'b00, s3});
        end
    endfunction

    reg [NBITS-1:0] xr [0:U-1];
    reg [U-1:0]   xv;
    reg           a0_v, a_v;
    reg [10:0]    a0_xa, a_xa;
    reg [2:0]     a0_c, a_c;
    reg [6*U-1:0] a_cost;
    generate
        for (j = 0; j < U; j = j + 1) begin : g_cost
            wire [6:0] tap = c[2:0] * U + j;
            wire [47:0] padded = {{(48-NBITS){1'b0}}, xr[j]};
            always @(posedge clk) begin
                xr[j] <= left ^ rs[tap];
                xv[j] <= left_ok && rs_ok[tap];
                a_cost[6*j +: 6] <= xv[j] ? popcount(padded) : NB6;
            end
        end
    endgenerate
    always @(posedge clk) begin
        a0_v <= tv;   a0_xa <= xa;    a0_c <= c[2:0];
        a_v  <= a0_v; a_xa  <= a0_xa; a_c  <= a0_c;
        if (rst) begin
            a0_v <= 1'b0;  a_v <= 1'b0;
        end
    end

    // ---- P1: mean over three pixels of the row -------------------------------
    // hist[j][c] = {raw cost of the previous pixel, of the one before}
    reg [6*U-1:0] b_cost;
    reg           b_v, b_real;
    reg [10:0]    b_x;
    reg [2:0]     b_c;
    wire [10:0]   p1_x = a_xa - 11'd1;                  // pixel being averaged
    generate
        for (j = 0; j < U; j = j + 1) begin : g_box
            reg [11:0] hist [0:7];
            wire [11:0] hq   = hist[a_c];
            wire [5:0]  cur  = hq[11:6];                // raw cost of pixel p1_x
            wire [5:0]  prev = hq[5:0];
            wire [5:0]  nxt  = a_cost[6*j +: 6];        // raw cost of pixel a_xa
            wire [5:0]  lft  = (p1_x == 11'd0)  ? cur : prev;
            wire [5:0]  rgt  = (p1_x == W - 1)  ? cur : nxt;
            wire [7:0]  sum  = lft + cur + rgt + 8'd1;
            wire [15:0] third = sum * 8'd171;           // sum / 3 for sum < 256
            always @(posedge clk) begin
                if (a_v) hist[a_c] <= {nxt, cur};
                b_cost[6*j +: 6] <= (HBOX == 3) ? third[14:9] : cur;
            end
        end
    endgenerate
    always @(posedge clk) begin
        b_v    <= a_v && (a_xa != 11'd0);
        b_real <= a_v && (a_xa != 11'd0) && (p1_x < W);
        b_x    <= p1_x;
        b_c    <= a_c;
        if (rst) begin
            b_v <= 1'b0;  b_real <= 1'b0;
        end
    end

    // ---- line memory of the top-to-bottom path -------------------------------
    // One word per usable column and clock: the 16 stored costs of that clock.
    // Addressed two clocks ahead of P2a (tb_q then holds the word of the next
    // clock, tb_cur this clock's); written one slot later, once the pixel's
    // lowest cost is known. Built from 1024-word slices (three 36-bit block
    // RAMs each on the FPGA, one macro each on the chip).
    wire [TBW-1:0] tb_slice_q [0:7];
    reg  [2:0]     tb_sel;
    reg  [TBW-1:0] tb_cur;
    wire [TBW-1:0] tb_q = tb_slice_q[tb_sel];
    reg  [5:0]     tb_prev15;
    wire [10:0]    rd_x    = a0_xa - 11'd1;             // the pixel P2a works on two clocks from now
    wire [10:0]    rd_col  = rd_x - RX;
    wire [12:0]    rd_addr = {rd_col[9:0], 3'b000} + a0_c;
    reg            tb_we;
    reg  [12:0]    tb_waddr;
    reg  [TBW-1:0] tb_wdata;
    always @(posedge clk) begin
        tb_sel    <= rd_addr[12:10];
        tb_cur    <= tb_q;
        tb_prev15 <= tb_cur[6*(U-1) +: 6];
    end
    generate
        for (j = 0; j < 8; j = j + 1) begin : g_tb
            if (j < TB_SLICES) begin : g_ram
                mem_1r1w #(.AW(10), .DW(TBW)) u_mem (
                    .clk(clk), .re(1'b1), .raddr(rd_addr[9:0]), .q(tb_slice_q[j]),
                    .we(tb_we && tb_waddr[12:10] == j), .waddr(tb_waddr[9:0]), .wdata(tb_wdata));
            end else begin : g_none
                assign tb_slice_q[j] = {TBW{1'b0}};
            end
        end
    endgenerate

    // ---- P2a: what each path may continue from --------------------------------
    function [6:0] min7;
        input [6:0] p, q;
        begin min7 = (p < q) ? p : q; end
    endfunction
    function [8:0] min9;
        input [8:0] p, q;
        begin min9 = (p < q) ? p : q; end
    endfunction

    reg [9*U-1:0] p_lm, p_tm;                           // lowest candidate, LR and TB
    reg [6*U-1:0] p_ch;
    reg           p_v, p_real, p_first, p_tb;
    reg [10:0]    p_x;
    reg [2:0]     p_c;
    reg [6:0]     lr_best, lr_run;                      // lowest LR cost of the previous pixel / so far
    reg [6:0]     tb_min, tb_run;                       // lowest new TB cost of the previous pixel / so far
    reg [6:0]     lr15_old;
    wire          p2_use = (b_x >= x_lo) && (b_x < X_HI);
    wire [7*U-1:0] lr_old, tb_held;
    wire [6:0]    lr_next0;                             // unit 0's LR cost of the next clock (k + 1 for unit 15)
    wire [10:0]   wb_x   = b_x - 11'd1;                 // the pixel whose TB costs are written back now
    wire [10:0]   wb_col = wb_x - RX;

    // P2b
    reg [7*U-1:0] q_ln, q_tn;
    reg [8*U-1:0] s_sum;                                // S = LR + TB, per unit
    reg           q_v, q_real;
    reg [10:0]    q_x;
    reg [2:0]     q_c;

    generate
        for (j = 0; j < U; j = j + 1) begin : g_path
            reg [6:0] lr [0:7];
            reg [6:0] hold [0:7];                       // this pixel's new TB cost, until it is stored
            assign lr_old[7*j +: 7]  = lr[b_c];
            assign tb_held[7*j +: 7] = hold[b_c];
            // neighbours k - 1 and k + 1 of the previous pixel's LR costs
            wire [8:0] l_same = {2'b00, lr_old[7*j +: 7]};
            wire [8:0] l_dn = (j == 0) ? ((b_c == 3'd0) ? PBIG : {2'b00, lr15_old})
                                       : {2'b00, lr_old[7*((j == 0) ? 0 : j - 1) +: 7]};
            wire [8:0] l_up = (j == U - 1) ? ((b_c == 3'd7) ? PBIG : {2'b00, lr_next0})
                                           : {2'b00, lr_old[7*((j == U - 1) ? j : j + 1) +: 7]};
            wire [8:0] l_m  = min9(min9(l_same, {2'b00, lr_best} + {2'b00, cfg_p2}), min9(l_dn, l_up) + {2'b00, cfg_p1});
            // the same from the row above; its lowest stored cost is 0
            wire [8:0] t_same = {3'b000, tb_cur[6*j +: 6]};
            wire [8:0] t_dn = (j == 0) ? ((b_c == 3'd0) ? PBIG : {3'b000, tb_prev15})
                                       : {3'b000, tb_cur[6*((j == 0) ? 0 : j - 1) +: 6]};
            wire [8:0] t_up = (j == U - 1) ? ((b_c == 3'd7) ? PBIG : {3'b000, tb_q[5:0]})
                                           : {3'b000, tb_cur[6*((j == U - 1) ? j : j + 1) +: 6]};
            wire [8:0] t_m  = min9(min9(t_same, {2'b00, cfg_p2}), min9(t_dn, t_up) + {2'b00, cfg_p1});
            // the previous pixel's TB cost as it goes into the line memory
            wire [6:0] rel  = tb_held[7*j +: 7] - tb_min;
            wire [6:0] rel2 = (rel > cfg_p2) ? cfg_p2 : rel;
            wire [5:0] sto  = (rel2 > TBCAP) ? CAP6 : rel2[5:0];
            // P2b: the new path costs
            wire [5:0] ch   = p_ch[6*j +: 6];
            wire [9:0] l_v  = {4'b0000, ch} + {1'b0, p_lm[9*j +: 9]} - {3'b000, lr_best};
            wire [6:0] l_new = p_first ? {1'b0, ch} : ((l_v > LMAX) ? LMAX7 : l_v[6:0]);
            wire [9:0] t_v  = {4'b0000, ch} + {1'b0, p_tm[9*j +: 9]};
            wire [6:0] t_new = !p_tb ? {1'b0, ch} : ((t_v > LMAX) ? LMAX7 : t_v[6:0]);
            always @(posedge clk) begin
                p_lm[9*j +: 9] <= l_m;
                p_tm[9*j +: 9] <= t_m;
                tb_wdata[6*j +: 6] <= sto;
                if (p_real) begin
                    lr[p_c]   <= l_new;
                    hold[p_c] <= t_new;
                end
                q_ln[7*j +: 7]  <= l_new;
                q_tn[7*j +: 7]  <= t_new;
                s_sum[8*j +: 8] <= {1'b0, l_new} + {1'b0, t_new};
            end
        end
    endgenerate
    assign lr_next0 = g_path[0].lr[b_c + 3'd1];

    always @(posedge clk) begin
        p_ch    <= b_cost;
        p_v     <= b_v;
        p_real  <= b_real;
        p_first <= (b_x == 11'd0);
        p_tb    <= p2_use && (ya != 10'd0);             // a stored row above exists
        p_x     <= b_x;
        p_c     <= b_c;
        lr15_old <= lr_old[7*(U-1) +: 7];
        // write-back of the previous pixel (its minimum has been complete since the end of its slot)
        tb_we    <= b_v && (b_x != 11'd0) && (wb_x >= x_lo) && (wb_x < X_HI);
        tb_waddr <= {wb_col[9:0], 3'b000} + b_c;
        q_v    <= p_v;
        q_real <= p_real;
        q_x    <= p_x;
        q_c    <= p_c;
        if (rst) begin
            p_v <= 1'b0;  p_real <= 1'b0;  q_v <= 1'b0;  q_real <= 1'b0;  tb_we <= 1'b0;
        end
    end

    // ---- P2c: lowest path costs of the pixel -----------------------------------
    function [6:0] min_units;                           // lowest of the U seven-bit values, as a tree
        input [7*U-1:0] v;
        reg [6:0] t [0:U-1];
        integer a, n;
        begin
            for (a = 0; a < U; a = a + 1) t[a] = v[7*a +: 7];
            for (n = U; n > 1; n = n / 2)
                for (a = 0; a < n / 2; a = a + 1) t[a] = min7(t[2*a], t[2*a + 1]);
            min_units = t[0];
        end
    endfunction
    wire [6:0] lr_m = min_units(q_ln);
    wire [6:0] tb_m = min_units(q_tn);
    always @(posedge clk) if (q_real) begin
        if (q_c == 3'd0) begin lr_run <= lr_m; tb_run <= tb_m; end
        else             begin lr_run <= min7(lr_run, lr_m); tb_run <= min7(tb_run, tb_m); end
        if (q_c == 3'd7) begin
            lr_best <= min7(lr_run, lr_m);
            tb_min  <= min7(tb_run, tb_m);
        end
    end

    // ---- P3a: lowest sum of the 16, runner-up pass, right image's winner ---------
    wire p3_use = q_real && (q_x >= x_lo) && (q_x < X_HI);   // this column takes part in the left-right test

    // lowest of 16 sums with its unit, the first among equals: {value, unit}
    function [11:0] lower;
        input [11:0] p, q;                              // p holds the lower units
        begin lower = (q[11:4] < p[11:4]) ? q : p; end
    endfunction
    reg [11:0] am [0:U-1];
    reg [11:0] m16w;
    integer n3, w3;
    always @* begin
        for (n3 = 0; n3 < U; n3 = n3 + 1) am[n3] = {s_sum[8*n3 +: 8], n3[3:0]};
        for (w3 = U; w3 > 1; w3 = w3 / 2)
            for (n3 = 0; n3 < w3 / 2; n3 = n3 + 1) am[n3] = lower(am[2*n3], am[2*n3 + 1]);
        m16w = am[0];
    end
    reg [7:0] win_s;        reg [6:0] win_k;            // winner of the previous pixel
    reg       win_real;  reg [10:0] win_x;
    wire [8*U-1:0] s_old;                               // S of the previous pixel at this clock
    wire [6:0] wk_lo = (win_k == 7'd0)   ? 7'd0   : win_k - 7'd1;
    wire [6:0] wk_hi = (win_k == D - 1) ? win_k : win_k + 7'd1;

    // of the previous pixel's sums: lowest outside the winner and its neighbours, and those neighbours
    reg [8:0] sv [0:U-1];
    reg [8:0] sec16;
    reg [7:0] pick0, pick2;
    reg       has0, has2;
    reg [6:0] kk;
    integer n4, w4;
    always @* begin
        pick0 = 8'd0; pick2 = 8'd0; has0 = 1'b0; has2 = 1'b0;
        for (n4 = 0; n4 < U; n4 = n4 + 1) begin
            kk = q_c * U + n4;
            sv[n4] = (kk < wk_lo || kk > wk_hi) ? {1'b0, s_old[8*n4 +: 8]} : BIG;
            if (kk == wk_lo) begin pick0 = pick0 | s_old[8*n4 +: 8]; has0 = 1'b1; end
            if (kk == wk_hi) begin pick2 = pick2 | s_old[8*n4 +: 8]; has2 = 1'b1; end
        end
        for (w4 = U; w4 > 1; w4 = w4 / 2)
            for (n4 = 0; n4 < w4 / 2; n4 = n4 + 1) sv[n4] = min9(sv[2*n4], sv[2*n4 + 1]);
        sec16 = sv[0];
    end
    // right image's winner: rec[k] belongs to right pixel x - cfg_dmin - k
    wire [16*U-1:0] rec_old, rec_new;                   // {lowest sum (9 bits), its disparity index (7 bits)}
    reg  [15:0]     rec15_old;
    generate
        for (j = 0; j < U; j = j + 1) begin : g_sel
            reg [7:0]  sram [0:7];
            reg [15:0] rec  [0:7];
            assign s_old[8*j +: 8]     = sram[q_c];
            assign rec_old[16*j +: 16] = rec[q_c];
            wire [6:0]  k    = q_c * U + j;
            wire [15:0] from = (j == 0) ? ((q_c == 3'd0) ? {BIG, 7'd0} : rec15_old)
                                        : rec_old[16*((j == 0) ? 0 : j - 1) +: 16];
            wire [8:0]  s9   = {1'b0, s_sum[8*j +: 8]};
            wire        take = p3_use && (s9 < from[15:7]);
            assign rec_new[16*j +: 16] = take ? {s9, k} : from;
            always @(posedge clk) if (q_v) begin
                sram[q_c] <= s_sum[8*j +: 8];
                rec[q_c]  <= rec_new[16*j +: 16];
            end
        end
    endgenerate

    // right image's winner by right pixel (memory u_drw below)
    wire [10:0] dr_x = q_x - ({5'd0, cfg_dmin} + (D - 1));  // right pixel whose chain ends in this slot

    reg [7:0]  r_m;   reg [3:0] r_mj;
    reg [8:0]  r_sec;
    reg [7:0]  r_p0, r_p2;
    reg        r_h0, r_h2;
    reg        r_v, r_real;
    reg [10:0] r_x;
    reg [2:0]  r_c;
    always @(posedge clk) begin
        r_v <= q_v;  r_real <= q_real;  r_x <= q_x;  r_c <= q_c;
        r_m <= m16w[11:4];  r_mj <= m16w[3:0];
        r_sec <= sec16;
        r_p0 <= pick0;  r_h0 <= has0;
        r_p2 <= pick2;  r_h2 <= has2;
        if (q_v) rec15_old <= rec_old[16*(U-1) +: 16];
        if (rst) begin
            r_v <= 1'b0;  r_real <= 1'b0;
        end
    end

    // ---- P3b: winner so far; once per pixel the hand-over --------------------------
    reg [7:0] best_s;       reg [6:0] best_k;
    reg [8:0] second;       reg [7:0] s0, s2;
    reg [7:0] pw_s;         reg [6:0] pw_k;             // the pixel whose tests are evaluated next
    reg       pw_real;   reg [10:0] pw_x;
    reg       fin1, fin2;
    wire      better = (r_c == 3'd0) || (r_m < best_s);

    // F1: differences for the parabola, the uniqueness test
    reg signed [10:0] f_a;                              // s0 - s2
    reg [10:0] f_b;                                     // s0 - 2 s1 + s2, never negative
    reg        f_uniq, f_real;
    reg [6:0]  f_k;
    reg [10:0] f_x;
    wire [13:0] margin = {1'b0, second, 4'b0000} - {2'b00, pw_s, 4'b0000};          // (second - s1) * 16

    // F2: offset = floor((16 a + sign(a) b) / (2 b)), limited to -8 .. 8: count how many of -8 .. 8 fit
    wire signed [16:0] pbs = $signed({6'b000000, f_b});
    wire signed [16:0] pt  = f_a * 17'sd16 + ((f_a > 0) ? pbs : (f_a < 0) ? -pbs : 17'sd0);
    reg  [16:0] fits;
    integer n5;
    always @* for (n5 = 0; n5 < 17; n5 = n5 + 1) fits[n5] = ((n5 - 8) * 2 * pbs <= pt);
    // the comparisons are monotonic: fits = 1..1 0..0 from the bottom, so the count is the position of the top one
    reg  [4:0] fit;
    integer n6;
    always @* begin
        fit = 5'd0;
        for (n6 = 0; n6 < 17; n6 = n6 + 1) if (fits[n6]) fit = n6 + 1;
    end
    wire signed [5:0] off = (f_b == 11'd0) ? 6'sd0 : (fit == 5'd0) ? -6'sd8 : $signed({1'b0, fit}) - 6'sd9;
    wire [7:0]  true_d = {1'b0, f_k} + {2'b00, cfg_dmin};
    wire [11:0] code   = {true_d, 4'b0000} + {{6{off[5]}}, off};
    wire        own_ok = f_real && f_uniq && (f_k >= 7'd1) && (f_k <= D - 2)
                         && (f_x >= true_d + RX) && (f_x < W - RX) && (ya >= RY) && (ya < H - RY);

    // results waiting for the left-right test; release of the pixel 130 slots back
    wire [10:0] rel_x = r_x - (D + 2);
    wire [19:0] rel_q;                                  // {acceptable so far, winner index, disparity code}
    wire [6:0]  rel_dr;
    reg         rel_v, rel_v2;
    reg  [10:0] rel_x1, rel_x2;
    wire [7:0]  rel_true = {1'b0, rel_q[18:12]} + {2'b00, cfg_dmin};
    wire [7:0]  dr_idx   = rel_x1[7:0] - rel_true;
    wire [6:0]  dk = (rel_dr > rel_q[18:12]) ? rel_dr - rel_q[18:12] : rel_q[18:12] - rel_dr;

    always @(posedge clk) begin
        fin1      <= 1'b0;
        fin2      <= fin1;
        out_valid <= 1'b0;
        rel_v     <= 1'b0;
        rel_v2    <= rel_v;
        if (r_v) begin
            if (better) begin
                best_s <= r_m;
                best_k <= r_c * U + r_mj;
            end
            // runner-up and neighbours of the previous pixel's winner
            second <= (r_c == 3'd0) ? r_sec : min9(second, r_sec);
            if (r_h0) s0 <= r_p0;
            if (r_h2) s2 <= r_p2;
            if (r_c == 3'd7) begin
                fin1 <= 1'b1;
                pw_s <= win_s;  pw_k <= win_k;  pw_real <= win_real;  pw_x <= win_x;
                // hand over: this pixel becomes "the previous pixel"
                win_s    <= better ? r_m : best_s;
                win_k    <= better ? r_c * U + r_mj : best_k;
                win_real <= r_real;
                win_x    <= r_x;
            end
            // release: read in clock 0, look up the right image's winner in clock 1, output in clock 2
            if (r_c == 3'd0) begin
                rel_v  <= !rel_x[10] && (rel_x < W);
                rel_x1 <= rel_x;
            end
        end
        if (fin1) begin                                 // F1
            f_a    <= $signed({3'b000, s0}) - $signed({3'b000, s2});
            f_b    <= {3'b000, s0} + {3'b000, s2} - {2'b00, pw_s, 1'b0};
            f_uniq <= margin >= second * cfg_uniq;
            f_real <= pw_real;  f_k <= pw_k;  f_x <= pw_x;
        end
        if (rel_v) rel_x2 <= rel_x1;
        if (rel_v2) begin
            out_valid <= 1'b1;
            out_y     <= ya;
            out_x     <= rel_x2[9:0];
            out_disp  <= (rel_q[19] && dk <= 7'd1) ? rel_q[11:0] : 12'd0;
        end
        if (rst) begin
            fin1 <= 1'b0;  fin2 <= 1'b0;  rel_v <= 1'b0;  rel_v2 <= 1'b0;  out_valid <= 1'b0;
            win_real <= 1'b0;  pw_real <= 1'b0;  f_real <= 1'b0;
        end
    end

    // results (written in F2) and the right image's winners, both 256 pixels round
    mem_1r1w #(.AW(8), .DW(20)) u_res (
        .clk(clk), .re(r_v && r_c == 3'd0), .raddr(rel_x[7:0]), .q(rel_q),
        .we(fin2), .waddr(f_x[7:0]), .wdata({own_ok, f_k, own_ok ? code : 12'd0}));
    mem_1r1w #(.AW(8), .DW(7)) u_drw (
        .clk(clk), .re(rel_v), .raddr(dr_idx), .q(rel_dr),
        .we(q_v && q_c == 3'd7 && !dr_x[10]), .waddr(dr_x[7:0]), .wdata(rec_new[16*(U-1) +: 7]));
endmodule
