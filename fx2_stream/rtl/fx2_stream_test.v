// FX2LP Slave FIFO test source for EBAZ4205 (header DATA2).
//
// Streams a 32-bit little-endian incrementing counter into EP6 IN of a
// CY7C68013A running in synchronous Slave FIFO mode, 8-bit bus, IFCLK
// driven by the FX2LP (48 MHz). The whole design runs on IFCLK, so it
// needs nothing from the PS.
//
// The FX2LP full flag only updates after the clock edge that takes the
// last byte, so it cannot stop a write on the very next edge. Instead of
// reacting to it mid-burst, data is written in bursts of exactly one USB
// packet (512 bytes, matching EP6AUTOINLEN) and the flag is checked in the
// gap between bursts, when it has settled.
module fx2_stream_test (
    input  wire       fx2_ifclk,
    input  wire       fx2_flagb_n,   // EP6 full flag, low = full
    output reg  [7:0] fx2_fd       = 8'h00,
    output reg        fx2_slwr_n   = 1'b1,
    output wire       fx2_pktend_n,
    output wire [1:0] led
);
    localparam [9:0] PKT_BYTES  = 10'd512;
    localparam [2:0] GAP_CYCLES = 3'd4;

    wire clk = fx2_ifclk;

    // Hold off after configuration (~44 ms at 48 MHz) so the FX2LP FIFO
    // setup is not hit by writes the moment IFCLK appears.
    reg [21:0] startup = 22'd0;
    wire       started = startup[21];
    always @(posedge clk)
        if (!started) startup <= startup + 22'd1;

    reg [1:0] flag_q = 2'b00;
    always @(posedge clk)
        flag_q <= {flag_q[0], fx2_flagb_n};
    wire fifo_ready = flag_q[1];

    reg        writing = 1'b0;
    reg [9:0]  nbyte   = 10'd0;
    reg [2:0]  gap     = 3'd0;
    reg [31:0] word    = 32'd0;

    always @(posedge clk) begin
        if (!started) begin
            writing    <= 1'b0;
            fx2_slwr_n <= 1'b1;
            gap        <= 3'd0;
        end else if (writing) begin
            fx2_slwr_n <= 1'b0;
            fx2_fd     <= word[8*nbyte[1:0] +: 8];
            if (nbyte[1:0] == 2'd3)
                word <= word + 32'd1;
            nbyte <= nbyte + 10'd1;
            if (nbyte == PKT_BYTES - 10'd1) begin
                writing <= 1'b0;
                gap     <= 3'd0;
            end
        end else begin
            fx2_slwr_n <= 1'b1;
            if (gap != GAP_CYCLES)
                gap <= gap + 3'd1;
            else if (fifo_ready) begin
                writing <= 1'b1;
                nbyte   <= 10'd0;
            end
        end
    end

    // Continuous stream: packets are committed by AUTOIN, never by PKTEND.
    assign fx2_pktend_n = 1'b1;

    // led[0] blinks while IFCLK is running, led[1] follows the full flag.
    reg [24:0] beat = 25'd0;
    always @(posedge clk)
        beat <= beat + 25'd1;

    assign led[0] = beat[24];
    assign led[1] = fifo_ready;
endmodule
