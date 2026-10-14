# Kamera depth stereo di EBAZ4205

Dua modul OV2640 dan satu modul USB CY7C68013A (FX2LP) pada papan EBAZ4205 (Zynq XC7Z010).
Depth dihitung di FPGA. Matcher-nya berupa rantai "irisan" (slice) yang identik, masing-masing
16 disparitas; irisan itulah yang disiapkan sebagai chip Tiny Tapeout.

Sistem saat ini: sensor 400 x 296, depth 200 x 148, rantai 1 atau 2 irisan (16 atau 32
disparitas), 15 fps, clock pemrosesan 25 MHz. Papan boot dari kartu SD dan muncul di PC sebagai
webcam "Stereo Depth Camera" (gambar kiri dan disparitas berdampingan, 400 x 148).

## Daftar isi

1. [Perintah yang bisa dijalankan dari mana saja](#perintah-yang-bisa-dijalankan-dari-mana-saja)
2. [Fungsi setiap folder](#fungsi-setiap-folder)
3. [Fungsi setiap berkas](#fungsi-setiap-berkas)
4. [Membangun ulang](#membangun-ulang)
5. [Catatan dan batasan](#catatan-dan-batasan)

## Perintah yang bisa dijalankan dari mana saja

Semua alat PC dijalankan lewat satu peluncur, `stereo.cmd`, di akar repo. `stereo <alat> ...`
menjalankan `host/<alat>.py` dengan argumen yang sama, dari direktori mana pun.

Syarat sekali saja: folder repo ada di PATH. Di Command Prompt:

    setx PATH "%PATH%;D:\stereo-depth-cam"

lalu buka terminal baru. Tanpa itu, pakai path lengkap: `D:\stereo-depth-cam\stereo.cmd ...`.

### Streaming stereo (gambar kiri dan depth)

    stereo stream --slices 2        papan menjalankan rantai 2 irisan
    stereo stream --slices 1        papan menjalankan rantai 1 irisan
    stereo stream --probe           ambil 20 frame, cetak statistik, simpan build/webcam_probe.png

Jendela: kiri gambar kamera kiri (sudah direktifikasi), kanan depth berwarna. Baris atas: fps,
persen piksel yang valid, jarak di titik silang tengah, jangkauan. Tutup dengan `q`.
`--slices` hanya mengatur jangkauan dan skala warna penampil; jumlah irisan yang sebenarnya
ditentukan oleh bitstream di papan. (`stereo stream` sama dengan `stereo webcam`.)

### RViz (titik 3D, ROS 2 di WSL)

    stereo rviz --slices 2          membuka RViz di WSL dan mengirim titik 3D dari webcam
    stereo rviz --no-rviz           RViz dan node jembatan sudah berjalan
    stereo rviz --usb               sumber: tiga stream alat PC (firmware stream FX2LP), bukan webcam

Windows memegang USB, ROS berjalan di WSL (Ubuntu-24.04, ROS 2 Jazzy). Topik: `/stereo/points`,
`/stereo/left`, `/stereo/depth_color`. Berhenti dengan menutup RViz atau Ctrl+C.
Hanya satu program yang bisa memegang webcam: tutup `stereo stream` dulu.
(`stereo rviz` sama dengan `stereo mini_rviz`.)

### GUI Vivado

    stereo vivado 2                 proyek rantai 2 irisan (hw/projects/stereo_2slice)
    stereo vivado 1                 proyek rantai 1 irisan (hw/projects/stereo_1slice)

Vivado terbuka langsung pada block design `system`. Modul yang di-tape-out adalah blok-blok di
dalam hierarki `tapeout_chain` (`slice_0`, dan `slice_1` pada proyek 2 irisan).

### GUI Vitis

    stereo vitis 2                  workspace platform 2 irisan (sw/workspace_2slice)
    stereo vitis 1                  workspace platform 1 irisan (sw/workspace_1slice)

Kedua workspace berisi aplikasi yang sama (`sw/apps/stereo_cam`). Bedanya ada di platform:
berkas XSA-nya membawa bitstream proyek Vivado masing-masing, dan aplikasi mencetak jumlah irisan
saat mulai (`STEREO_SLICES`). Konfigurasi PS sama persis, jadi BSP dan FSBL-nya setara.

### Ganti BOOT.BIN (1 atau 2 irisan) lewat jaringan

    stereo bootbin status           BOOT.BIN mana yang ada di kartu, dan apa yang berjalan di FPGA
    stereo bootbin 1                pasang BOOT.BIN 1 irisan, lalu reboot otomatis
    stereo bootbin 2                pasang BOOT.BIN 2 irisan, lalu reboot otomatis
    stereo bootbin 2 --dry-run      upload dan cek saja; BOOT.BIN tidak disentuh, tanpa reboot
    stereo bootbin restore          kembalikan BOOT.BIN sebelum penggantian terakhir, lalu reboot

Urutannya: upload sebagai `BOOT.NEW` dengan persentase, cocokkan MD5 di kartu dengan berkas lokal,
simpan yang lama sebagai `BOOT.BIN.bak`, pasang, reboot, tunggu papan menjawab, tampilkan status.
Kalau BOOT.BIN baru tidak bisa boot, pemulihannya hanya dengan melepas kartu dan menyalin
`BOOT.BIN.bak` ke `BOOT.BIN` di PC.

### Papan lewat SSH

    stereo board status                              sensor, genlock, bitstream yang dimuat
    stereo board try hw/export/stereo_1slice         muat bitstream itu sekarang (boot berikutnya seperti semula)
    stereo board save hw/export/stereo_2slice        muat sekarang dan di setiap boot
    stereo board factory                             kembali ke bitstream di dalam BOOT.BIN
    stereo board app                                 salin program papan (board/) ke kartu SD
    stereo board ssh [perintah]                      shell di papan
    stereo board reboot

Alamat papan 169.254.179.10 (link-local, kabel langsung); ubah dengan variabel `BOARD_IP`.

### Lain-lain

    stereo uart "perintah"          konsol serial papan (COM3, 115200), untuk saat jaringan belum ada
    stereo uart_put lokal /tujuan   salin berkas lewat konsol serial
    stereo fx2_eeprom --probe       EEPROM modul FX2LP: baca, tulis firmware webcam, hapus
    stereo fx2_uvc                  muat firmware webcam ke RAM FX2LP (tanpa EEPROM)
    stereo compare_slices report    perbandingan 1 dan 2 irisan dari tangkapan di papan
    stereo                          daftar semua alat

## Fungsi setiap folder

| Folder | Fungsi |
|---|---|
| `rtl/` | Desain FPGA dalam Verilog |
| `rtl/blocks/` | Sistem dipotong menjadi blok-blok block design Vivado |
| `rtl/mini/` | Irisan matcher (modul yang di-tape-out) dan hub rantainya |
| `rtl/tb/` | Testbench; membandingkan RTL dengan model Python bit demi bit |
| `hw/` | Vivado: skrip proyek, constraint, berkas board, proyek 1 dan 2 irisan, hasil ekspor |
| `sw/` | Vitis: aplikasi bare-metal untuk PS, skrip workspace, dua workspace |
| `cfg/` | Konstanta dan tabel per build: kalibrasi, setelan matcher, jumlah irisan |
| `host/` | Alat di PC (Python): penampil, kalibrasi, model acuan, akses papan |
| `host/stereo/` | Pustaka: model bit-exact rantai depth, kalibrasi, rekonstruksi |
| `host/ros/` | Sisi ROS 2 (WSL) untuk tampilan RViz |
| `board/` | Yang berjalan di papan (Linux): program kamera, autorun, ganti bitstream |
| `board/petalinux/` | Resep image kartu SD (PetaLinux) dan pembuat BOOT.BIN |
| `fx2/` | Firmware webcam (UVC) FX2LP dan cadangan EEPROM asli modul |
| `asic/` | Irisan sebagai proyek Tiny Tapeout, skrip hardening, hasil 4x2 |
| `calib/` | Kalibrasi stereo yang dipakai dan pola target untuk dicetak |
| `constraints/`, `scripts/` | Pin dan skrip alur lama berbasis skrip (tanpa block design), JTAG, simulasi |
| `sensor/` | Tabel register OV2640 |
| `docs/` | Protokol rantai irisan |
| `build/` | Hasil build: bitstream, isi kartu SD, BOOT.BIN, log, tabel uji |
| `ov2640_usb/`, `fx2_stream/` | Salinan lama dari awal pengerjaan; tidak dipakai sistem sekarang |

## Fungsi setiap berkas

Berkas yang ditulis tangan dijelaskan satu per satu. Folder berisi hasil alat (ribuan berkas)
dijelaskan per kelompok di bagian akhir.

### Akar repo

| Berkas | Fungsi |
|---|---|
| `stereo.cmd` | Peluncur alat PC dari direktori mana saja |
| `README.md` | Dokumen ini |
| `.gitignore` | Hanya cache Python yang tidak dilacak |
| `dfx_runtime.txt`, `vivado.jou`, `vivado.log` | Sisa sesi Vivado; tidak dipakai |

### `rtl/blocks/` (blok block design)

| Berkas | Fungsi |
|---|---|
| `cam_input.v` | Kedua kamera: capture, luma, binning 2x2, line buffer, reset, basis waktu, pengukuran genlock |
| `rectify_census.v` | `depth_frontend` dengan konstanta build ini (dari `cfg/`) |
| `depth_frontend.v` | Penjadwal baris, 2 rektifikasi, 2 census, FIFO tanda tangan di depan hub |
| `chain_hub.v` | Hub rantai (`mini_hub`) dengan konstanta build ini, plus sinyal reset/enable irisan |
| `frame_format.v` | Disparitas menjadi byte: stream alat PC atau payload webcam |
| `usb_stream.v` | FIFO lintas clock, multiplexer stream, penulis Slave FIFO FX2LP |
| `ps_status.v` | Status untuk PS di GPIO EMIO, dan dua LED |

### `rtl/mini/` (rantai matcher)

| Berkas | Fungsi |
|---|---|
| `tt_um_stereo_slice.v` | Top Tiny Tapeout satu irisan: pin proyek standar |
| `mini_slice.v` | Satu irisan: 16 disparitas, SGM satu arah, merangkai lima blok di bawah |
| `ms_ctrl.v` | Penerima down-link dan kendali |
| `ms_cost.v` | Riwayat tanda tangan dan biaya Hamming |
| `ms_path.v` | Biaya jalur (SGM) |
| `ms_pick.v` | Runner-up dan pemenang gambar kanan |
| `ms_up.v` | Rantai naik (up-link) dan sub-piksel |
| `mini_hub.v` | Hub: menyiarkan tanda tangan, mengumpulkan hasil, uji rentang dan cek kiri-kanan |

### `rtl/` (lainnya)

| Berkas | Fungsi |
|---|---|
| `cam_capture.v` | Pengambilan byte satu OV2640, di-oversample oleh clock 200 MHz |
| `luma_tap.v` | Luma tiap piksel dari stream byte kamera |
| `luma_bin2.v` | Binning luma 2x2 |
| `rect_linebuf.v` | Line buffer di depan rektifikasi (dua clock) |
| `rectify.v` | Rektifikasi dengan tabel simpul dan interpolasi |
| `census.v` | Transformasi census |
| `mem_1r1w.v` | Memori satu baca satu tulis |
| `uvc_lines.v` | Payload video per baris untuk mode webcam |
| `stream_mux.v` | Tiga stream menjadi potongan 512 byte |
| `byte_fifo.v` | FIFO byte satu clock |
| `fx2_writer.v` | Penulis Slave FIFO FX2LP |
| `depth_mini.v` | Rantai depth mini, dirakit dari blok-blok di atas (dipakai testbench dan alur skrip) |
| `depth_top.v` | Top alur skrip: PS + kamera + depth + USB dalam satu modul |
| `depth_core.v`, `stereo_core.v`, `stereo_chip.v`, `matcher.v` | Inti depth penuh (64/128 disparitas) dan top chip-nya; terlalu besar untuk Tiny Tapeout |
| `cam_usb_top.v`, `cam_mux.v` | Top dan multiplexer build "capture saja" (tanpa depth) |
| `tapeout.f` | Daftar berkas inti penuh untuk alur ASIC |

### `rtl/tb/`

| Berkas | Fungsi |
|---|---|
| `tb_mini.v` | Rantai 1 sampai 4 irisan terhadap model |
| `tb_depth_mini.v` | Seluruh rantai depth mini (binning sampai byte keluar) terhadap model |
| `tb_depth.v`, `tb_chip.v`, `tb_matcher.v`, `tb_census.v`, `tb_rectify.v` | Inti penuh dan bagian-bagiannya |

### `hw/`

| Berkas / folder | Fungsi |
|---|---|
| `scripts/create_project.tcl` | Membuat proyek Vivado N irisan dengan block design, menjalankan sintesis dan implementasi, mengekspor hasil |
| `scripts/open_bd.tcl` | Membuka block design saat GUI dibuka (dipakai `stereo vivado`) |
| `constraints/stereo_cam_pins.xdc` | Pin papan: kamera, FX2LP, Ethernet, LED |
| `constraints/stereo_cam_timing.xdc` | Clock dan pengecualian timing (hanya implementasi) |
| `board_files/` | Definisi board EBAZ4205 untuk Vivado, dengan preset PS7; lisensi di `LICENSE-XyleMora` |
| `projects/stereo_1slice/`, `projects/stereo_2slice/` | Proyek Vivado: `.xpr`, block design (`.srcs/.../system.bd`), dan folder hasil alat |
| `export/stereo_Nslice/*.bit` | Bitstream |
| `export/stereo_Nslice/*.bit.bin` | Bitstream untuk FPGA manager Linux (`stereo board try`) |
| `export/stereo_Nslice/*.xsa` | Platform hardware untuk Vitis |
| `export/stereo_Nslice/timing.rpt`, `utilization*.rpt` | Laporan timing dan pemakaian sumber daya (per blok di `utilization_hier.rpt`) |
| `export/stereo_Nslice/bitstream.bif` | Masukan bootgen untuk `.bit.bin` |

### `sw/`

| Berkas / folder | Fungsi |
|---|---|
| `apps/stereo_cam/src/main.c` | Alur utama: siapkan kamera, aktifkan stream, jalankan genlock |
| `apps/stereo_cam/src/sccb.c`, `sccb.h` | SCCB lewat pengendali I2C PS, dengan ulangan |
| `apps/stereo_cam/src/ov2640.c`, `ov2640.h` | Deteksi dan mode CIF 15 fps OV2640 |
| `apps/stereo_cam/src/ov2640_tables.h` | Tabel register (dibuat oleh `scripts/gen_tables.py`) |
| `apps/stereo_cam/src/genlock.c`, `genlock.h` | Menjaga dua kamera tetap seirama |
| `apps/stereo_cam/src/stereo_cfg.h` | Setelan: timing sensor, lead genlock, bit GPIO |
| `scripts/create_workspace.py` | Membuat workspace Vitis: platform dari XSA + aplikasi |
| `scripts/gen_tables.py` | Membuat `ov2640_tables.h` dari `sensor/ov2640_tables.tcl` |
| `workspace_1slice/`, `workspace_2slice/` | Workspace Vitis (platform `ebaz4205_stereo`, aplikasi `stereo_cam`, hasil build) |

### `cfg/slices1/`, `cfg/slices2/`

| Berkas | Fungsi |
|---|---|
| `rect_cfg.vh` | Ukuran gambar, line buffer, census, lead genlock (dari kalibrasi) |
| `match_cfg.vh` | Setelan matcher dan `SLICES` (1 atau 2) |
| `cam0_nodes.hex`, `cam1_nodes.hex` | Tabel simpul rektifikasi tiap kamera |
| `cam0_need.hex`, `cam1_need.hex` | Baris masukan yang harus lengkap sebelum tiap baris keluaran |

### `host/` (alat PC)

| Berkas | Fungsi | Butuh |
|---|---|---|
| `webcam.py` | Penampil langsung dari webcam (`stereo stream`) | papan boot biasa |
| `mini_rviz.py` | Titik 3D ke RViz (`stereo rviz`) | papan boot biasa, ROS 2 di WSL |
| `bootbin.py` | Ganti BOOT.BIN lewat jaringan | SSH |
| `board.py` | Status, ganti bitstream, shell lewat SSH | SSH |
| `vivado.py`, `vitis.py`, `xilinx.py` | Pembuka GUI Vivado / Vitis dan pencari instalasinya | Vivado, Vitis |
| `compare_slices.py` | Tangkap dan bandingkan 1 dan 2 irisan | papan boot biasa |
| `uart.py`, `uart_put.py` | Perintah dan salin berkas lewat konsol serial | USB-serial |
| `fx2_eeprom.py` | Baca, cadangkan, tulis, hapus EEPROM FX2LP | FX2LP |
| `fx2_uvc.py` | Muat firmware webcam ke RAM FX2LP | FX2LP |
| `fx2_stream.py` | FX2LP sebagai jembatan Slave FIFO (stream alat PC) | FX2LP mode stream |
| `source.py`, `camlink.py`, `genlock.py` | Sumber gambar, dekode stream, genlock dari PC untuk alat mode stream | mode stream |
| `mini_view.py`, `fpga_depth.py` | Penampil dan pembanding FPGA vs model di mode stream | mode stream, JTAG |
| `stereo_view.py`, `cam_view.py`, `cam_grab.py`, `record.py` | Penampil stereo/kamera, ambil frame, rekam pasangan | mode stream, JTAG |
| `calib_capture.py`, `align_check.py`, `adjust_view.py`, `wall_test.py` | Kalibrasi, cek dan panduan penyetelan kamera, uji dinding | mode stream, JTAG |
| `pslink.py`, `jtag_genlock.py`, `jtag_status.py`, `tof.py` | Akses PS lewat JTAG: register, genlock, status, sensor ToF | JTAG |
| `ros/mini_ros_node.py` | Node ROS 2: menerima frame lewat TCP, menerbitkan topik | WSL |
| `ros/start_rviz.sh`, `ros/mini.rviz` | Menjalankan node dan RViz dengan tampilan siap pakai | WSL |

"Mode stream" = FX2LP dengan firmware tiga stream (jumper J2 terpasang), bukan webcam.

### `host/stereo/` (pustaka)

| Berkas | Fungsi |
|---|---|
| `params.py`, `params_auto.json` | Profil resolusi dan setelan matcher |
| `chain.py` | Model bit-exact rantai irisan (acuan RTL) |
| `stream.py` | Rantai depth persis seperti di FPGA, dari dua gambar mentah |
| `disparity.py` | Disparitas dari pasangan terektifikasi (census, SGM, cek kiri-kanan) |
| `rectify.py` | Rektifikasi: acuan OpenCV dan versi FPGA |
| `reconstruct.py` | Disparitas ke jarak dan titik 3D |
| `golden.py` | Membuat vektor uji dan tabel untuk RTL |
| `calibrate.py` | Kalibrasi stereo dan turunannya untuk profil mini |
| `chessboard.py`, `charuco.py`, `target.py` | Pola target dan pendeteksinya |
| `adjust.py`, `trim.py` | Mengukur dan mengoreksi pergeseran arah kamera |
| `autotune.py`, `synth.py`, `laser.py` | Pencarian setelan otomatis, rekaman sintetis, pencari titik laser |

### `board/`

| Berkas | Fungsi |
|---|---|
| `stereo_cam.py` | Program di papan: konfigurasi sensor, clock PL, genlock |
| `stereo.conf` | Setelannya (mode sensor, lead genlock, webcam) |
| `network.conf` | Alamat jaringan papan |
| `autorun.sh` | Dijalankan saat boot dari kartu SD: jaringan, bitstream tersimpan, program kamera |
| `fpga.sh` | Ganti bitstream di papan (`try`, `save`, `factory`, `status`) |
| `petalinux/setup.sh`, `run_all.sh` | Membuat dan membangun proyek PetaLinux |
| `petalinux/package.sh` | BOOT.BIN awal dan isi kartu SD |
| `petalinux/bootbin.sh` | BOOT.BIN untuk 1 dan 2 irisan (ke `build/bootbin/`) |
| `petalinux/bootscr.py` | Memperbaiki alamat muat `boot.scr` untuk RAM 256 MB |
| `petalinux/system-user.dtsi` | Tambahan device tree: Ethernet MII, I2C dimatikan, clock PL tetap hidup |
| `petalinux/stereo-autorun.bb`, `files/*` | Resep layanan autorun di image |

### `fx2/`

| Berkas | Fungsi |
|---|---|
| `uvc/uvc.c` | Firmware webcam (UVC) untuk FX2LP |
| `uvc/build.sh` | Kompilasi dengan SDCC |
| `uvc/uvc.ihx`, `uvc/uvc_dev.ihx` | Hasil kompilasi (versi EEPROM dan versi RAM) |
| `eeprom_*.bin`, `eeprom_*.txt` | Cadangan EEPROM asli modul (untuk kembali menjadi logic analyzer) |

### `asic/`

| Berkas / folder | Fungsi |
|---|---|
| `tt/` | Proyek berformat template Tiny Tapeout: `src/` (RTL irisan), `info.yaml`, `docs/info.md`, `test/` (cocotb), workflow |
| `tt.py` | Hardening dengan OpenLane memakai DEF template Tiny Tapeout |
| `hier.py` | Fungsi bersama (menjalankan OpenLane, metrik, render) dan alur makro lama |
| `annotate_tt.py` | Gambar layout dengan pewarnaan blok |
| `wsl_ttrun.sh`, `wsl_tttest.sh`, `wsl_precheck.sh`, `wsl_ttall.sh` | Hardening, uji cocotb, precheck resmi, dan semuanya berurutan (di WSL) |
| `out_tt_4x2/tt_um_stereo_slice.gds` | Layout akhir 4x2 petak |
| `out_tt_4x2/layout*.png` | Gambar layout: mentah, dengan judul dan legenda, dengan nama blok saja |
| `out_tt_4x2/metrics.json`, `summary.txt`, `cells.json` | Metrik alur, ringkasan, posisi sel per blok |
| `out_tt_4x2/precheck/` | Laporan precheck Tiny Tapeout |

### `calib/`, `sensor/`, `docs/`, `constraints/`, `scripts/`

| Berkas | Fungsi |
|---|---|
| `calib/stereo_cif.npz`, `.json` | Kalibrasi pada 400 x 296 |
| `calib/stereo_mini.npz`, `.json` | Turunannya untuk 200 x 148 |
| `calib/align_ref.json` | Acuan posisi kamera untuk cek pergeseran |
| `calib/*.pdf` | Pola papan catur dan ChArUco untuk dicetak |
| `sensor/ov2640_tables.tcl`, `gen_tables.py` | Tabel register OV2640 dan pembuatnya |
| `docs/matcher_mini_chain.md` | Protokol rantai irisan |
| `constraints/*.xdc` | Constraint alur skrip (top `depth_top` / `cam_usb_top`) |
| `scripts/build_depth.tcl` | Build alur skrip (`DEPTH_VARIANT=mini` atau `mini1`) |
| `scripts/build.tcl` | Build "capture saja" |
| `scripts/cam.tcl` | Bring-up lewat JTAG: PS, sensor, mode |
| `scripts/sim.ps1` | Menjalankan satu testbench di xsim |
| `scripts/synth_mini.tcl`, `ila_grab.tcl` | Ukuran satu irisan di FPGA; ambil jendela ILA |

### `build/` dan folder hasil alat

| Folder / berkas | Isi |
|---|---|
| `build/bootbin/BOOT_1slice.BIN`, `BOOT_2slices.BIN` | BOOT.BIN siap pasang (`stereo bootbin`) |
| `build/sdcard/` | Isi partisi boot kartu SD: `BOOT.BIN` awal, `boot.scr`, `image.ub`, folder `stereo/` |
| `build/mini/`, `build/mini1/` | Bitstream alur skrip (2 dan 1 irisan) |
| `build/golden_minisys/`, `build/golden_mini1sys/` | Vektor uji dan tabel untuk testbench dan alur skrip |
| `build/sim/` | Folder kerja simulasi |
| `build/ref/EBAZ4205/` | Salinan repo referensi papan (konfigurasi PS/PL, aplikasi uji) |
| `build/*.log`, `build/webcam_probe.png`, `build/gui/` | Log build, cuplikan terakhir, folder kerja GUI |
| `hw/projects/*/*.runs`, `.gen`, `.cache`, `.hw`, `.ip_user_files` | Hasil antara Vivado |
| `sw/workspace_*/` | Hasil Vitis: BSP, FSBL, `stereo_cam.elf` |
| `ov2640_usb/`, `fx2_stream/` | Salinan lama; tidak dipakai |

## Membangun ulang

| Yang dibangun | Perintah |
|---|---|
| Proyek Vivado + bitstream | `vivado -mode batch -source hw/scripts/create_project.tcl -tclargs 2` (atau `1`) |
| Workspace Vitis | `vitis -s sw/scripts/create_workspace.py 2` (atau `1`) |
| BOOT.BIN | di WSL: `bash /mnt/d/stereo-depth-cam/board/petalinux/bootbin.sh 1 2` |
| Simulasi | `scripts\sim.ps1 tb_depth_mini -Golden build\golden_minisys` |
| Chip (hardening, uji, precheck) | di WSL: `bash /mnt/d/stereo-depth-cam/asic/wsl_ttall.sh` |
| Firmware FX2LP | di WSL: `bash fx2/uvc/build.sh` |

Beberapa skrip WSL memuat path `/mnt/d/stereo-depth-cam`; kalau repo dipindah, path itu ikut
diubah.

## Catatan dan batasan

- Kartu SD: salin `build/sdcard/*` ke partisi pertama (FAT). Papan boot sekitar 30 detik.
  Konsol serial 115200 8N1, login `root`.
- FX2LP menjadi webcam saat dicolok: firmware ada di EEPROM-nya, J2 terbuka dengan pin alamat
  ditarik ke 3,3 V. Dengan jumper J2 terpasang ia kembali menjadi logic analyzer asli.
- Aplikasi bare-metal (`sw/apps/stereo_cam`) sudah ter-build tetapi belum pernah dijalankan di
  papan; papan boot ke Linux.
- Jumlah irisan sebuah bitstream tidak bisa dibaca dari PL: `stereo bootbin status` mengenali
  berkas lewat checksum.
- Hasil chip (`asic/out_tt_4x2`) berasal dari run lokal: DRC 0, LVS 0, setup +2,8 ns pada 25 MHz,
  precheck 15/15. Yang menentukan untuk shuttle adalah GitHub Action template Tiny Tapeout.
- Sambungan chip ke hub membutuhkan fase pengambilan yang bisa digeser di hub, atau clock 5
  sampai 10 MHz.
- Alat bertanda "JTAG" atau "mode stream" tidak berjalan pada papan dalam keadaan sekarang
  (JTAG dilepas, FX2LP sebagai webcam).
