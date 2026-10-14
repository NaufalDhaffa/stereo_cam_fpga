// Matcher slice, block 2 of 5: the last 16 right signatures (rs[j] is the
// candidate of disparity "window start + j"), the Hamming cost against the
// left signature, and its mean over three pixels of the row.
module ms_cost #(
    parameter NBITS = 44
) (
    input  wire         clk,
    input  wire         load,
    input  wire         first,              // the slot loaded is a row's first
    input  wire [NBITS:0] in_left, in_right,    // {valid, signature}
    input  wire         scan,
    input  wire [3:0]   j,
    input  wire         w_real,
    input  wire         b_first,
    output wire [5:0]   cost
);
    localparam [5:0] NB6 = NBITS;
    integer i;
    reg [NBITS-1:0] left;
    reg             left_ok;
    reg [NBITS-1:0] rs [0:15];
    reg [15:0]      rs_ok;
    reg [11:0]      hist [0:15];            // raw cost of the pixel being aggregated and of the one before

    function [2:0] ones6;
        input [5:0] v;
        begin ones6 = v[0] + v[1] + v[2] + v[3] + v[4] + v[5]; end
    endfunction
    function [5:0] popcount;
        input [47:0] v;
        reg [3:0] a, b, c, d;
        begin
            a = ones6(v[5:0])   + ones6(v[11:6]);
            b = ones6(v[17:12]) + ones6(v[23:18]);
            c = ones6(v[29:24]) + ones6(v[35:30]);
            d = ones6(v[41:36]) + ones6(v[47:42]);
            popcount = ({2'b00, a} + {2'b00, b}) + ({2'b00, c} + {2'b00, d});
        end
    endfunction

    wire [47:0] x48  = {{(48-NBITS){1'b0}}, left ^ rs[j]};
    wire [5:0]  raw  = (left_ok && rs_ok[j]) ? popcount(x48) : NB6;
    wire [11:0] hq   = hist[j];
    wire [5:0]  cur  = hq[11:6];
    wire [5:0]  lft  = b_first ? cur : hq[5:0];
    wire [5:0]  rgt  = w_real ? raw : cur;
    wire [7:0]  sum3 = lft + cur + rgt + 8'd1;
    wire [15:0] thrd = sum3 * 8'd171;
    assign cost = thrd[14:9];

    always @(posedge clk) begin
        if (load) begin
            left    <= in_left[NBITS-1:0];
            left_ok <= in_left[NBITS];
            rs[0]   <= in_right[NBITS-1:0];
            for (i = 1; i < 16; i = i + 1) rs[i] <= rs[i - 1];
            rs_ok   <= first ? {15'd0, in_right[NBITS]} : {rs_ok[14:0], in_right[NBITS]};
        end
        if (scan) hist[j] <= {raw, cur};
    end
endmodule
