# Stereo depth camera on an EBAZ4205

Two OV2640 modules and a CY7C68013A (FX2LP) USB module on an EBAZ4205 (Zynq XC7Z010). The depth is
computed in the FPGA; the matcher is a chain of identical "slices" (16 disparities each) that is
also prepared as a Tiny Tapeout chip.

Current system: sensors 400 x 296, depth 200 x 148 with 2 slices (32 disparities), 15 fps, 25 MHz.
The board boots from the SD card and shows up on the PC as a webcam (left image and disparity
side by side, 400 x 148).

## Folders

| Folder | Content |
|---|---|
| `rtl/` | The FPGA design. `rtl/mini/` is the matcher slice (the chip) and its hub; `rtl/tb/` the test benches |
| `constraints/`, `scripts/` | Pins and the Vivado build (`build_depth.tcl`, `DEPTH_VARIANT=mini`), JTAG bring-up (`cam.tcl`), simulation (`sim.ps1`) |
| `host/` | PC tools: `webcam.py` (view the webcam, extract the disparity), `mini_view.py`, `mini_rviz.py`, calibration (`stereo/`), FX2LP loaders, `uart.py` / `uart_put.py` (serial console) |
| `host/stereo/chain.py` | Bit-exact model of the slice chain: the reference the RTL is compared with |
| `board/` | What runs on the board: `stereo_cam.py` (sensors, genlock), `autorun.sh`, `fpga.sh` (change the bitstream over SSH); `petalinux/` builds the SD card image |
| `fx2/` | Webcam (UVC) firmware of the FX2LP, and backups of the module's original EEPROM |
| `calib/` | Stereo calibration in use and the printed targets |
| `asic/` | The slice as a Tiny Tapeout project (`tt/`), the scripts that harden and check it, and the 4x2 result (`out_tt_4x2/`) |
| `build/mini/` | Bitstream of the current system; `build/sdcard/` the SD card content; `build/golden_minisys/` the tables the bitstream build reads |
| `docs/` | The chain protocol (`matcher_mini_chain.md`) |

## Chip (Tiny Tapeout, SkyWater 130 nm, 4x2 tiles)

`asic/tt/` follows the official template (`src/`, `info.yaml`, `docs/info.md`, `test/`, workflows).
In WSL, with OpenLane 2.3.10 and the sky130A PDK:

    bash /mnt/d/stereo-depth-cam/asic/wsl_ttall.sh

hardens the design (682.64 x 225.76 um), runs the cocotb test on RTL and on the gate-level netlist,
and runs Tiny Tapeout's precheck. `python asic/annotate_tt.py` draws the layout pictures.
State of `out_tt_4x2/`: DRC 0, LVS 0, setup +2.8 ns at 25 MHz in the slow corner, precheck 15/15.
These are local runs; what counts for a shuttle is the GitHub Action of the template.

## Board

Copy `build/sdcard/*` to the first (FAT) partition of the SD card. The board boots in about 30 s,
takes 192.168.2.10 and starts the cameras. The serial console is 115200 8N1, login `root`.
The FX2LP needs its RESET button pressed after plugging in to start as a webcam.

## Open points

- SSH and changing the bitstream over the network are not tested yet.
- The chip-to-hub link needs an adjustable capture phase in the hub, or a clock of 5 to 10 MHz.
- The cocotb test covers the chain numbering only; the matching is checked by `rtl/tb/tb_mini.v`.
