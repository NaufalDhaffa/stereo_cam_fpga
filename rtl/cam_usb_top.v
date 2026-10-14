// Two OV2640 (headers DATA1 and DATA3) -> FX2LP Slave FIFO (header DATA2)
// on EBAZ4205.
//
//   FCLK0 domain: 2x cam_capture (oversample the camera pins, PCLK included)
//                 -> 2x byte_fifo -> cam_mux (512-byte chunks tagged with the
//                 camera number) -> xpm_fifo_async (write side)
//   IFCLK domain: xpm_fifo_async (read side) -> fx2_writer -> FX2LP EP6 IN
//   PS          : I2C0 / I2C1 over EMIO drive the two SCCB buses;
//                 EMIO GPIO[0] = PWDN camera 0, GPIO[1] = capture enable,
//                 GPIO[2] = PWDN camera 1; FCLK0 is 200 MHz.
//
// ILAs:
//   u_ila_pins   FCLK0  pins of camera 0 incl. PCLK, SIOD, SIOC
//   u_ila_pins2  FCLK0  pins of camera 1
//   u_ila_cap    FCLK0  capture logic of camera 0, mux and FIFO write side
//   u_ila_fx2    IFCLK  FIFO read side and FX2LP bus
module cam_usb_top (
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

    output wire [1:0]  led
);
    // ---------------------------------------------------------------- PS
    wire       fclk0;
    wire [19:0] gpio_o;
    wire       scl_i, scl_o, scl_t, sda_i, sda_o, sda_t;
    wire       scl2_i, scl2_o, scl2_t, sda2_i, sda2_o, sda2_t;

    system_wrapper u_ps (
        .DDR_addr(DDR_addr), .DDR_ba(DDR_ba), .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n), .DDR_ck_p(DDR_ck_p), .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n), .DDR_dm(DDR_dm), .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n), .DDR_dqs_p(DDR_dqs_p), .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n), .DDR_reset_n(DDR_reset_n), .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn), .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio), .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb), .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .fclk0(fclk0),
        .gpio_o(gpio_o),
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

    // ------------------------------------------------------------ clocks
    // Everything on the camera side runs on FCLK0 (200 MHz); PCLK is sampled
    // like any other pin (see cam_capture.v).
    wire clk   = fclk0;
    wire ifclk = fx2_ifclk;

    // 0.5 ms time base and a 1 MHz strobe for slow ILA captures
    reg [16:0] half_ms = 17'd0;
    reg        tick    = 1'b0;
    reg [7:0]  us_cnt  = 8'd0;
    reg        us_tick = 1'b0;
    always @(posedge clk) begin
        tick    <= (half_ms == 17'd99999);
        half_ms <= (half_ms == 17'd99999) ? 17'd0 : half_ms + 17'd1;
        us_tick <= (us_cnt == 8'd199);
        us_cnt  <= (us_cnt == 8'd199) ? 8'd0 : us_cnt + 8'd1;
    end

    // Microsecond counter stamped into every frame header, so the receiver
    // can measure the phase between the two cameras.
    reg [31:0] t_us = 32'd0;
    always @(posedge clk)
        if (us_tick)
            t_us <= t_us + 32'd1;

    // ToF distance handed over by the PS: GPIO[18:3] = millimetres, GPIO[19]
    // flips with every new reading. The PS writes all bits at once but they
    // arrive skewed, so the value is taken one cycle after the flip is seen.
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

    // ----------------------------------------------------------- capture
    (* ASYNC_REG = "TRUE" *) reg [2:0] en_sync = 3'b000;
    always @(posedge clk)
        en_sync <= {en_sync[1:0], cap_enable};
    wire cap_rst = ~en_sync[2];

    localparam AW = 14;                       // 16 KiB per camera

    wire        c0_wr, c0_afull, c0_rd, c1_wr, c1_afull, c1_rd;
    wire [7:0]  c0_din, c0_dout, c1_din, c1_dout;
    wire [AW:0] c0_count, c1_count;
    wire        frame_led, frame_led2;
    wire        cap_pclk_f, cap_stb, cap_href, cap_vsync, cap_trunc;
    wire [7:0]  cap_d;
    wire [1:0]  cap_state;
    wire [15:0] cap_lines, cap_line_bytes;
    wire        cap2_stb, cap2_href, cap2_vsync, cap2_trunc;

    cam_capture u_cap (
        .clk(clk), .rst(cap_rst),
        .cam_pclk(cam_pclk), .cam_d(cam_d), .cam_href(cam_href), .cam_vsync(cam_vsync),
        .tick(tick), .t_us(t_us),
        .tof_mm(tof_mm), .tof_seq(tof_seq), .tof_us(tof_us),
        .fifo_full(c0_afull),
        .fifo_wr_en(c0_wr), .fifo_din(c0_din),
        .frame_led(frame_led),
        .pclk_f(cap_pclk_f), .stb(cap_stb), .d_q(cap_d), .href_q(cap_href),
        .vsync_q(cap_vsync), .trunc(cap_trunc), .state(cap_state),
        .lines(cap_lines), .line_bytes(cap_line_bytes)
    );

    cam_capture u_cap2 (
        .clk(clk), .rst(cap_rst),
        .cam_pclk(cam2_pclk), .cam_d(cam2_d), .cam_href(cam2_href), .cam_vsync(cam2_vsync),
        .tick(tick), .t_us(t_us),
        .tof_mm(tof_mm), .tof_seq(tof_seq), .tof_us(tof_us),
        .fifo_full(c1_afull),
        .fifo_wr_en(c1_wr), .fifo_din(c1_din),
        .frame_led(frame_led2),
        .pclk_f(), .stb(cap2_stb), .d_q(), .href_q(cap2_href),
        .vsync_q(cap2_vsync), .trunc(cap2_trunc), .state(),
        .lines(), .line_bytes()
    );

    byte_fifo #(.AW(AW)) u_cfifo0 (
        .clk(clk), .rst(cap_rst), .wr(c0_wr), .din(c0_din), .almost_full(c0_afull),
        .rd(c0_rd), .dout(c0_dout), .count(c0_count)
    );
    byte_fifo #(.AW(AW)) u_cfifo1 (
        .clk(clk), .rst(cap_rst), .wr(c1_wr), .din(c1_din), .almost_full(c1_afull),
        .rd(c1_rd), .dout(c1_dout), .count(c1_count)
    );

    // ---------------------------------------------------------------- mux
    wire        wr_en, prog_full, wr_rst_busy;
    wire [7:0]  din;
    wire [1:0]  mux_state;
    wire        mux_sel;

    cam_mux #(.AW(AW)) u_mux (
        .clk(clk), .rst(cap_rst),
        .c0_dout(c0_dout), .c0_count(c0_count), .c0_rd(c0_rd),
        .c1_dout(c1_dout), .c1_count(c1_count), .c1_rd(c1_rd),
        .out_full(prog_full | wr_rst_busy),
        .out_wr(wr_en), .out_din(din),
        .state(mux_state), .sel(mux_sel)
    );

    // -------------------------------------------------------------- FIFO
    wire        rd_en, empty, rd_rst_busy;
    wire [7:0]  dout;

    xpm_fifo_async #(
        .FIFO_MEMORY_TYPE("block"),
        .FIFO_WRITE_DEPTH(32768),
        .WRITE_DATA_WIDTH(8),
        .READ_DATA_WIDTH(8),
        .READ_MODE("fwft"),
        .FIFO_READ_LATENCY(0),
        .CDC_SYNC_STAGES(2),
        .RELATED_CLOCKS(0),
        .USE_ADV_FEATURES("0002"),            // prog_full
        .PROG_FULL_THRESH(32768 - 16)
    ) u_fifo (
        .rst(cap_rst),
        .wr_clk(clk), .wr_en(wr_en), .din(din),
        .prog_full(prog_full), .wr_rst_busy(wr_rst_busy),
        .rd_clk(ifclk), .rd_en(rd_en), .dout(dout),
        .empty(empty), .rd_rst_busy(rd_rst_busy),
        .sleep(1'b0), .injectsbiterr(1'b0), .injectdbiterr(1'b0)
    );

    // --------------------------------------------------------------- FX2
    wire       fx2_room, fx2_hold, fx2_partial, fx2_slwr_dbg, fx2_pktend_dbg;
    wire [8:0] fx2_pkt_cnt;
    wire [7:0] fx2_fd_dbg;
    wire       fifo_empty = empty | rd_rst_busy;

    fx2_writer u_fx2 (
        .clk(ifclk),
        .fx2_flagb_n(fx2_flagb_n),
        .fx2_fd(fx2_fd), .fx2_slwr_n(fx2_slwr_n), .fx2_pktend_n(fx2_pktend_n),
        .fifo_dout(dout), .fifo_last(1'b0), .fifo_empty(fifo_empty), .fifo_rd_en(rd_en),
        .room(fx2_room), .hold(fx2_hold), .partial(fx2_partial), .pkt_cnt(fx2_pkt_cnt),
        .fd_dbg(fx2_fd_dbg), .slwr_dbg(fx2_slwr_dbg), .pktend_dbg(fx2_pktend_dbg)
    );

    // led[0] toggles with the frames of camera 0, led[1] with camera 1.
    assign led[0] = frame_led;
    assign led[1] = frame_led2;

    // -------------------------------------------------------------- ILAs
    // Raw camera pins as seen by the 200 MHz sampling clock. The registers
    // are named after the pins so the probes show up under those names.
    (* ASYNC_REG = "TRUE" *) reg [14:0] pin_meta = 15'd0, pin2_meta = 15'd0;
    reg       pin_cam_pclk = 1'b0, pin_cam_vsync = 1'b0, pin_cam_href = 1'b0;
    reg [7:0] pin_cam_d = 8'h00;
    reg       pin_cam_siod = 1'b1, pin_cam_sioc = 1'b1, pin_cam_pwdn = 1'b0, pin_cap_enable = 1'b0;
    reg       pin_cam2_pclk = 1'b0, pin_cam2_vsync = 1'b0, pin_cam2_href = 1'b0;
    reg [7:0] pin_cam2_d = 8'h00;
    reg       pin_cam2_siod = 1'b1, pin_cam2_sioc = 1'b1, pin_cam2_pwdn = 1'b0, pin2_cap_enable = 1'b0;
    always @(posedge clk) begin
        pin_meta  <= {cap_enable, gpio_o[0], scl_i, sda_i, cam_href, cam_vsync, cam_pclk, cam_d};
        {pin_cap_enable, pin_cam_pwdn, pin_cam_sioc, pin_cam_siod,
         pin_cam_href, pin_cam_vsync, pin_cam_pclk, pin_cam_d} <= pin_meta;
        pin2_meta <= {cap_enable, gpio_o[2], scl2_i, sda2_i, cam2_href, cam2_vsync, cam2_pclk, cam2_d};
        {pin2_cap_enable, pin_cam2_pwdn, pin_cam2_sioc, pin_cam2_siod,
         pin_cam2_href, pin_cam2_vsync, pin_cam2_pclk, pin_cam2_d} <= pin2_meta;
    end

    ila_pins u_ila_pins (
        .clk(clk),
        .probe0(pin_cam_pclk),
        .probe1(pin_cam_vsync),
        .probe2(pin_cam_href),
        .probe3(pin_cam_d),
        .probe4(pin_cam_siod),
        .probe5(pin_cam_sioc),
        .probe6(pin_cam_pwdn),
        .probe7(pin_cap_enable),
        .probe8(us_tick)          // 1 MHz strobe, use as storage qualifier for SCCB
    );

    ila_pins u_ila_pins2 (
        .clk(clk),
        .probe0(pin_cam2_pclk),
        .probe1(pin_cam2_vsync),
        .probe2(pin_cam2_href),
        .probe3(pin_cam2_d),
        .probe4(pin_cam2_siod),
        .probe5(pin_cam2_sioc),
        .probe6(pin_cam2_pwdn),
        .probe7(pin2_cap_enable),
        .probe8(us_tick)
    );

    ila_cap u_ila_cap (
        .clk(clk),
        .probe0(cap_d),           // byte taken at the accepted PCLK edge
        .probe1(cap_href),
        .probe2(cap_vsync),
        .probe3(c0_wr),
        .probe4(c0_afull),
        .probe5(cap_stb),         // one pulse per accepted PCLK edge
        .probe6(cap_trunc),
        .probe7(cap_state),
        .probe8(cap_lines[10:0]),
        .probe9(cap_line_bytes[11:0]),
        .probe10(din),            // byte going into the USB FIFO
        .probe11(cap_pclk_f),     // PCLK after the glitch filter
        .probe12(cap2_stb),
        .probe13(cap2_href),
        .probe14(cap2_vsync),
        .probe15(cap2_trunc),
        .probe16(c1_afull),
        .probe17(mux_state),
        .probe18(mux_sel),
        .probe19(wr_en),
        .probe20(prog_full)
    );

    ila_fx2 u_ila_fx2 (
        .clk(ifclk),
        .probe0(fx2_fd_dbg),
        .probe1(fx2_slwr_dbg),
        .probe2(fx2_pktend_dbg),
        .probe3(fx2_room),
        .probe4(fifo_empty),
        .probe5(dout),
        .probe6(fx2_pkt_cnt),
        .probe7(fx2_hold),
        .probe8(fx2_partial)
    );
endmodule
