// Tiny Tapeout top of one matcher slice (see mini_slice.v): the standard
// project pins, nothing else. All eight bidirectional pins are inputs.
`default_nettype none
module tt_um_stereo_slice (
    input  wire [7:0] ui_in,
    output wire [7:0] uo_out,
    input  wire [7:0] uio_in,
    output wire [7:0] uio_out,
    output wire [7:0] uio_oe,
    input  wire       ena,
    input  wire       clk,
    input  wire       rst_n
);
    // reset: asserted at once, released in step with the clock
    reg [1:0] rs;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) rs <= 2'b00;
        else        rs <= {rs[0], 1'b1};
    end

    assign uio_out = 8'h00;
    assign uio_oe  = 8'h00;
    mini_slice u_slice (.clk(clk), .rst(!rs[1]), .ui(ui_in), .uio(uio_in), .uo(uo_out));

    wire unused = ena;
endmodule
`default_nettype wire
