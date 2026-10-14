// The luma of a camera binned 2 x 2 (mean of four pixels, rounded), between
// luma_tap and the line buffer: W x H in, W/2 x H/2 out. Same clock as the
// capture (200 MHz). Bit-exact counterpart of stream.bin2() on the PC.
module luma_bin2 #(
    parameter W = 400                       // pixels per row coming in (even)
) (
    input  wire       clk,
    input  wire       in_sof,
    input  wire       in_en,
    input  wire [7:0] in_data,
    output reg        out_sof  = 1'b0,
    output reg        out_en   = 1'b0,
    output reg  [7:0] out_data = 8'h00
);
    reg [9:0] x = 10'd0;
    reg       odd_row = 1'b0;
    reg [7:0] prev = 8'h00;
    reg [8:0] pair_sum [0:255];             // sums of the pixel pairs of the upper row
    reg [8:0] up = 9'd0, h = 9'd0;
    reg [7:0] idx = 8'd0;
    reg       v1 = 1'b0, v1_odd = 1'b0, sof1 = 1'b0;
    wire [9:0] four = {1'b0, up} + {1'b0, h} + 10'd2;

    always @(posedge clk) begin
        v1      <= 1'b0;
        sof1    <= in_sof;
        out_sof <= sof1;
        out_en  <= 1'b0;
        if (in_sof) begin
            x <= 10'd0;  odd_row <= 1'b0;
        end else if (in_en) begin
            prev <= in_data;
            if (x[0]) begin                 // second pixel of a pair
                h      <= {1'b0, prev} + {1'b0, in_data};
                idx    <= x[8:1];
                up     <= pair_sum[x[8:1]];
                v1     <= 1'b1;
                v1_odd <= odd_row;
            end
            if (x == W - 1) begin
                x <= 10'd0;  odd_row <= ~odd_row;
            end else
                x <= x + 10'd1;
        end
        if (v1) begin
            if (!v1_odd)
                pair_sum[idx] <= h;
            else begin
                out_en   <= 1'b1;
                out_data <= four[9:2];
            end
        end
    end
endmodule
