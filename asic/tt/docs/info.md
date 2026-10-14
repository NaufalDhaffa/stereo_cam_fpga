## How it works

One slice of a chained stereo matcher: 16 consecutive disparities of a semi-global matcher
(one path direction, left to right), one disparity per clock, no line memory. A hub (an FPGA or a
microcontroller) sends the census signatures of both images to all slices at once on `ui`
(7 bits per clock, `ui[7]` marks the first clock of a frame). Each slice computes its 16
Hamming costs, adds the path cost, and merges its result into a record that travels from chip to
chip: in on `uio`, out on `uo`. N identical chips behave as one matcher with 16 N disparities.

Inputs are sampled on the rising clock edge and `uo` changes on the falling edge, so every wire
has half a clock period. Before the first pixel frame a slice shows `uio + 1` on `uo` and takes
`uio` as its position: the chain numbers itself.

The full protocol is in `docs/matcher_mini_chain.md` of the project; the bit-exact model is
`host/stereo/chain.py`.

## How to test

Tie `uio` to 0 (bottom slice) and release reset: `uo` reads 1 (the slice's position plus one).
Then send a settings frame and pixel frames as described in the protocol and compare `uo` with
the model's record. The test bench `tb_mini.v` does this for one to four slices.

## External hardware

A hub that owns the clock (25 MHz) and the two cameras' census signatures: in this project an
EBAZ4205 (Zynq-7010) with the module `mini_hub.v`.
