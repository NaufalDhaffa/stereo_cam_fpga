// Everything between the depth chain and the FX2LP's Slave FIFO:
//
//   disparity bytes (processing clock) -> FIFO -> capture clock
//   PC tools' mode:  the two raw camera streams and the disparity stream, in 512-byte
//                    chunks (stream_mux)
//   webcam mode:     the video payloads go straight on, with their end mark
//   -> FIFO -> IFCLK (48 MHz from the FX2LP) -> fx2_writer
module usb_stream #(
    parameter FIFO_AW = 13
) (
    input  wire        clk,                     // FCLK0, 200 MHz
    input  wire        pclk,                    // FCLK1: processing
    input  wire        cap_rst,
    input  wire        prst,
    input  wire [63:0] gpio_o,                  // EMIO GPIO from the PS: [20] send the disparity stream, [21] webcam mode
    // disparity / webcam bytes from the formatter (processing clock)
    input  wire        d_wr,
    input  wire [7:0]  d_byte,
    input  wire        d_last,
    output wire        d_room,                  // the FIFO takes a whole webcam row
    output wire        uvc,                     // webcam mode, in the processing clock
    // raw camera streams (capture clock)
    output wire        raw0_rd,
    input  wire [7:0]  raw0_dout,
    input  wire [FIFO_AW:0] raw0_count,
    output wire        raw1_rd,
    input  wire [7:0]  raw1_dout,
    input  wire [FIFO_AW:0] raw1_count,
    // FX2LP Slave FIFO, header DATA2
    input  wire        fx2_ifclk,
    input  wire        fx2_flagb_n,
    output wire [7:0]  fx2_fd,
    output wire        fx2_slwr_n,
    output wire        fx2_pktend_n,
    output wire [6:0]  status                   // {row FIFO nearly full, USB FIFO nearly full, row FIFO empty,
                                                //  USB FIFO empty, flips per webcam row, per 4096 bytes, per packet end}
);
    localparam AW = FIFO_AW;
    // IFCLK onto a global clock buffer here: in a block design the top level only sees a net into
    // this block and would not give it one (and the flag's pad register needs it for its hold time).
    wire ifclk;
    BUFG u_ifclk (.I(fx2_ifclk), .O(ifclk));

    (* ASYNC_REG = "TRUE" *) reg [2:0] mode_sync = 3'b000, uvc_sync = 3'b000;
    always @(posedge clk) begin
        mode_sync <= {mode_sync[1:0], gpio_o[20]};
        uvc_sync  <= {uvc_sync[1:0], gpio_o[21]};
    end
    wire mode_depth = mode_sync[2];
    wire mode_uvc   = uvc_sync[2];              // webcam: only video payloads go to the FX2LP
    (* ASYNC_REG = "TRUE" *) reg [2:0] uvc_p = 3'b000;
    always @(posedge pclk) uvc_p <= {uvc_p[1:0], gpio_o[21]};
    assign uvc = uvc_p[2];

    // disparity bytes from the processing clock to the capture clock
    wire        x_empty, x_rd, x_wr_busy, x_rd_busy, x_prog_full;
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
    assign d_room = !x_prog_full;

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
    byte_fifo #(.AW(AW)) u_cfifo2 (
        .clk(clk), .rst(cap_rst), .wr(s2_wr), .din(s2_din), .almost_full(c2_afull),
        .rd(c2_rd), .dout(c2_dout), .count(c2_count)
    );

    wire        m_wr;
    wire [7:0]  m_din;
    stream_mux #(.AW(AW)) u_mux (
        .clk(clk), .rst(cap_rst),
        .c0_dout(raw0_dout), .c1_dout(raw1_dout), .c2_dout(c2_dout),
        .c0_count(raw0_count), .c1_count(raw1_count), .c2_count(c2_count),
        .c0_rd(raw0_rd), .c1_rd(raw1_rd), .c2_rd(c2_rd),
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

    // where the stream stands, for a program on the PS to see whether data moves
    reg        st_row = 1'b0, st_end = 1'b0;
    reg [12:0] st_bytes = 13'd0;
    always @(posedge pclk) if (d_wr && d_last) st_row <= ~st_row;
    always @(posedge ifclk) begin
        if (rd_en) st_bytes <= st_bytes + 13'd1;
        if (!fx2_pktend_n) st_end <= ~st_end;
    end
    assign status = {x_prog_full, prog_full, x_empty, empty, st_row, st_bytes[12], st_end};
endmodule
