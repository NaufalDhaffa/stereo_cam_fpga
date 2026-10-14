// Stereo depth on EBAZ4205: two OV2640 (headers DATA1 and DATA3) -> depth in
// the PL -> FX2LP Slave FIFO (header DATA2).
//
//   FCLK0, 200 MHz  2x cam_capture (oversampled camera pins), 2x luma_tap,
//                   write side of the two line buffers, the three byte FIFOs,
//                   stream_mux, write side of the USB FIFO
//   FCLK1, 62.5 MHz depth_core: rectification, census, matching (see there)
//   IFCLK, 48 MHz   read side of the USB FIFO, fx2_writer
//   PS              I2C0 / I2C1 over EMIO for the two SCCB buses; EMIO GPIO:
//                     [0] PWDN camera 0   [1] capture enable   [2] PWDN camera 1
//                     [18:3] ToF distance in mm, [19] flips with every reading
//                     [20] 1 = send the disparity stream
//
// Three streams go to the PC, in 512-byte chunks (stream_mux.v):
//   stream 0   camera 0 (left) as it comes from the sensor
//   stream 1   camera 1 (right) as it comes from the sensor
//   stream 2   with GPIO[20] set: disparity of every pixel of the rectified
//              left image, 1/16 pixel, 16 bit, low byte first; each frame's
//              header carries the start time of the camera 1 frame it was
//              computed from, so the PC can put the three together
// The raw streams are always there: the calibration and alignment tools use
// them, and with all three the PC can recompute a frame's disparity from the
// very pictures the logic saw.
//
// The rectification tables and the matcher's constants are built in from
// build/golden (python -m stereo.golden): a new calibration needs a new build.
module depth_top (
    inout  wire [14:0] DDR_addr,
    inout  wire [2:0]  DDR_ba,
    inout  wire        DDR_cas_n,
    inout  wire        DDR_ck_n,
    inout  wire        DDR_ck_p,
    inout  wire        DDR_cke,
    inout  wire        DDR_cs_n,
    inout  wire [3:0]  DDR_dm,
    inout  wire [31:0] DDR_dq,
    inout  wire [3:0]  DDR_dqs_n,
    inout  wire [3:0]  DDR_dqs_p,
    inout  wire        DDR_odt,
    inout  wire        DDR_ras_n,
    inout  wire        DDR_reset_n,
    inout  wire        DDR_we_n,
    inout  wire        FIXED_IO_ddr_vrn,
    inout  wire        FIXED_IO_ddr_vrp,
    inout  wire [53:0] FIXED_IO_mio,
    inout  wire        FIXED_IO_ps_clk,
    inout  wire        FIXED_IO_ps_porb,
    inout  wire        FIXED_IO_ps_srstb,

    input  wire [7:0]  cam_d,
    input  wire        cam_pclk,
    input  wire        cam_vsync,
    input  wire        cam_href,
    inout  wire        cam_siod,
    inout  wire        cam_sioc,
    output wire        cam_pwdn,

    input  wire [7:0]  cam2_d,
    input  wire        cam2_pclk,
    input  wire        cam2_vsync,
    input  wire        cam2_href,
    inout  wire        cam2_siod,
    inout  wire        cam2_sioc,
    output wire        cam2_pwdn,

    input  wire        fx2_ifclk,
    input  wire        fx2_flagb_n,
    output wire [7:0]  fx2_fd,
    output wire        fx2_slwr_n,
    output wire        fx2_pktend_n,

    // Ethernet PHY (IP101GA), 4-bit MII and MDIO, to the PS MAC
    input  wire        eth_rx_clk,
    input  wire [3:0]  eth_rxd,
    input  wire        eth_rx_dv,
    input  wire        eth_tx_clk,
    output wire        eth_tx_en,
    output wire [3:0]  eth_txd,
    output wire        eth_mdio_mdc,
    inout  wire        eth_mdio_mdio_io,

    output wire [1:0]  led
);
    `include "rect_cfg.vh"
    `include "match_cfg.vh"
    localparam W = IMG_W, H = IMG_H, LAW = 16;

    // ---------------------------------------------------------------- PS
    wire        fclk0, fclk1;
    wire [23:0] gpio_o;
    wire [63:0] gpio_i;
    wire        scl_i, scl_o, scl_t, sda_i, sda_o, sda_t;
    wire        scl2_i, scl2_o, scl2_t, sda2_i, sda2_o, sda2_t;

    system_wrapper u_ps (
        .DDR_addr(DDR_addr), .DDR_ba(DDR_ba), .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n), .DDR_ck_p(DDR_ck_p), .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n), .DDR_dm(DDR_dm), .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n), .DDR_dqs_p(DDR_dqs_p), .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n), .DDR_reset_n(DDR_reset_n), .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn), .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio), .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb), .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .fclk0(fclk0), .fclk1(fclk1),
        .gpio_o(gpio_o), .gpio_i(gpio_i),
        .eth_rx_clk(eth_rx_clk), .eth_rxd(eth_rxd), .eth_rx_dv(eth_rx_dv),
        .eth_tx_clk(eth_tx_clk), .eth_tx_en(eth_tx_en), .eth_txd(eth_txd),
        .eth_mdio_mdc(eth_mdio_mdc), .eth_mdio_mdio_io(eth_mdio_mdio_io),
        .i2c_scl_i(scl_i), .i2c_scl_o(scl_o), .i2c_scl_t(scl_t),
        .i2c_sda_i(sda_i), .i2c_sda_o(sda_o), .i2c_sda_t(sda_t),
        .i2c1_scl_i(scl2_i), .i2c1_scl_o(scl2_o), .i2c1_scl_t(scl2_t),
        .i2c1_sda_i(sda2_i), .i2c1_sda_o(sda2_o), .i2c1_sda_t(sda2_t)
    );

    // SCCB is open drain; the pull-ups are the internal ones (see XDC).
    IOBUF u_sioc  (.IO(cam_sioc),  .I(scl_o),  .T(scl_t),  .O(scl_i));
    IOBUF u_siod  (.IO(cam_siod),  .I(sda_o),  .T(sda_t),  .O(sda_i));
    IOBUF u_sioc2 (.IO(cam2_sioc), .I(scl2_o), .T(scl2_t), .O(scl2_i));
    IOBUF u_siod2 (.IO(cam2_siod), .I(sda2_o), .T(sda2_t), .O(sda2_i));

    assign cam_pwdn  = gpio_o[0];
    assign cam2_pwdn = gpio_o[2];
    wire   cap_enable = gpio_o[1];

    wire clk   = fclk0;                         // capture, 200 MHz
    wire pclk  = fclk1;                         // processing: 62.5 MHz, 25 MHz in the mini build
    wire ifclk = fx2_ifclk;

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

    // ToF distance handed over by the PS (see cam_usb_top.v)
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

    // capture enable and mode into the capture clock, reset into the processing clock
    (* ASYNC_REG = "TRUE" *) reg [2:0] en_sync = 3'b000, mode_sync = 3'b000, uvc_sync = 3'b000, prst_sync = 3'b111;
    always @(posedge clk) begin
        en_sync   <= {en_sync[1:0], cap_enable};
        mode_sync <= {mode_sync[1:0], gpio_o[20]};
        uvc_sync  <= {uvc_sync[1:0], gpio_o[21]};
    end
    wire mode_uvc = uvc_sync[2];                // webcam: only video payloads go to the FX2LP (mini build)
    (* ASYNC_REG = "TRUE" *) reg [2:0] uvc_p = 3'b000;
    always @(posedge pclk) uvc_p <= {uvc_p[1:0], gpio_o[21]};
    wire cap_rst    = ~en_sync[2];
    wire mode_depth = mode_sync[2];
    always @(posedge pclk)
        prst_sync <= {prst_sync[1:0], ~cap_enable};
    wire prst = prst_sync[2];

    // ----------------------------------------------------------- capture
    localparam AW = 13;                         // 8 KiB per stream in front of the mux

    wire        c0_wr, c0_afull, c0_rd, c1_wr, c1_afull, c1_rd;
    wire [7:0]  c0_din, c0_dout, c1_din, c1_dout;
    wire [AW:0] c0_count, c1_count;
    wire        frame_led, frame_led2;
    wire        s0_stb, s0_href, s0_vsync, s1_stb, s1_href, s1_vsync;
    wire [7:0]  s0_d, s1_d;
    wire [31:0] start_us0, start_us1;

    cam_capture u_cap (
        .clk(clk), .rst(cap_rst),
        .cam_pclk(cam_pclk), .cam_d(cam_d), .cam_href(cam_href), .cam_vsync(cam_vsync),
        .tick(tick), .t_us(t_us),
        .tof_mm(tof_mm), .tof_seq(tof_seq), .tof_us(tof_us),
        .fifo_full(c0_afull),
        .fifo_wr_en(c0_wr), .fifo_din(c0_din),
        .frame_led(frame_led), .frame_start_us(start_us0),
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
        .frame_led(frame_led2), .frame_start_us(start_us1),
        .pclk_f(), .stb(s1_stb), .d_q(s1_d), .href_q(s1_href),
        .vsync_q(s1_vsync), .trunc(), .state(), .lines(), .line_bytes()
    );

    // ------------------------------------------------------- depth chain
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
    wire [LAW-1:0] base0, base1, ra0, ra1;
    wire [9:0]  gray0, gray1;
    wire        tog0, tog1;
    wire [7:0]  q0, q1;
    rect_linebuf #(.W(W), .LINES(BUF0), .AW(LAW)) u_buf0 (
        .wclk(clk), .wr_sof(l0_sof), .wr_en(l0_en), .wr_data(l0_d), .frame_base(base0), .rows_done(),
        .rows_gray(gray0), .sof_toggle(tog0), .rclk(pclk), .rd_addr(ra0), .rd_data(q0));
    rect_linebuf #(.W(W), .LINES(BUF1), .AW(LAW)) u_buf1 (
        .wclk(clk), .wr_sof(l1_sof), .wr_en(l1_en), .wr_data(l1_d), .frame_base(base1), .rows_done(),
        .rows_gray(gray1), .sof_toggle(tog1), .rclk(pclk), .rd_addr(ra1), .rd_data(q1));

    wire        d_wr, d_overrun, d_last, x_prog_full;
    wire [23:0] d_dbg;
    wire [7:0]  d_byte;
    generate
        if (MINI) begin : g_mini
            // proof of concept of the chained matcher mini (rtl/mini): see depth_mini.v
            depth_mini #(.W(W), .H(H), .AW(LAW), .LINES0(BUF0), .LINES1(BUF1), .NODES_X(NODES_X),
                         .PREFILTER(PREFILTER), .CENSUS_RY(CENSUS_RY), .CENSUS_RX(CENSUS_RX), .CENSUS_STEP(CENSUS_STEP),
                         .NBITS(CENSUS_BITS), .DMIN(DMIN), .SGM_P1(SGM_P1), .SGM_P2(SGM_P2), .UNIQ(UNIQ),
                         .SLICES(SLICES)) u_depth (
                .clk(pclk), .rst(prst),
                .rows_gray0(gray0), .rows_gray1(gray1), .sof_toggle0(tog0), .sof_toggle1(tog1),
                .frame_base0(base0), .frame_base1(base1), .rd_addr0(ra0), .rd_addr1(ra1), .rd_data0(q0), .rd_data1(q1),
                .start_us(start_us1),
                .uvc(uvc_p[2]), .out_room(!x_prog_full),
                .out_wr(d_wr), .out_byte(d_byte), .out_last(d_last),
                .px_valid(), .px_y(), .px_x(), .px_disp(), .overrun(d_overrun), .chain_n(), .dbg(d_dbg));
        end else begin : g_full
            depth_core #(.W(W), .H(H), .AW(LAW), .LINES0(LINES0), .LINES1(LINES1), .NODES_X(NODES_X),
                         .PREFILTER(PREFILTER), .CENSUS_RY(CENSUS_RY), .CENSUS_RX(CENSUS_RX), .CENSUS_STEP(CENSUS_STEP),
                         .NBITS(CENSUS_BITS), .DMIN(DMIN), .HBOX(HBOX), .SGM_P1(SGM_P1), .SGM_P2(SGM_P2),
                         .LMAX(LMAX), .TBCAP(TBCAP), .UNIQ(UNIQ), .UNITS(UNITS), .NDISP(NDISP)) u_depth (
                .clk(pclk), .rst(prst),
                .rows_gray0(gray0), .rows_gray1(gray1), .sof_toggle0(tog0), .sof_toggle1(tog1),
                .frame_base0(base0), .frame_base1(base1), .rd_addr0(ra0), .rd_addr1(ra1), .rd_data0(q0), .rd_data1(q1),
                .start_us(start_us1),
                .out_wr(d_wr), .out_byte(d_byte),
                .px_valid(), .px_y(), .px_x(), .px_disp(), .overrun(d_overrun));
            assign d_last = 1'b0;
            assign d_dbg  = 24'd0;
        end
    endgenerate

    // disparity bytes from the processing clock to the capture clock
    wire        x_empty, x_rd, x_wr_busy, x_rd_busy;
    wire [8:0]  x_dout;                         // bit 8: last byte of a webcam payload
    xpm_fifo_async #(
        .FIFO_MEMORY_TYPE("block"), .FIFO_WRITE_DEPTH(4096), .WRITE_DATA_WIDTH(9), .READ_DATA_WIDTH(9),
        .READ_MODE("fwft"), .FIFO_READ_LATENCY(0), .CDC_SYNC_STAGES(2), .RELATED_CLOCKS(0),
        .USE_ADV_FEATURES("0002"), .PROG_FULL_THRESH(4096 - 1024)
    ) u_xfifo (
        .rst(prst),
        .wr_clk(pclk), .wr_en(d_wr && !x_wr_busy), .din({d_last, d_byte}), .wr_rst_busy(x_wr_busy), .prog_full(x_prog_full),
        .rd_clk(clk), .rd_en(x_rd), .dout(x_dout), .empty(x_empty), .rd_rst_busy(x_rd_busy),
        .sleep(1'b0), .injectsbiterr(1'b0), .injectdbiterr(1'b0)
    );
    // With the disparity stream switched off, its bytes are read and thrown away.
    wire        c2_afull, c2_rd;
    wire [7:0]  c2_dout;
    wire [AW:0] c2_count;
    wire        prog_full, wr_rst_busy;
    assign x_rd = !x_empty && !x_rd_busy && (mode_uvc ? !(prog_full | wr_rst_busy) : (!mode_depth || !c2_afull));
    reg         s2_wr = 1'b0;
    reg  [7:0]  s2_din = 8'h00;
    always @(posedge clk) begin
        s2_wr  <= mode_depth && !mode_uvc && x_rd;
        s2_din <= x_dout[7:0];
    end

    // ------------------------------------------------ the three streams
    byte_fifo #(.AW(AW)) u_cfifo0 (
        .clk(clk), .rst(cap_rst), .wr(c0_wr), .din(c0_din), .almost_full(c0_afull),
        .rd(c0_rd), .dout(c0_dout), .count(c0_count)
    );
    byte_fifo #(.AW(AW)) u_cfifo1 (
        .clk(clk), .rst(cap_rst), .wr(c1_wr), .din(c1_din), .almost_full(c1_afull),
        .rd(c1_rd), .dout(c1_dout), .count(c1_count)
    );
    byte_fifo #(.AW(AW)) u_cfifo2 (
        .clk(clk), .rst(cap_rst), .wr(s2_wr), .din(s2_din), .almost_full(c2_afull),
        .rd(c2_rd), .dout(c2_dout), .count(c2_count)
    );

    wire        m_wr;
    wire [7:0]  m_din;
    stream_mux #(.AW(AW)) u_mux (
        .clk(clk), .rst(cap_rst),
        .c0_dout(c0_dout), .c1_dout(c1_dout), .c2_dout(c2_dout),
        .c0_count(c0_count), .c1_count(c1_count), .c2_count(c2_count),
        .c0_rd(c0_rd), .c1_rd(c1_rd), .c2_rd(c2_rd),
        .out_full(prog_full | wr_rst_busy | mode_uvc),
        .out_wr(m_wr), .out_din(m_din)
    );
    // webcam mode: the payload bytes go straight on, with their end mark
    wire        wr_en = mode_uvc ? x_rd : m_wr;
    wire [8:0]  din   = mode_uvc ? x_dout : {1'b0, m_din};

    wire        rd_en, empty, rd_rst_busy;
    wire [8:0]  dout;
    xpm_fifo_async #(
        .FIFO_MEMORY_TYPE("block"), .FIFO_WRITE_DEPTH(16384), .WRITE_DATA_WIDTH(9), .READ_DATA_WIDTH(9),
        .READ_MODE("fwft"), .FIFO_READ_LATENCY(0), .CDC_SYNC_STAGES(2), .RELATED_CLOCKS(0),
        .USE_ADV_FEATURES("0002"), .PROG_FULL_THRESH(16384 - 16)
    ) u_fifo (
        .rst(cap_rst),
        .wr_clk(clk), .wr_en(wr_en), .din(din),
        .prog_full(prog_full), .wr_rst_busy(wr_rst_busy),
        .rd_clk(ifclk), .rd_en(rd_en), .dout(dout),
        .empty(empty), .rd_rst_busy(rd_rst_busy),
        .sleep(1'b0), .injectsbiterr(1'b0), .injectdbiterr(1'b0)
    );

    fx2_writer u_fx2 (
        .clk(ifclk),
        .fx2_flagb_n(fx2_flagb_n),
        .fx2_fd(fx2_fd), .fx2_slwr_n(fx2_slwr_n), .fx2_pktend_n(fx2_pktend_n),
        .fifo_dout(dout[7:0]), .fifo_last(dout[8]), .fifo_empty(empty | rd_rst_busy), .fifo_rd_en(rd_en),
        .room(), .hold(), .partial(), .pkt_cnt(), .fd_dbg(), .slwr_dbg(), .pktend_dbg()
    );

    // For a program on the PS that keeps the two cameras in step (genlock) without the PC:
    // EMIO GPIO 63..56 count the frames of camera 1, GPIO 55..32 hold the start of its last frame
    // minus the start of camera 0's last frame, in microseconds (modulo 2^24). Read twice: the
    // value changes at a frame start. GPIO 23..0 read back what the PS drives.
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
    // led[0] toggles with the frames of camera 0; led[1] with camera 1, and
    // stays on once the depth chain has failed to keep up with a frame.
    reg overrun_seen = 1'b0;
    always @(posedge pclk)
        if (prst) overrun_seen <= 1'b0;
        else if (d_overrun) overrun_seen <= 1'b1;
    assign led[0] = frame_led;
    assign led[1] = frame_led2 | overrun_seen;

    // GPIO 31..24: where the stream stands, for a program on the PS to see whether data moves:
    //   31 a frame overran   30 webcam row FIFO nearly full   29 USB FIFO nearly full
    //   28 webcam row FIFO empty   27 USB FIFO empty (FX2LP side)
    //   26 flips with every webcam row   25 flips with every 4096 bytes handed to the FX2LP
    //   24 flips with every packet end sent to the FX2LP
    reg        st_row = 1'b0, st_end = 1'b0;
    reg [12:0] st_bytes = 13'd0;
    always @(posedge pclk) if (d_wr && d_last) st_row <= ~st_row;
    always @(posedge ifclk) begin
        if (rd_en) st_bytes <= st_bytes + 13'd1;
        if (!fx2_pktend_n) st_end <= ~st_end;
    end
    // GPIO 23..22 (driven by the PS) choose what GPIO 31..24 show: 0 the flags above,
    // 1 scheduler state / flushing / hub state, 2 the scheduler's row, 3 half the FIFO level before the hub.
    wire [7:0] st_flags = {overrun_seen, x_prog_full, prog_full, x_empty, empty, st_row, st_bytes[12], st_end};
    wire [7:0] st_page  = (gpio_o[23:22] == 2'd1) ? d_dbg[7:0] : (gpio_o[23:22] == 2'd2) ? d_dbg[15:8] :
                          (gpio_o[23:22] == 2'd3) ? d_dbg[23:16] : st_flags;
    assign gpio_i = {gl_seq, gl_phase, st_page, gpio_o};
endmodule
