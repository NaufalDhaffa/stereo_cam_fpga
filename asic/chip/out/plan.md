# Rencana chip irisan matcher (die bebas, pad untuk wire bonding)

| Modul | Logika (um2) | Makro (um) | Luas makro (um2) | Isi perkiraan |
|---|---|---|---|---|
| ctrl | 6287 | 86.02 x 182.24 | 15676 | 50% |
| cost | 27180 | 174.34 x 388.96 | 67811 | 50% |
| path | 6539 | 86.02 x 190.40 | 16378 | 50% |
| pick | 8785 | 114.08 x 193.12 | 22031 | 50% |
| up | 8254 | 114.08 x 182.24 | 20790 | 50% |

Blok makro 390.4 x 390.0 um; inti 414.4 x 414.0 um; die 1151.0 x 1151.0 um (1.32 mm2). Susunan kolom: cost / path+ctrl / up+pick.

Lima susunan terbaik:

| # | Kolom | Blok (um) | Kawat (bit x um) | Pad (bit x um) | Skor |
|---|---|---|---|---|---|
| 1 | cost / path+ctrl / up+pick | 390 x 390 | 62k | 6.4k | 179k |
| 2 | cost / pick+ctrl / up+path | 390 x 390 | 62k | 6.6k | 180k |
| 3 | up+pick / path+ctrl / cost | 390 x 390 | 62k | 8.0k | 181k |
| 4 | up+path / pick+ctrl / cost | 390 x 390 | 62k | 8.2k | 181k |
| 5 | cost / ctrl+path / pick+up | 390 x 390 | 62k | 8.1k | 181k |

Pad (urutan pin QFN-32):

| Pin | Pad | Sisi | Sel | Pusat bond pad (um) |
|---|---|---|---|---|
| 1 | ui_in[0] | W | sky130_ef_io__gpiov2_pad | 119.0, 880.0 |
| 2 | ui_in[1] | W | sky130_ef_io__gpiov2_pad | 119.0, 793.0 |
| 3 | ui_in[2] | W | sky130_ef_io__gpiov2_pad | 119.0, 706.0 |
| 4 | ui_in[3] | W | sky130_ef_io__gpiov2_pad | 119.0, 619.0 |
| 5 | ui_in[4] | W | sky130_ef_io__gpiov2_pad | 119.0, 532.0 |
| 6 | ui_in[5] | W | sky130_ef_io__gpiov2_pad | 119.0, 445.0 |
| 7 | ui_in[6] | W | sky130_ef_io__gpiov2_pad | 119.0, 358.0 |
| 8 | ui_in[7] | W | sky130_ef_io__gpiov2_pad | 119.0, 271.0 |
| 9 | VSSD | S | sky130_ef_io__vssd_lvc_clamped_pad | 276.8, 119.0 |
| 10 | VCCD | S | sky130_ef_io__vccd_lvc_clamped_pad | 367.2, 119.0 |
| 11 | clk | S | sky130_ef_io__gpiov2_pad | 450.0, 119.0 |
| 12 | rst_n | S | sky130_ef_io__gpiov2_pad | 540.3, 119.0 |
| 13 | VSSIO | S | sky130_ef_io__vssio_hvc_clamped_pad | 623.2, 119.0 |
| 14 | VDDIO | S | sky130_ef_io__vddio_hvc_clamped_pad | 703.5, 119.0 |
| 15 | VCCD2 | S | sky130_ef_io__vccd_lvc_clamped_pad | 793.8, 119.0 |
| 16 | VSSD2 | S | sky130_ef_io__vssd_lvc_clamped_pad | 884.2, 119.0 |
| 17 | uo_out[0] | E | sky130_ef_io__gpiov2_pad | 1032.0, 271.0 |
| 18 | uo_out[1] | E | sky130_ef_io__gpiov2_pad | 1032.0, 358.0 |
| 19 | uo_out[2] | E | sky130_ef_io__gpiov2_pad | 1032.0, 445.0 |
| 20 | uo_out[3] | E | sky130_ef_io__gpiov2_pad | 1032.0, 532.0 |
| 21 | uo_out[4] | E | sky130_ef_io__gpiov2_pad | 1032.0, 619.0 |
| 22 | uo_out[5] | E | sky130_ef_io__gpiov2_pad | 1032.0, 706.0 |
| 23 | uo_out[6] | E | sky130_ef_io__gpiov2_pad | 1032.0, 793.0 |
| 24 | uo_out[7] | E | sky130_ef_io__gpiov2_pad | 1032.0, 880.0 |
| 25 | uio_in[0] | N | sky130_ef_io__gpiov2_pad | 880.0, 1032.0 |
| 26 | uio_in[1] | N | sky130_ef_io__gpiov2_pad | 793.0, 1032.0 |
| 27 | uio_in[2] | N | sky130_ef_io__gpiov2_pad | 706.0, 1032.0 |
| 28 | uio_in[3] | N | sky130_ef_io__gpiov2_pad | 619.0, 1032.0 |
| 29 | uio_in[4] | N | sky130_ef_io__gpiov2_pad | 532.0, 1032.0 |
| 30 | uio_in[5] | N | sky130_ef_io__gpiov2_pad | 445.0, 1032.0 |
| 31 | uio_in[6] | N | sky130_ef_io__gpiov2_pad | 358.0, 1032.0 |
| 32 | uio_in[7] | N | sky130_ef_io__gpiov2_pad | 271.0, 1032.0 |
