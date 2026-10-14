// Single-clock byte FIFO with an exact fill count, built for 200 MHz.
//
// Contract with the reader (cam_mux):
//   - never assert `rd` on an empty FIFO; there is no empty check on the
//     read path, to keep the block RAM address logic one LUT deep;
//   - `dout` shows the byte at the read pointer one cycle after it was
//     written, so only take bytes that `count` already included a cycle
//     earlier. cam_mux latches `count`, spends four cycles on a header and
//     then reads at most that many bytes.
// Contract with the writer (cam_capture): stop when `almost_full` is high.
// It is registered, hence the margin of 16 bytes.
module byte_fifo #(
    parameter AW = 14
) (
    input  wire        clk,
    input  wire        rst,
    input  wire        wr,
    input  wire [7:0]  din,
    output reg         almost_full = 1'b0,
    input  wire        rd,
    output reg  [7:0]  dout = 8'h00,
    output reg  [AW:0] count = 0
);
    reg [7:0]    mem [0:(1 << AW) - 1];
    reg [AW-1:0] wp = 0, rp = 0, rp_inc = 1;

    wire do_wr = wr && !count[AW];
    wire [AW-1:0] raddr = rd ? rp_inc : rp;

    always @(posedge clk) begin
        if (do_wr)
            mem[wp] <= din;
        dout <= mem[raddr];

        if (rst) begin
            wp          <= 0;
            rp          <= 0;
            rp_inc      <= 1;
            count       <= 0;
            almost_full <= 1'b0;
        end else begin
            if (do_wr)
                wp <= wp + 1'b1;
            if (rd) begin
                rp     <= rp_inc;
                rp_inc <= rp_inc + 1'b1;
            end
            count       <= count + (do_wr ? 1'b1 : 1'b0) - (rd ? 1'b1 : 1'b0);
            almost_full <= (count >= (1 << AW) - 16);
        end
    end
endmodule
