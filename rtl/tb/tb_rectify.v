// Rectifier against the Python model, on one recorded frame.
//
// The camera side writes the raw luma into the line buffer row by row at a
// camera-like pace; rows are started by the same rule the real scheduler
// uses (need[y] input rows complete). Every output pixel is compared with
// build/golden/cam<N>_rect.hex.
//
//   xelab ... -generic_top CAM=1 selects the right camera.
`timescale 1ns / 1ps
module tb_rectify;
    parameter CAM = 0;
    `include "rect_cfg.vh"                  // LINES0, LINES1, NODES_X, NODES_Y
    localparam W = IMG_W, H = IMG_H;
    localparam LINES = CAM ? LINES1 : LINES0;
    localparam AW = 16;

    reg wclk = 1'b0, clk = 1'b0;
    always #2.5 wclk = ~wclk;               // 200 MHz capture clock
    always #5   clk  = ~clk;                // 100 MHz processing clock

    reg [7:0]  luma   [0:W*H-1];
    reg [31:0] nodetab[0:NODES_X*NODES_Y-1];
    reg [11:0] expect [0:W*H-1];
    reg [11:0] need   [0:H-1];

    reg         wr_sof = 1'b0, wr_en = 1'b0;
    reg [7:0]   wr_data = 8'h00;
    wire [AW-1:0] frame_base, rd_addr;
    wire [9:0]  rows_done;
    wire [7:0]  rd_data;
    reg         rst = 1'b1, node_we = 1'b0;
    reg [10:0]  node_waddr = 0;
    reg [31:0]  node_wdata = 0;
    reg         row_start = 1'b0;
    reg [9:0]   row_y = 0;
    wire        busy, row_done, px_valid, px_ok;
    wire [9:0]  px_x;
    wire [7:0]  px_luma;

    rect_linebuf #(.W(W), .LINES(LINES), .AW(AW)) u_buf (
        .wclk(wclk), .wr_sof(wr_sof), .wr_en(wr_en), .wr_data(wr_data),
        .frame_base(frame_base), .rows_done(rows_done),
        .rclk(clk), .rd_addr(rd_addr), .rd_data(rd_data));

    rectify #(.W(W), .H(H), .LINES(LINES), .AW(AW), .NODES_X(NODES_X)) dut (
        .clk(clk), .rst(rst),
        .node_we(node_we), .node_waddr(node_waddr), .node_wdata(node_wdata),
        .frame_base(frame_base), .row_start(row_start), .row_y(row_y),
        .busy(busy), .row_done(row_done),
        .rd_addr(rd_addr), .rd_data(rd_data),
        .px_valid(px_valid), .px_x(px_x), .px_luma(px_luma), .px_ok(px_ok));

    // rows_done into the processing clock (two flops are enough in simulation)
    reg [9:0] rows_s1 = 0, rows_s2 = 0;
    always @(posedge clk) begin
        rows_s1 <= rows_done;
        rows_s2 <= rows_s1;
    end

    integer i, wy_, wx_, wframe, frame;
    integer errors = 0, checked = 0, out_row = 0;
    integer frames = 2;                     // the second frame starts elsewhere in the ring

    // ---- camera side -----------------------------------------------------
    initial begin
        if (CAM == 0) begin
            $readmemh("cam0_luma.hex", luma);   $readmemh("cam0_nodes.hex", nodetab);
            $readmemh("cam0_rect.hex", expect); $readmemh("cam0_need.hex", need);
        end else begin
            $readmemh("cam1_luma.hex", luma);   $readmemh("cam1_nodes.hex", nodetab);
            $readmemh("cam1_rect.hex", expect); $readmemh("cam1_need.hex", need);
        end
        repeat (4) @(posedge clk);
        for (i = 0; i < NODES_X * NODES_Y; i = i + 1) begin
            @(posedge clk);
            node_we <= 1'b1; node_waddr <= i; node_wdata <= nodetab[i];
        end
        @(posedge clk) node_we <= 1'b0;
        @(posedge clk) rst <= 1'b0;

        for (wframe = 0; wframe < frames; wframe = wframe + 1) begin
            @(posedge wclk) wr_sof <= 1'b1;
            @(posedge wclk) wr_sof <= 1'b0;
            for (wy_ = 0; wy_ < H; wy_ = wy_ + 1) begin
                for (wx_ = 0; wx_ < W; wx_ = wx_ + 1) begin
                    @(posedge wclk);
                    wr_en <= 1'b1; wr_data <= luma[wy_ * W + wx_];
                    @(posedge wclk) wr_en <= 1'b0;
                    repeat (18) @(posedge wclk);            // one pixel per 100 ns
                end
                repeat (14000) @(posedge wclk);             // line blanking: 150 us per line in all
            end
            repeat (1200000) @(posedge wclk);               // vertical blanking, 6 ms
        end
    end

    // ---- scheduler -------------------------------------------------------
    initial begin
        @(negedge rst);
        for (frame = 0; frame < frames; frame = frame + 1) begin
            @(posedge wr_sof);
            repeat (8) @(posedge clk);                      // let the row count settle at 0
            for (out_row = 0; out_row < H; out_row = out_row + 1) begin
                while (rows_s2 < need[out_row]) @(posedge clk);
                row_y <= out_row; row_start <= 1'b1;
                @(posedge clk) row_start <= 1'b0;
                @(posedge row_done);
                @(posedge clk);
            end
            $display("frame %0d: %0d pixels checked, %0d mismatches so far", frame, checked, errors);
        end
        if (errors == 0 && checked == frames * W * H) $display("PASS cam%0d: %0d pixels identical", CAM, checked);
        else $display("FAIL cam%0d: %0d mismatches in %0d pixels", CAM, errors, checked);
        $finish;
    end

    // ---- checker ---------------------------------------------------------
    always @(posedge clk) if (px_valid) begin
        checked = checked + 1;
        if ({px_ok, px_luma} !== expect[out_row * W + px_x][8:0]) begin
            errors = errors + 1;
            if (errors <= 4)
                $display("mismatch row %0d x %0d: got %0d/%0d, expected %0d/%0d  (pa %0d pb %0d pc %0d pd %0d, y0 %0d x0 %0d, ra0 %0d ra1 %0d, rows written %0d, need %0d, frame_base %0d, a_y %0d, write addr %0d)",
                         out_row, px_x, px_ok, px_luma, expect[out_row * W + px_x][8], expect[out_row * W + px_x][7:0],
                         dut.pa, dut.pb, dut.pc, dut.pd, dut.y0, dut.x0, dut.ra0, dut.ra1,
                         rows_done, need[out_row], frame_base, dut.a_y, u_buf.waddr);
        end
    end
endmodule
