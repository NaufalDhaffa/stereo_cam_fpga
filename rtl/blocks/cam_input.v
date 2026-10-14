// Both cameras from their pins to what the rest works on:
//
//   2 x cam_capture   the sensor's bytes, oversampled by the 200 MHz clock, as the PC tools'
//                     raw streams (into a FIFO each) and as a strobed byte stream
//   2 x luma_tap      the luma of every pixel; binned 2 x 2 in the mini build
//   2 x rect_linebuf  the last rows of each picture, read by the rectifiers in their own clock
//
// It also owns the time base of the frame headers, the two resets (capture clock and
// processing clock, both released by the PS through EMIO GPIO bit 1), and the genlock
// measurement: when each camera's frame started.
module cam_input #(
    parameter FIFO_AW = 13                      // 8 KiB per raw stream in front of the mux
) (
    input  wire        clk,                     // FCLK0, 200 MHz: capture
    input  wire        pclk,                    // FCLK1: processing
    input  wire [63:0] gpio_o,                  // EMIO GPIO from the PS: [0] PWDN camera 0, [1] capture enable,
                                                // [2] PWDN camera 1, [18:3] ToF distance, [19] flips with a reading
    // camera 0 (left), header DATA1
    input  wire [7:0]  cam_d,
    input  wire        cam_pclk,
    input  wire        cam_vsync,
    input  wire        cam_href,
    output wire        cam_pwdn,
    // camera 1 (right), header DATA3
    input  wire [7:0]  cam2_d,
    input  wire        cam2_pclk,
    input  wire        cam2_vsync,
    input  wire        cam2_href,
    output wire        cam2_pwdn,

    output wire        cap_rst,                 // reset of the capture clock's logic
    output wire        prst,                    // reset of the processing clock's logic
    // raw streams, read by the stream mux
    input  wire        raw0_rd,
    output wire [7:0]  raw0_dout,
    output wire [FIFO_AW:0] raw0_count,
    input  wire        raw1_rd,
    output wire [7:0]  raw1_dout,
    output wire [FIFO_AW:0] raw1_count,
    // line buffers, read by the rectifiers (processing clock)
    output wire [9:0]  rows_gray0, rows_gray1,
    output wire        sof_toggle0, sof_toggle1,
    output wire [15:0] frame_base0, frame_base1,
    input  wire [15:0] rd_addr0, rd_addr1,
    output wire [7:0]  rd_data0, rd_data1,
    // frame timing
    output wire [31:0] start_us1,               // start of camera 1's last frame, microseconds
    output wire [31:0] genlock,                 // {frames of camera 1, start of camera 1's frame minus camera 0's}
    output wire        frame_led0, frame_led1
);
    `include "rect_cfg.vh"
    localparam W = IMG_W, LAW = 16;

    assign cam_pwdn  = gpio_o[0];
    assign cam2_pwdn = gpio_o[2];
    wire   cap_enable = gpio_o[1];

    // 0.5 ms time base and the microsecond counter of the frame headers
    reg [16:0] half_ms = 17'd0;
    reg        tick    = 1'b0;
    reg [7:0]  us_cnt  = 8'd0;
    reg        us_tick = 1'b0;
    reg [31:0] t_us    = 32'd0;
    always @(posedge clk) begin
        tick    <= (half_ms == 17'd99999);
        half_ms <= (half_ms == 17'd99999) ? 17'd0 : half_ms + 17'd1;
        us_tick <= (us_cnt == 8'd199);
        us_cnt  <= (us_cnt == 8'd199) ? 8'd0 : us_cnt + 8'd1;
        if (us_tick)
            t_us <= t_us + 32'd1;
    end

    // ToF distance handed over by the PS
    (* ASYNC_REG = "TRUE" *) reg [16:0] tof_m0 = 17'd0, tof_m1 = 17'd0;
    reg [16:0] tof_m2 = 17'd0;
    reg        tof_new = 1'b0;
    reg [15:0] tof_mm  = 16'd0;
    reg [7:0]  tof_seq = 8'd0;
    reg [31:0] tof_us  = 32'd0;
    always @(posedge clk) begin
        tof_m0  <= gpio_o[19:3];
        tof_m1  <= tof_m0;
        tof_m2  <= tof_m1;
        tof_new <= (tof_m1[16] != tof_m2[16]);
        if (tof_new) begin
            tof_mm  <= tof_m2[15:0];
            tof_seq <= tof_seq + 8'd1;
            tof_us  <= t_us;
        end
    end

    // capture enable into the capture clock, reset into the processing clock
    (* ASYNC_REG = "TRUE" *) reg [2:0] en_sync = 3'b000, prst_sync = 3'b111;
    always @(posedge clk)
        en_sync <= {en_sync[1:0], cap_enable};
    always @(posedge pclk)
        prst_sync <= {prst_sync[1:0], ~cap_enable};
    assign cap_rst = ~en_sync[2];
    assign prst    = prst_sync[2];

    // ----------------------------------------------------------- capture
    wire        c0_wr, c0_afull, c1_wr, c1_afull;
    wire [7:0]  c0_din, c1_din;
    wire        s0_stb, s0_href, s0_vsync, s1_stb, s1_href, s1_vsync;
    wire [7:0]  s0_d, s1_d;
    wire [31:0] start_us0;

    cam_capture u_cap (
        .clk(clk), .rst(cap_rst),
        .cam_pclk(cam_pclk), .cam_d(cam_d), .cam_href(cam_href), .cam_vsync(cam_vsync),
        .tick(tick), .t_us(t_us),
        .tof_mm(tof_mm), .tof_seq(tof_seq), .tof_us(tof_us),
        .fifo_full(c0_afull),
        .fifo_wr_en(c0_wr), .fifo_din(c0_din),
        .frame_led(frame_led0), .frame_start_us(start_us0),
        .pclk_f(), .stb(s0_stb), .d_q(s0_d), .href_q(s0_href),
        .vsync_q(s0_vsync), .trunc(), .state(), .lines(), .line_bytes()
    );

    cam_capture u_cap2 (
        .clk(clk), .rst(cap_rst),
        .cam_pclk(cam2_pclk), .cam_d(cam2_d), .cam_href(cam2_href), .cam_vsync(cam2_vsync),
        .tick(tick), .t_us(t_us),
        .tof_mm(tof_mm), .tof_seq(tof_seq), .tof_us(tof_us),
        .fifo_full(c1_afull),
        .fifo_wr_en(c1_wr), .fifo_din(c1_din),
        .frame_led(frame_led1), .frame_start_us(start_us1),
        .pclk_f(), .stb(s1_stb), .d_q(s1_d), .href_q(s1_href),
        .vsync_q(s1_vsync), .trunc(), .state(), .lines(), .line_bytes()
    );

    byte_fifo #(.AW(FIFO_AW)) u_cfifo0 (
        .clk(clk), .rst(cap_rst), .wr(c0_wr), .din(c0_din), .almost_full(c0_afull),
        .rd(raw0_rd), .dout(raw0_dout), .count(raw0_count)
    );
    byte_fifo #(.AW(FIFO_AW)) u_cfifo1 (
        .clk(clk), .rst(cap_rst), .wr(c1_wr), .din(c1_din), .almost_full(c1_afull),
        .rd(raw1_rd), .dout(raw1_dout), .count(raw1_count)
    );

    // ------------------------------------------------- luma and line buffers
    // The sensor's luma, RAW_W x RAW_H; the mini build bins it 2 x 2 (BIN = 2) to W x H.
    wire        t0_sof, t0_en, t1_sof, t1_en;
    wire [7:0]  t0_d, t1_d;
    luma_tap #(.W(RAW_W), .H(RAW_H)) u_luma0 (.clk(clk), .rst(cap_rst), .stb(s0_stb), .d(s0_d), .href(s0_href),
                                              .vsync(s0_vsync), .wr_sof(t0_sof), .wr_en(t0_en), .wr_data(t0_d));
    luma_tap #(.W(RAW_W), .H(RAW_H)) u_luma1 (.clk(clk), .rst(cap_rst), .stb(s1_stb), .d(s1_d), .href(s1_href),
                                              .vsync(s1_vsync), .wr_sof(t1_sof), .wr_en(t1_en), .wr_data(t1_d));
    wire        l0_sof, l0_en, l1_sof, l1_en;
    wire [7:0]  l0_d, l1_d;
    generate
        if (BIN == 2) begin : g_bin
            luma_bin2 #(.W(RAW_W)) u_bin0 (.clk(clk), .in_sof(t0_sof), .in_en(t0_en), .in_data(t0_d),
                                           .out_sof(l0_sof), .out_en(l0_en), .out_data(l0_d));
            luma_bin2 #(.W(RAW_W)) u_bin1 (.clk(clk), .in_sof(t1_sof), .in_en(t1_en), .in_data(t1_d),
                                           .out_sof(l1_sof), .out_en(l1_en), .out_data(l1_d));
        end else begin : g_nobin
            assign {l0_sof, l0_en, l0_d} = {t0_sof, t0_en, t0_d};
            assign {l1_sof, l1_en, l1_d} = {t1_sof, t1_en, t1_d};
        end
    endgenerate

    // The mini chain is slower per row than the camera delivers them at 24 fps and only just
    // faster at 15 fps: two more rows in its line buffers for the wait.
    localparam BUF0 = LINES0 + (MINI ? 2 : 0), BUF1 = LINES1 + (MINI ? 2 : 0);
    rect_linebuf #(.W(W), .LINES(BUF0), .AW(LAW)) u_buf0 (
        .wclk(clk), .wr_sof(l0_sof), .wr_en(l0_en), .wr_data(l0_d), .frame_base(frame_base0), .rows_done(),
        .rows_gray(rows_gray0), .sof_toggle(sof_toggle0), .rclk(pclk), .rd_addr(rd_addr0), .rd_data(rd_data0));
    rect_linebuf #(.W(W), .LINES(BUF1), .AW(LAW)) u_buf1 (
        .wclk(clk), .wr_sof(l1_sof), .wr_en(l1_en), .wr_data(l1_d), .frame_base(frame_base1), .rows_done(),
        .rows_gray(rows_gray1), .sof_toggle(sof_toggle1), .rclk(pclk), .rd_addr(rd_addr1), .rd_data(rd_data1));

    // For a program on the PS that keeps the two cameras in step (genlock): the frames of
    // camera 1 counted, and the start of its last frame minus the start of camera 0's last
    // frame, in microseconds (modulo 2^24).
    reg [31:0] us1_seen = 32'd0;
    reg [7:0]  gl_seq = 8'd0;
    reg [23:0] gl_phase = 24'd0;
    always @(posedge clk) begin
        us1_seen <= start_us1;
        if (us1_seen != start_us1) begin
            gl_seq   <= gl_seq + 8'd1;
            gl_phase <= start_us1[23:0] - start_us0[23:0];
        end
    end
    assign genlock = {gl_seq, gl_phase};
endmodule
