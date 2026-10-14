// Luma of one camera for the depth chain, taken from cam_capture's sampled
// byte stream (same clock, 200 MHz).
//
// The sensor sends RGB565, high byte first. Per pixel:
//   R = r5 << 3 | r5 >> 2,  G = g6 << 2 | g6 >> 4,  B = b5 << 3 | b5 >> 2
//   Y = (77 R + 150 G + 29 B) >> 8
// exactly as camlink.rgb565_to_rgb and disparity.luma do on the PC.
//
// Every frame is delivered as exactly H rows of exactly W pixels, whatever
// the sensor does: longer lines and further lines are cut, a line that ends
// early is filled with zeros (the line buffer counts on W pixels per row).
module luma_tap #(
    parameter W = 800,
    parameter H = 600
) (
    input  wire       clk,
    input  wire       rst,
    input  wire       stb,                  // one cycle per sampled byte clock edge
    input  wire [7:0] d,
    input  wire       href,
    input  wire       vsync,
    output reg        wr_sof  = 1'b0,
    output reg        wr_en   = 1'b0,
    output reg  [7:0] wr_data = 8'h00
);
    reg        href_d = 1'b0, vsync_d = 1'b0, second = 1'b0, fill = 1'b0;
    reg [7:0]  hi = 8'h00;
    reg [10:0] px = 11'd0;                  // pixels of this line handed on so far
    reg [10:0] row = 11'd0;
    reg        p_v = 1'b0, q_v = 1'b0, q_zero = 1'b0, p_zero = 1'b0;
    reg [15:0] p_rgb = 16'd0;
    reg [14:0] yr = 0;
    reg [15:0] yg = 0;
    reg [12:0] yb = 0;

    wire [7:0] r8 = {p_rgb[15:11], p_rgb[15:13]};
    wire [7:0] g8 = {p_rgb[10:5],  p_rgb[10:9]};
    wire [7:0] b8 = {p_rgb[4:0],   p_rgb[4:2]};
    wire [16:0] ysum = yr + yg + yb;

    always @(posedge clk) begin
        wr_sof <= 1'b0;
        p_v    <= 1'b0;
        p_zero <= 1'b0;
        if (rst) begin
            fill <= 1'b0;  second <= 1'b0;  px <= 11'd0;  row <= H;      // nothing until a frame starts
        end else begin
            if (fill) begin                                 // top up a short line, one pixel per clock
                if (px == W)
                    fill <= 1'b0;
                else begin
                    p_v <= 1'b1;  p_zero <= 1'b1;  px <= px + 11'd1;
                end
            end
            if (stb) begin
                href_d  <= href;
                vsync_d <= vsync;
                if (vsync && !vsync_d) begin                // frame start
                    wr_sof <= 1'b1;
                    row <= 11'd0;  px <= 11'd0;  second <= 1'b0;  fill <= 1'b0;
                end else if (href && row < H) begin
                    second <= ~second;
                    if (!second)
                        hi <= d;
                    else if (px < W) begin
                        p_v <= 1'b1;  p_rgb <= {hi, d};  px <= px + 11'd1;
                    end
                end else if (href_d && !href && row < H) begin   // line ended
                    second <= 1'b0;
                    row    <= row + 11'd1;
                    if (px != W) fill <= 1'b1; else px <= 11'd0;
                end
            end
            if (fill && px == W) px <= 11'd0;
        end
        // two register stages: the three products, then their sum
        q_v    <= p_v;
        q_zero <= p_zero;
        yr     <= r8 * 7'd77;
        yg     <= g8 * 8'd150;
        yb     <= b8 * 5'd29;
        wr_en   <= q_v;
        wr_data <= q_zero ? 8'h00 : ysum[15:8];
    end
endmodule
