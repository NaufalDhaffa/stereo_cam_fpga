// Matcher slice, block 4 of 5: for the pixel before, the runner-up and the
// sums next to the winner; and the right image's running winner, a chain
// that moves one disparity per pixel.
module ms_pick (
    input  wire        clk,
    input  wire        load,
    input  wire        scan,
    input  wire [3:0]  j,
    input  wire [6:0]  g,                   // this disparity's index in the whole chain
    input  wire [6:0]  old, l_new,
    input  wire [6:0]  kstar,               // the chain's winner of the pixel before
    input  wire [2:0]  n,
    input  wire        b_v, b_use, b_real,
    input  wire [14:0] rec_in,              // from the slice below: {none, sum, index}
    output reg  [7:0]  sec,                 // {none, value}
    output reg  [7:0]  s0, s2,              // {held, value}
    output wire [14:0] rec_top
);
    reg [14:0] rec [0:15];
    reg [14:0] carry_rec;
    wire [6:0] total = {n, 4'b0000};
    wire [6:0] k_lo = (kstar == 7'd0) ? 7'd0 : kstar - 7'd1;
    wire [6:0] k_hi = (kstar == total - 7'd1) ? kstar : kstar + 7'd1;
    wire       outside = (g < k_lo) || (g > k_hi);
    wire [14:0] r_from = carry_rec;
    wire        r_take = b_use && b_real && ({1'b0, l_new} < r_from[14:7]);
    wire [14:0] r_new  = r_take ? {1'b0, l_new, g} : r_from;
    assign rec_top = rec[15];

    always @(posedge clk) begin
        if (load) begin
            sec <= 8'hFF;
            s0  <= 8'h00;
            s2  <= 8'h00;
            carry_rec <= rec_in;
        end
        if (scan) begin
            if (outside && ({1'b0, old} < sec)) sec <= {1'b0, old};
            if (g == k_lo) s0 <= {1'b1, old};
            if (g == k_hi) s2 <= {1'b1, old};
            if (b_v) begin
                rec[j]    <= r_new;
                carry_rec <= rec[j];
            end
        end
    end
endmodule
