// The hub's disparities as bytes for the USB side: either the PC tools' stream
// (a 32-byte header, then two bytes per pixel) or, in webcam mode, video
// payloads with the rectified left picture next to the disparity (uvc_lines.v).
module frame_format #(
    parameter W = 200,
    parameter H = 148
) (
    input  wire        clk,
    input  wire        rst,
    // from the hub
    input  wire        px_valid,
    input  wire [9:0]  px_y, px_x,
    input  wire [11:0] px_disp,
    input  wire        hdr_start,               // the first row of a picture is about to come
    // rectified left picture
    input  wire        l_valid,
    input  wire        l_first,
    input  wire [7:0]  l_luma,
    input  wire [31:0] start_us,                // start of the camera frame, for the header
    input  wire        uvc,                     // 1: webcam payloads
    input  wire        out_room,                // webcam mode: the FIFO behind takes a whole row
    output wire        out_wr,
    output wire [7:0]  out_byte,
    output wire        out_last                 // webcam mode: last byte of a payload
);
    reg [15:0] frame_no = 0;
    reg [5:0]  hidx = 6'd32;                    // 32 = no header in progress
    reg        hi_pending = 1'b0;
    reg [7:0]  hi_byte = 0;
    (* ASYNC_REG = "TRUE" *) reg [31:0] us_a = 0, us_b = 0;
    reg [7:0]  hdr;
    always @* begin
        case (hidx[4:0])
            5'd0:  hdr = 8'hAA;
            5'd1:  hdr = 8'h55;
            5'd2:  hdr = 8'hF0;
            5'd3:  hdr = 8'h0F;
            5'd4:  hdr = "C";
            5'd5:  hdr = "A";
            5'd6:  hdr = "M";
            5'd7:  hdr = "0";
            5'd8:  hdr = frame_no[7:0];
            5'd9:  hdr = frame_no[15:8];
            5'd10: hdr = (2 * W) & 8'hFF;        // bytes per line and lines "of the previous frame": always the same
            5'd11: hdr = (2 * W) >> 8;
            5'd12: hdr = H & 8'hFF;
            5'd13: hdr = H >> 8;
            5'd20: hdr = us_b[7:0];
            5'd21: hdr = us_b[15:8];
            5'd22: hdr = us_b[23:16];
            5'd23: hdr = us_b[31:24];
            5'd24: hdr = 8'hFF;                  // no ToF reading in this stream
            5'd25: hdr = 8'hFF;
            default: hdr = 8'h00;
        endcase
    end
    reg        out_wr_r = 1'b0;
    reg [7:0]  out_byte_r = 8'h00;
    always @(posedge clk) begin
        out_wr_r <= 1'b0;
        us_a <= start_us;  us_b <= us_a;
        if (rst) begin
            hidx <= 6'd32;  hi_pending <= 1'b0;
        end else begin
            if (hdr_start) begin
                hidx <= 6'd0;
                frame_no <= frame_no + 16'd1;
            end else if (!hidx[5]) begin
                out_wr_r <= 1'b1;  out_byte_r <= hdr;  hidx <= hidx + 6'd1;
            end
            if (px_valid) begin
                out_wr_r <= 1'b1;  out_byte_r <= px_disp[7:0];
                hi_byte <= {4'b0000, px_disp[11:8]};  hi_pending <= 1'b1;
            end else if (hi_pending) begin
                out_wr_r <= 1'b1;  out_byte_r <= hi_byte;  hi_pending <= 1'b0;
            end
        end
    end

    // ---- webcam mode ----------------------------------------------------------------------
    wire       u_wr, u_last;
    wire [7:0] u_byte;
    uvc_lines #(.W(W), .H(H)) u_uvc (
        .clk(clk), .rst(rst),
        .l_valid(l_valid), .l_first(l_first), .l_luma(l_luma),
        .d_valid(px_valid), .d_y(px_y), .d_x(px_x), .d_disp(px_disp),
        .room(out_room), .out_wr(u_wr), .out_byte(u_byte), .out_last(u_last));
    assign out_wr   = uvc ? u_wr   : out_wr_r;
    assign out_byte = uvc ? u_byte : out_byte_r;
    assign out_last = uvc && u_last;
endmodule
