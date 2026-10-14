// Hub of the chained matcher mini (FPGA glue, not part of the tape-out):
// feeds N mini_slice chips with census signatures and hands back to them what
// one pixel's result means for the next; see mini_slice.v for the frames.
//
//   - numbers the chain and sends the settings
//   - per pixel slot one down-link frame: the left signature for all slices,
//     for every slice the right signature DMIN + 16 p pixels back, and the
//     values that came up from the slot before (gmin, kstar, edge costs)
//   - after the W pixels of a row, 16 N + 2 more slots push the right
//     image's winners out of the chain
//   - keeps a row of results and of right-image winners, and when the row is
//     complete applies the range tests and the left-right test and puts the
//     row out
//
// Input: census signatures of both pictures, pixel by pixel in raster order,
// with ready/valid. Output: disparity in 1/16 pixel per pixel, 0 = none.
// dl changes on the falling edge, ul is sampled on the rising edge.
module mini_hub #(
    parameter N     = 4,                    // slices in the chain
    parameter W     = 400,
    parameter H     = 296,
    parameter NBITS = 44,
    parameter DMIN  = 14,
    parameter P1    = 15,
    parameter P2    = 73,
    parameter UNIQ  = 3,
    parameter RX    = 8,
    parameter RY    = 4,
    parameter T     = (10 + 8 * N > 28 + 3 * N) ? 10 + 8 * N : 28 + 3 * N,    // clocks per slot
    parameter LOOP  = 0                     // 1: after the last row of a picture, go on with the next picture
) (
    input  wire             clk,
    input  wire             rst,
    input  wire             in_valid,
    output wire             in_ready,
    input  wire [NBITS-1:0] in_left,
    input  wire             in_left_ok,
    input  wire [NBITS-1:0] in_right,
    input  wire             in_right_ok,
    output reg  [7:0]       dl,
    input  wire [7:0]       ul,
    output reg              out_valid,
    output reg  [9:0]       out_y,
    output reg  [9:0]       out_x,
    output reg  [11:0]      out_disp,
    output reg  [7:0]       chain_n,        // how many slices answered
    output reg              frame_start,    // the first row of a picture will come out in about 80 clocks
    output wire [3:0]       dbg_st,         // state, for diagnosis
    output wire             idle
);
    localparam TOTAL = 16 * N;
    localparam LAST  = W + TOTAL + 1;       // last slot of a row
    localparam [3:0] S_RST = 4'd0, S_CFG = 4'd1, S_PIX = 4'd2, S_FRAME = 4'd3, S_TAIL = 4'd4,
                     S_OUT0 = 4'd5, S_OUT1 = 4'd6, S_OUT2 = 4'd7, S_DONE = 4'd8;
    integer k;

    reg [3:0]  st;
    reg [7:0]  fcnt;                        // clock of the frame; the slices are one behind
    reg        pixel_frame;
    reg [9:0]  xa, y;                       // slot in the row (the arriving pixel), row
    reg [7:0]  wait_n;
    reg [NBITS:0] cur_left, rq;
    reg [2:0]  rp, rcnt;
    reg [7:0]  ul_r;
    reg [6:0]  huc;                         // the slices' clock since their start
    reg [9:0]  up_x;                        // slot in which that start was
    reg [6:0]  r_gmin, r_kstar;
    reg [6:0]  r_lbot [0:7];
    reg [7:0]  f0;

    // rows of: right signatures (for the delays), results, right-image winners
    reg [NBITS:0] rdel [0:511];
    reg [12:0]    fin  [0:511];             // {unique, winner index, offset}
    reg [6:0]     drw  [0:511];
    reg [12:0]    fq;
    reg [6:0]     dq;

    assign in_ready = (st == S_PIX) && (xa < W);
    assign idle     = (st == S_DONE);
    assign dbg_st   = st;
    wire   go       = (st == S_PIX) && (xa >= W || in_valid);

    // index of the right pixel slice p needs in slot xa
    function [10:0] r_idx;
        input [9:0] slot;
        input [2:0] p;
        begin r_idx = {1'b0, slot} - DMIN - {4'd0, p, 4'b0000}; end
    endfunction
    wire [10:0] idx0 = r_idx(xa, 3'd0);
    wire [10:0] idxn = r_idx(xa, rp + 3'd1);

    // ---- down-link symbol of this clock -------------------------------------------
    wire        first = (xa == 10'd0);
    wire        is_real  = (xa < W);
    wire        use_b = (xa >= DMIN + RX + 1) && (xa < W - RX + 1);
    wire [7:0]  fl    = fcnt - 8'd3 - N;
    reg  [7:0]  sym;
    always @* begin
        sym = 8'h00;
        if (st == S_CFG) begin
            case (fcnt)
                8'd0: sym = {1'b1, 3'd2, 4'b0000};
                8'd1: sym = P1;
                8'd2: sym = P2;
                8'd3: sym = UNIQ;
                8'd4: sym = N;
                default: sym = 8'h00;
            endcase
        end else if (st == S_FRAME) begin
            if (fcnt == 8'd0)               sym = {1'b1, 3'd1, 1'b0, use_b, is_real, first};
            else if (fcnt == 8'd1)          sym = {1'b0, r_gmin};
            else if (fcnt == 8'd2)          sym = {1'b0, r_kstar};
            else if (fcnt < 3 + N)          sym = (fcnt == 2 + N) ? 8'd127 : {1'b0, r_lbot[fcnt - 8'd2]};
            else if (fcnt < 10 + N)         sym = {1'b0, cur_left7(fl[2:0])};
            else if (fcnt < 10 + 8 * N)     sym = {1'b0, rq7(rcnt)};
        end
    end
    function [6:0] cur_left7;
        input [2:0] c;
        reg [48:0] v;
        begin v = {{(48-NBITS){1'b0}}, cur_left};  cur_left7 = v[c * 7 +: 7]; end
    endfunction
    function [6:0] rq7;
        input [2:0] c;
        reg [48:0] v;
        begin v = {{(48-NBITS){1'b0}}, rq};  rq7 = v[c * 7 +: 7]; end
    endfunction
    always @(negedge clk) dl <= rst ? 8'h00 : sym;

    // ---- output of a finished row ------------------------------------------------------
    reg  [9:0]  ox;
    wire        f_uniq = fq[12];
    wire [6:0]  f_k    = fq[11:5];
    wire [4:0]  f_off  = fq[4:0];
    wire [7:0]  f_true = {1'b0, f_k} + DMIN;
    wire [10:0] f_idx  = {1'b0, ox} - {3'b000, f_true};
    wire [6:0]  f_dk   = (dq > f_k) ? dq - f_k : f_k - dq;
    wire        f_ok   = f_uniq && (f_k >= 7'd1) && (f_k <= TOTAL - 2) && (ox >= f_true + RX) && (ox < W - RX)
                         && (y >= RY) && (y < H - RY) && (f_dk <= 7'd1);

    always @(posedge clk) begin
        ul_r      <= ul;
        out_valid <= 1'b0;
        frame_start <= 1'b0;
        if (huc != 7'd127) huc <= huc + 7'd1;
        fcnt <= fcnt + 8'd1;

        case (st)
            S_RST: begin                                // let the chain number itself
                wait_n <= wait_n + 8'd1;
                if (wait_n == 8'd40) begin
                    chain_n <= ul_r;
                    fcnt <= 8'd0;
                    st <= S_CFG;
                end
            end
            S_CFG: if (fcnt == 8'd15) begin
                xa <= 10'd0;  y <= 10'd0;
                st <= S_PIX;
            end
            S_PIX: if (go) begin                        // a slot starts
                cur_left <= is_real ? {in_left_ok, in_left} : {(NBITS+1){1'b0}};
                if (is_real) rdel[xa[8:0]] <= {in_right_ok, in_right};
                fcnt <= 8'd0;
                st <= S_FRAME;
            end
            S_FRAME: begin
                // right signatures, one slice after the other
                if (fcnt == 9 + N) begin
                    rq <= (!idx0[10] && idx0 < W) ? rdel[idx0[8:0]] : {(NBITS+1){1'b0}};
                    rp <= 3'd0;  rcnt <= 3'd0;
                end else if (fcnt >= 10 + N) begin
                    if (rcnt == 3'd6) begin
                        rq <= (!idxn[10] && idxn < W) ? rdel[idxn[8:0]] : {(NBITS+1){1'b0}};
                        rp <= rp + 3'd1;  rcnt <= 3'd0;
                    end else
                        rcnt <= rcnt + 3'd1;
                end
                if (fcnt == 4 + N) begin                // the slices start their slot now
                    huc  <= 7'd0;
                    up_x <= xa;
                end
                if (fcnt == T - 1) begin
                    if (xa == LAST) begin
                        wait_n <= 8'd0;
                        frame_start <= (y == 10'd0);
                        st <= S_TAIL;
                    end else begin
                        xa <= xa + 10'd1;
                        st <= S_PIX;
                    end
                end
            end
            S_TAIL: begin                               // the last records come in
                wait_n <= wait_n + 8'd1;
                if (wait_n == 8'd80) begin
                    ox <= 10'd0;
                    st <= S_OUT0;
                end
            end
            S_OUT0: begin
                fq <= fin[ox[8:0]];
                st <= S_OUT1;
            end
            S_OUT1: begin
                dq <= drw[f_idx[10] ? 9'd0 : f_idx[8:0]];
                st <= S_OUT2;
            end
            S_OUT2: begin
                out_valid <= 1'b1;
                out_y     <= y;
                out_x     <= ox;
                out_disp  <= f_ok ? {f_true, 4'b0000} + {{7{f_off[4]}}, f_off} : 12'd0;
                ox        <= ox + 10'd1;
                st        <= S_OUT0;
                if (ox == W - 1) begin
                    xa <= 10'd0;
                    y  <= (y == H - 1) ? 10'd0 : y + 10'd1;
                    st <= (y == H - 1 && LOOP == 0) ? S_DONE : S_PIX;
                end
            end
            default: ;
        endcase

        // up-link: the record of the slot the slices started in slot up_x.
        // It tells about pixel up_x - 2 (and, in its last bytes, up_x - 3).
        if (huc >= 17 + N && huc <= 27 + 2 * N) begin : record
            reg [6:0]  bi;
            reg [10:0] di, fi;
            bi = huc - 7'd17 - N;
            di = {1'b0, up_x} - 11'd2 - DMIN - TOTAL + 11'd1;
            fi = {1'b0, up_x} - 11'd3;
            if (bi == 7'd0) r_gmin  <= ul_r[6:0];
            if (bi == 7'd2) r_kstar <= ul_r[6:0];
            if (bi >= 7'd3 && bi < 3 + N) r_lbot[bi - 7'd3] <= ul_r[6:0];
            if (bi == 5 + N && !di[10] && di < W) drw[di[8:0]] <= ul_r[6:0];
            if (bi == 9 + N) f0 <= ul_r;
            if (bi == 10 + N && !fi[10] && fi < W) fin[fi[8:0]] <= {f0, ul_r[4:0]};
        end

        if (rst) begin
            st <= S_RST;  wait_n <= 8'd0;  fcnt <= 8'd0;  huc <= 7'd127;  out_valid <= 1'b0;
            xa <= 10'd0;  y <= 10'd0;  up_x <= 10'd0;  frame_start <= 1'b0;
        end
    end
endmodule
