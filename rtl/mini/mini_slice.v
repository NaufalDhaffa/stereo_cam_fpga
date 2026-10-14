// One slice of the chained "matcher mini": 16 consecutive disparities, one
// SGM direction (left to right), no line memory. N identical slices behind a
// hub behave as one matcher with 16 N disparities; see docs/matcher_mini_chain.md
// and the model host/stereo/chain.py.
//
// Tape-out rules as for stereo_core: one clock, synchronous reset of what
// decides whether something happens, no initial values, no memories (the
// arrays here are 16 entries each and become flip-flops).
//
// Pins (the 24 of a Tiny Tapeout project):
//   ui[6:0]  down-link from the hub, 7 bits per clock, shared by all slices
//   ui[7]    sync: this clock carries the header of a frame
//   uio[7:0] up-link from the slice below (0 at the bottom slice)
//   uo[7:0]  up-link to the slice above (to the hub at the top)
// Inputs are sampled on the rising edge, uo changes on the falling edge: every
// connection has half a clock period, whatever the wires are like.
//
// Down-link frame, one per pixel slot (`ph` counts its clocks, set by sync):
//   0            header {type[2:0], 0, use, real, first}; type 1 = pixel, 2 = settings
//   1, 2         gmin and kstar of the pixel before
//   3 + q        path cost above the window of slice q (127 = nothing there)
//   3 + N + i    left signature, 7 bits at a time, low bits first (bit 44 = valid)
//   10 + N + 7 p + i   right signature for slice p, delayed by the hub for its window
// A settings frame carries P1, P2, uniqueness and N in clocks 1 to 4.
//
// The slot whose signatures arrived in one frame is computed in the next
// frame, once the values that depend on the pixel before have arrived
// (clock 3 + N): 16 clocks, one disparity each. The pixel the costs are
// aggregated for is the one before the arriving one (the cost is a mean over
// three pixels). Then the up-link record passes through the chain, one clock
// per slice; byte i is handled by slice p in clock 17 + i + p after the start:
//   0            lowest path cost                       minimum
//   1, 2         lowest sum and its index               the lower one, lower index first
//   3 + q        path cost at the bottom of slice q     each slice fills in its own
//   3 + N        path cost at the top                   for the slice above
//   4 + N, 5 + N right image's running winner leaving the window, for the slice above
//   6 + N        runner-up of the pixel before          minimum
//   7 + N, 8 + N sums next to that pixel's winner       whoever holds them
//   9 + N, 10 + N  from the top slice: {unique, winner index}, sub-pixel offset
// While no pixel frame has been seen, a slice shows uio + 1 and takes uio as
// its position: the chain numbers itself.
//
// The slice is five blocks, each a module of its own so that the chip's floor
// plan can give each one a rectangle:
//
//   ms_ctrl   down-link receiver, settings, the slot's clock and flags
//   ms_cost   history of right signatures, Hamming cost, mean over three pixels
//   ms_path   path cost (SGM, left to right), its minimum and the best sum
//   ms_pick   runner-up pass and the right image's running winner
//   ms_up     up-link: merging the record, the top slice's sub-pixel and uniqueness
module mini_slice #(
    parameter NBITS = 44                    // census bits
) (
    input  wire       clk,
    input  wire       rst,
    input  wire [7:0] ui,
    input  wire [7:0] uio,
    output wire [7:0] uo
);
    wire        run, load, sg_first, act, scan, w_real, b_v, b_first, b_real, b_use;
    wire [2:0]  pos, n;
    wire [6:0]  p1, p2, gmin, kstar, up_edge, uc;
    wire [3:0]  uq, j, best_j;
    wire [NBITS:0] in_left, in_right;
    wire [7:0]  uio_r;
    wire [5:0]  cost;
    wire [6:0]  old, l_new, lmin, l_bot, l_top, dn_edge;
    wire [7:0]  best_s, sec, s0, s2;
    wire [14:0] rec_in, rec_top;
    wire [6:0]  g = {pos, j};

    ms_ctrl #(.NBITS(NBITS)) u_ctrl (
        .clk(clk), .rst(rst), .ui(ui), .pos_in(uio_r[2:0]),
        .run(run), .pos(pos), .n(n), .p1(p1), .p2(p2), .uq(uq),
        .gmin(gmin), .kstar(kstar), .up_edge(up_edge), .in_left(in_left), .in_right(in_right),
        .load(load), .sg_first(sg_first), .act(act), .uc(uc), .scan(scan), .j(j),
        .w_real(w_real), .b_v(b_v), .b_first(b_first), .b_real(b_real), .b_use(b_use));
    ms_cost #(.NBITS(NBITS)) u_cost (
        .clk(clk), .load(load), .first(sg_first), .in_left(in_left), .in_right(in_right),
        .scan(scan), .j(j), .w_real(w_real), .b_first(b_first), .cost(cost));
    ms_path u_path (
        .clk(clk), .load(load), .scan(scan), .j(j), .b_first(b_first), .b_real(b_real),
        .cost(cost), .gmin(gmin), .p1(p1), .p2(p2), .dn_edge(dn_edge), .up_edge(up_edge),
        .old(old), .l_new(l_new), .lmin(lmin), .l_bot(l_bot), .l_top(l_top), .best_s(best_s), .best_j(best_j));
    ms_pick u_pick (
        .clk(clk), .load(load), .scan(scan), .j(j), .g(g), .old(old), .l_new(l_new),
        .kstar(kstar), .n(n), .b_v(b_v), .b_use(b_use), .b_real(b_real), .rec_in(rec_in),
        .sec(sec), .s0(s0), .s2(s2), .rec_top(rec_top));
    ms_up u_up (
        .clk(clk), .rst(rst), .uio(uio), .uo(uo), .uio_r(uio_r),
        .run(run), .act(act), .load(load), .uc(uc), .pos(pos), .n(n), .uq(uq),
        .lmin(lmin), .best_s(best_s), .best_k({pos, best_j}), .l_bot(l_bot), .l_top(l_top),
        .rec_top(rec_top), .sec(sec), .s0(s0), .s2(s2),
        .dn_edge(dn_edge), .rec_in(rec_in));
endmodule
