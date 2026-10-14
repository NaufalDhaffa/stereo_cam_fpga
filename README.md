# Stereo depth camera on an EBAZ4205

Two OV2640 modules and a CY7C68013A (FX2LP) USB module on an EBAZ4205 (Zynq XC7Z010). The depth is
computed in the FPGA; the matcher is a chain of identical "slices" (16 disparities each) that is
also prepared as a Tiny Tapeout chip.

Current system: sensors 400 x 296, depth 200 x 148 with 1 or 2 slices (16 or 32 disparities), 15 fps, 25 MHz.
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
| `rtl/blocks/` | The system cut into the blocks of the Vivado block design (camera input, rectify + census, chain hub, formatter, USB, status) |
| `hw/` | Vivado: `scripts/create_project.tcl` makes the projects `projects/stereo_1slice` and `stereo_2slice` (block design `system`, the slices under `tapeout_chain`); `export/` has their bitstream, XSA and reports; `board_files/` the EBAZ4205 board definition; `constraints/` pins and timing |
| `cfg/` | Per build: calibration tables, matcher settings and the number of slices |
| `sw/` | Vitis: the bare-metal application `apps/stereo_cam` and `scripts/create_workspace.py` (platform from the XSA + application) |
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
takes 169.254.179.10 and starts the cameras. The serial console is 115200 8N1, login `root`.
The FX2LP starts as a webcam when plugged in: its EEPROM holds the firmware, and J2 is left open
with the address pin pulled up to 3.3 V (with the J2 jumper fitted it is the original logic analyzer again).

## Everyday use

`stereo.cmd` in this folder runs the PC tools from any directory (`stereo <tool> ...` = `host/<tool>.py`):

    stereo webcam --slices 2        live view: left picture and depth
    stereo bootbin status           which BOOT.BIN is on the card, what runs in the FPGA
    stereo bootbin 1                install the BOOT.BIN of 1 slice (or 2) over the network and reboot
    stereo board try hw/export/stereo_1slice     load a bitstream until the next boot

The BOOT.BIN files are made by `board/petalinux/bootbin.sh` (in WSL) into `build/bootbin/`.

## Open points

- The bare-metal application (`sw/apps/stereo_cam`) builds but has not run on the board; the board boots Linux.
- The chip-to-hub link needs an adjustable capture phase in the hub, or a clock of 5 to 10 MHz.
- The cocotb test covers the chain numbering only; the matching is checked by `rtl/tb/tb_mini.v` and `tb_depth_mini.v`.
- How many slices a bitstream has is not readable from the PL: `bootbin status` goes by the files' checksums.
