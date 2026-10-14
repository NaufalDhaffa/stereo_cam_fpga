// What the PL shows the PS on the EMIO GPIO inputs, and the two LEDs.
//
//   GPIO 63..56  frames of camera 1, counted
//   GPIO 55..32  start of camera 1's last frame minus camera 0's, microseconds (modulo 2^24).
//                Read twice: the value changes at a frame start.
//   GPIO 31..24  where the stream stands; GPIO 23..22 (driven by the PS) choose the page:
//                  0  31 a frame overran   30 webcam row FIFO nearly full   29 USB FIFO nearly full
//                     28 webcam row FIFO empty   27 USB FIFO empty (FX2LP side)
//                     26 flips with every webcam row   25 with every 4096 bytes   24 with every packet end
//                  1  scheduler state / flushing / hub state
//                  2  the scheduler's row      3  half the FIFO level before the hub
//   GPIO 23..0   read back what the PS drives
//
// led[0] toggles with the frames of camera 0; led[1] with camera 1, and stays
// on once the depth chain has failed to keep up with a frame.
module ps_status (
    input  wire        pclk,
    input  wire        prst,
    input  wire [63:0] gpio_o,
    output wire [63:0] gpio_i,
    input  wire [31:0] genlock,
    input  wire [6:0]  usb_status,
    input  wire        depth_overrun,
    input  wire [19:0] front_dbg,
    input  wire [3:0]  hub_state,
    input  wire        frame_led0, frame_led1,
    output wire [1:0]  led
);
    reg overrun_seen = 1'b0;
    always @(posedge pclk)
        if (prst) overrun_seen <= 1'b0;
        else if (depth_overrun) overrun_seen <= 1'b1;
    assign led[0] = frame_led0;
    assign led[1] = frame_led1 | overrun_seen;

    wire [23:0] d_dbg    = {front_dbg, hub_state};
    wire [7:0]  st_flags = {overrun_seen, usb_status};
    wire [7:0]  st_page  = (gpio_o[23:22] == 2'd1) ? d_dbg[7:0] : (gpio_o[23:22] == 2'd2) ? d_dbg[15:8] :
                           (gpio_o[23:22] == 2'd3) ? d_dbg[23:16] : st_flags;
    assign gpio_i = {genlock, st_page, gpio_o[23:0]};
endmodule
