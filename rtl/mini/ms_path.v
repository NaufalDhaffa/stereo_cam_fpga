// Matcher slice, block 3 of 5: the path cost along the row (semi-global
// matching, left to right), its minimum, its values at the two ends of the
// window, and the lowest sum with its place.
module ms_path (
    input  wire        clk,
    input  wire        load,
    input  wire        scan,
    input  wire [3:0]  j,
    input  wire        b_first, b_real,
    input  wire [5:0]  cost,
    input  wire [6:0]  gmin, p1, p2,
    input  wire [6:0]  dn_edge, up_edge,    // the neighbours' path cost just outside the window
    output wire [6:0]  old,                 // path cost of the pixel before at this disparity
    output wire [6:0]  l_new,
    output reg  [6:0]  lmin, l_bot, l_top,
    output reg  [7:0]  best_s,
    output reg  [3:0]  best_j
);
    reg [6:0] lr [0:15];
    reg [6:0] carry_l;

    function [8:0] min9;
        input [8:0] a, b;
        begin min9 = (a < b) ? a : b; end
    endfunction

    assign old = lr[j];
    wire [6:0]  l_dn = (j == 4'd0)  ? dn_edge : carry_l;
    wire [6:0]  l_up = (j == 4'd15) ? up_edge : lr[j + 4'd1];
    wire [8:0]  l_m  = min9(min9({2'b00, old}, {2'b00, gmin} + {2'b00, p2}),
                            min9({2'b00, l_dn}, {2'b00, l_up}) + {2'b00, p1});
    wire [9:0]  l_v  = {4'b0000, cost} + {1'b0, l_m} - {3'b000, gmin};
    assign l_new = b_first ? {1'b0, cost} : ((l_v > 10'd127) ? 7'd127 : l_v[6:0]);

    always @(posedge clk) begin
        if (load) begin
            lmin   <= 7'd127;
            best_s <= 8'hFF;
        end
        if (scan) begin
            if (b_real) begin
                lr[j] <= l_new;
                if (l_new < lmin) lmin <= l_new;
                if ({1'b0, l_new} < best_s) begin
                    best_s <= {1'b0, l_new};
                    best_j <= j;
                end
                if (j == 4'd0)  l_bot <= l_new;
                if (j == 4'd15) l_top <= l_new;
            end
            carry_l <= old;
        end
    end
endmodule
