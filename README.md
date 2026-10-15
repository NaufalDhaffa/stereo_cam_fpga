# Kamera depth stereo di EBAZ4205

Dua modul OV2640 dan satu modul USB CY7C68013A (FX2LP) pada papan EBAZ4205 (Zynq XC7Z010).
Depth dihitung di FPGA. Matcher-nya berupa rantai "irisan" (slice) yang identik, masing-masing
16 disparitas; irisan itulah yang disiapkan sebagai chip Tiny Tapeout.

Sistem saat ini: sensor 400 x 296, depth 200 x 148, rantai 1 atau 2 irisan (16 atau 32
disparitas), 15 fps, clock pemrosesan 25 MHz. Papan boot dari kartu SD dan muncul di PC sebagai
webcam "Stereo Depth Camera" (gambar kiri dan disparitas berdampingan, 400 x 148).

## Daftar isi

1. [Perintah yang bisa dijalankan dari mana saja](#perintah-yang-bisa-dijalankan-dari-mana-saja)
2. [Algoritma: dari kamera sampai USB](#algoritma-dari-kamera-sampai-usb)
3. [Format data USB dan cara membacanya](#format-data-usb-dan-cara-membacanya)
4. [Anggaran tapeout](#anggaran-tapeout)
5. [Chip mandiri (die bebas, wire bonding)](#chip-mandiri-die-bebas-wire-bonding)
6. [Fungsi setiap folder](#fungsi-setiap-folder)
7. [Fungsi setiap berkas](#fungsi-setiap-berkas)
8. [Membangun ulang](#membangun-ulang)
9. [Catatan dan batasan](#catatan-dan-batasan)

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

Posisi titik 3D selalu benar, dengan atau tanpa `--slices`: jarak tiap titik dihitung langsung
dari disparitas FPGA (jarak = f x B / d; dari kalibrasi f = 262,5 px, B = 54,5 mm). `--slices`
mengatur skala warna gambar `/stereo/depth_color` (dan penampil `stereo stream`) supaya sesuai
rentang bitstream di papan; tanpa opsi itu skala dianggap 2 irisan.

| | Disparitas | Terdekat | Terjauh |
|---|---|---|---|
| 1 irisan | 7 sampai 22 px | 0,65 m | 2,04 m |
| 2 irisan | 7 sampai 38 px | 0,38 m | 2,04 m |

Batas jauh sama karena disparitas minimumnya sama; benda yang lebih dekat dari batas dekat tidak
mendapat titik. Sudut pandang awal RViz (`host/ros/mini.rviz`) sama untuk kedua versi dan bisa
digeser dengan mouse.

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

### SSH lewat Ethernet (tanpa konsol serial)

Konsol serial (USB-serial di UART papan) hanya diperlukan kalau jaringan belum jalan. Sehari-hari
papan diakses lewat Ethernet:

1. Sambungkan kabel Ethernet langsung dari laptop ke papan (tanpa router).
2. Adaptor Ethernet laptop harus punya alamat di 169.254.x.x / 255.255.0.0. Windows memberinya
   sendiri (alamat link-local otomatis) bila adaptor diatur "Obtain an IP address automatically"
   dan tidak ada DHCP; kalau adaptor memakai alamat tetap, tambahkan satu alamat, misalnya
   169.254.179.1 dengan mask 255.255.0.0. Cek dengan `ipconfig`.
3. Nyalakan papan dan tunggu sekitar 30 detik sampai boot selesai. Papan selalu memakai
   169.254.179.10 (`board/network.conf` di kartu SD), dipaksa 100 Mbit/s full duplex.
4. Masuk:

        stereo board ssh                     shell di papan (login root, tanpa kata sandi)
        stereo board ssh "perintah"          satu perintah saja
        stereo board status                  sensor, genlock, bitstream

   atau dengan OpenSSH biasa:

        ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=NUL root@169.254.179.10

   Dua opsi itu perlu karena kunci host papan dibuat baru di setiap boot (sistem berkasnya di
   RAM); tanpa keduanya `ssh` menolak tersambung setelah papan di-reboot. Untuk menyalin berkas:

        scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=NUL berkas root@169.254.179.10:/mnt/sd/

Partisi boot kartu SD ada di `/mnt/sd` (program papan di `/mnt/sd/stereo`). Ingat `sync` sebelum
mematikan daya setelah menulis ke kartu.

Kalau ping ke 169.254.179.10 tidak menjawab: pastikan lampu link di port Ethernet papan menyala,
alamat laptop memang 169.254.x.x / 255.255.0.0, dan papan sudah selesai boot. Konsol serial tetap
cara cadangan untuk melihat apa yang terjadi saat boot (`stereo uart`).

Lewat router atau switch dengan DHCP: ubah `ADDRESS=dhcp` di `/mnt/sd/stereo/network.conf`
(lewat `stereo board ssh` atau dengan menyunting kartu di PC), `sync`, reboot; alamat yang didapat
terlihat di halaman router atau lewat `stereo uart "ip -4 addr"`. Arahkan alat PC ke alamat itu
dengan variabel `BOARD_IP`, misalnya `set BOARD_IP=192.168.1.50`.

### Lain-lain

    stereo uart "perintah"          konsol serial papan (COM3, 115200), untuk saat jaringan belum ada
    stereo uart_put lokal /tujuan   salin berkas lewat konsol serial
    stereo fx2_eeprom --probe       EEPROM modul FX2LP: baca, tulis firmware webcam, hapus
    stereo fx2_uvc                  muat firmware webcam ke RAM FX2LP (tanpa EEPROM)
    stereo compare_slices report    perbandingan 1 dan 2 irisan dari tangkapan di papan
    stereo uvc_format [--frame]     data dummy yang dikirim lewat USB dan cara membacanya
    stereo                          daftar semua alat

## Algoritma: dari kamera sampai USB

Seluruh rantai berjalan di papan tanpa PC. PS (Linux) hanya mengatur sensor dan menjaga kedua
kamera seirama; semua pengolahan gambar ada di PL (FPGA). Tiga domain clock: 200 MHz (FCLK0,
pengambilan kamera dan sisi USB), 25 MHz (FCLK1, pemrosesan), 48 MHz (IFCLK dari FX2LP).

```
OV2640 kiri  ─┐                                                   ┌─ slice 0 ─┐
              ├─ cam_input ─ rectify_census ─ FIFO ─ chain_hub ─┤           ├─ chain_hub ─ frame_format ─ usb_stream ─ FX2LP ─ USB ─ PC
OV2640 kanan ─┘  (capture,    (rektifikasi,          (bus turun)  └─ slice 1 ─┘  (uji kiri-kanan) (payload UVC)  (FIFO, Slave FIFO)
                 luma, 2x2,    census)                              (tape-out)
                 line buffer)
```

### 0. Sensor dan PS

| | |
|---|---|
| Masukan | Cahaya; register sensor lewat SCCB dari PS (`board/stereo_cam.py`) |
| Proses | OV2640 mode CIF dipotong 400 x 296, RGB565, 15 fps (CLKRC 0x83), osilator 12 MHz di modul. PS mengukur selisih awal frame kedua kamera (dari PL, GPIO EMIO) dan menyetel register panjang frame kamera yang lebih cepat sampai kamera 1 tertinggal tepat 4,365 ms (genlock) |
| Keluaran | Pin DVP per kamera: data 8 bit, PCLK, HREF, VSYNC; 2 byte per piksel |
| Kegunaan | Dua gambar yang diambil hampir bersamaan, dengan selisih yang diharapkan tabel rektifikasi |

### 1. Pengambilan (`cam_capture`, 2 buah, 200 MHz)

| | |
|---|---|
| Masukan | Pin DVP |
| Proses | Semua pin dicuplik 200 MHz; tepi naik PCLK baru diterima setelah dua cuplikan rendah lalu dua tinggi (denyut pendek dari kabel jumper diabaikan). Byte diambil selama HREF tinggi; tepi naik VSYNC memulai frame dan mencatat waktunya dalam mikrodetik |
| Keluaran | Aliran byte bertanda, waktu awal frame; juga stream mentah dengan kepala 32 byte untuk alat PC |
| Kegunaan | Masukan luma; waktu awal frame untuk genlock |

### 2. Luma dan binning (`luma_tap`, `luma_bin2`, 200 MHz)

| | |
|---|---|
| Masukan | Byte RGB565, byte tinggi dulu |
| Proses | R, G, B diperlebar ke 8 bit, Y = (77 R + 150 G + 29 B) >> 8. Tiap frame dipaksa tepat 400 x 296. Lalu rata-rata 2 x 2 dibulatkan: 200 x 148 |
| Keluaran | Luma 8 bit per piksel, 200 x 148 |
| Kegunaan | Pencocokan cukup dengan kecerahan; resolusi lebih kecil supaya matcher sempat |

### 3. Line buffer (`rect_linebuf`, tulis 200 MHz, baca 25 MHz)

| | |
|---|---|
| Masukan | Luma 200 x 148 per kamera |
| Proses | Cincin 16 baris terakhir di block RAM dua-clock; jumlah baris yang sudah lengkap dikirim dalam kode Gray ke domain 25 MHz |
| Keluaran | Akses baca acak ke 16 baris terakhir; jumlah baris lengkap; alamat baris 0 |
| Kegunaan | Rektifikasi butuh beberapa baris sumber sekaligus untuk satu baris keluaran |

### 4. Penjadwal dan rektifikasi (`depth_frontend`: `rectify`, 2 buah, 25 MHz)

| | |
|---|---|
| Masukan | Line buffer kedua kamera; tabel simpul `cfg/*/cam*_nodes.hex`, tabel kebutuhan baris `cam*_need.hex` |
| Proses | Penjadwal memulai baris keluaran y bila kedua kamera sudah punya semua baris sumber yang dibutuhkan dan FIFO di depan hub hampir kosong. Untuk tiap piksel: tabel simpul setiap 16 piksel memberi koordinat sumber dalam 1/16 piksel; empat simpul di sekitarnya dicampur, lalu empat piksel sumber dicampur (bilinear). Satu piksel tiap 10 clock |
| Keluaran | Luma terektifikasi + bendera `ok` (sumbernya di dalam gambar), baris demi baris |
| Kegunaan | Setelah rektifikasi, titik yang sama di dunia berada di baris yang sama di kedua gambar, jadi pencarian cukup sepanjang satu baris |

### 5. Census (`census`, 2 buah, 25 MHz)

| | |
|---|---|
| Masukan | Luma terektifikasi |
| Proses | Penghalusan 3 x 3 (bobot 1-2-1). Lalu jendela 9 baris x 17 kolom (+-4, +-8) dengan tetangga setiap 2 piksel: 5 x 9 - 1 = 44 perbandingan, satu bit per tetangga, 1 bila tetangga lebih gelap dari pusat. Valid bila seluruh jendela berisi piksel terektifikasi yang sah |
| Keluaran | Tanda tangan 44 bit + bit valid per piksel |
| Kegunaan | Pencocokan dengan pola terang-gelap, bukan nilai kecerahan, jadi tahan terhadap beda kecerahan dan kontras antar-kamera |

### 6. FIFO dan hub (`depth_frontend`, `chain_hub`, 25 MHz)

| | |
|---|---|
| Masukan | Pasangan tanda tangan kiri dan kanan per piksel, satu baris ditampung di FIFO 256 entri |
| Proses | Tiap piksel mendapat satu slot: 31 clock (1 irisan) atau 34 clock (2 irisan). Di slot itu hub mengirim bingkai bus turun 7 bit per clock ke semua irisan: kepala (`sync`), tanda tangan kiri, untuk tiap irisan p tanda tangan kanan yang ditunda DMIN + 16 p piksel, dan nilai balik piksel sebelumnya (`gmin`, `kstar`, biaya tepi). Setelah satu baris, 16 N + 2 slot pembilas |
| Keluaran | Bus turun `dl` ke semua irisan |
| Kegunaan | Irisan tidak menyimpan gambar sama sekali; hub yang memegang data dan menunda tanda tangan kanan untuk jendela tiap irisan |

### 7. Irisan matcher (`tt_um_stereo_slice`, modul tape-out, 25 MHz)

Irisan p menangani 16 disparitas d = 7 + 16 p sampai 22 + 16 p, satu disparitas per clock.

| | |
|---|---|
| Masukan | Bus turun (`ui_in`), rantai naik dari irisan di bawahnya (`uio_in`) |
| Proses | (1) Biaya: jarak Hamming tanda tangan kiri dan kanan (0 sampai 44), dirata-rata atas 3 piksel berurutan. (2) SGM satu arah, kiri ke kanan: L(x, d) = C(x, d) + min(L(x-1, d), L(x-1, d+-1) + P1, gmin + P2) - gmin, dengan P1 = 15, P2 = 73, dibatasi 127; nilai tepi jendela datang dari irisan tetangga. (3) Pemenang: biaya terendah, seri ke indeks terendah. (4) Runner-up di luar pemenang +-1; lolos bila (runner-up - terbaik) x 16 >= runner-up x 3. (5) Sub-piksel: parabola lewat dua tetangga pemenang, hasil dalam 1/16 piksel. (6) Catatan pemenang gambar kanan untuk uji kiri-kanan |
| Keluaran | Rantai naik (`uo_out`) ke irisan di atasnya; irisan teratas ke hub: kode disparitas |
| Kegunaan | Rantai N irisan berperilaku persis seperti satu matcher 16 N disparitas (terbukti bit demi bit di simulasi). Menambah irisan = memperlebar rentang disparitas = menjangkau benda lebih dekat |

### 8. Uji akhir di hub (`chain_hub`)

| | |
|---|---|
| Masukan | Hasil rantai per piksel, satu baris |
| Proses | Uji rentang (pemenang di ujung jendela tidak bisa diparabola dan ditolak) dan uji kiri-kanan: pemenang dilihat dari gambar kanan harus menunjuk balik ke piksel yang sama |
| Keluaran | Disparitas per piksel, 12 bit dalam 1/16 piksel, 0 = tidak ada; posisi x, y; tanda awal frame |
| Kegunaan | Membuang pencocokan yang meragukan (oklusi, tekstur berulang) |

### 9. Pembentuk payload (`frame_format`, `uvc_lines`, 25 MHz)

| | |
|---|---|
| Masukan | Disparitas dari hub; baris kiri terektifikasi (dari langkah 4, ditahan di FIFO sampai disparitas baris yang sama datang) |
| Proses | Mode webcam: satu payload USB Video Class per baris (lihat format di bawah). Baris hanya dikirim bila FIFO di belakang punya ruang untuk seluruhnya; kalau tidak, seluruh baris dibuang, tidak pernah sebagian. (Mode alat PC: kepala 32 byte per frame lalu 2 byte per piksel.) |
| Keluaran | Byte payload + tanda byte terakhir |
| Kegunaan | Bentuk yang dikenali Windows sebagai kamera biasa, tanpa driver tambahan |

### 10. Ke USB (`usb_stream`, `fx2_writer`, firmware `fx2/uvc/uvc.c`)

| | |
|---|---|
| Masukan | Byte payload (25 MHz) |
| Proses | FIFO 25 MHz ke 200 MHz, FIFO 200 MHz ke 48 MHz (16 KiB), lalu Slave FIFO 8 bit ke endpoint 6 FX2LP. Paket USB 512 byte; byte terakhir payload memicu PKTEND sehingga paket terakhir pendek, dan paket pendek itulah akhir payload. FX2LP mengumumkan dirinya sebagai kamera UVC YUY2 400 x 148 pada 15 fps, endpoint bulk |
| Keluaran | Paket USB bulk ke PC, sekitar 1,78 MB/s |
| Kegunaan | PC menerima frame lewat driver kamera bawaan Windows |

### 11. Di PC (`host/webcam.py`, `host/mini_rviz.py`)

| | |
|---|---|
| Masukan | Frame 400 x 148 YUY2 (Windows sudah membuang kepala payload) |
| Proses | Baca mentah (OpenCV, backend MSMF, tanpa konversi warna), pisahkan kiri dan disparitas, filter median dan pembersih bintik (`stream.finished`), topeng piksel yang di luar rektifikasi; jarak = f x B / d |
| Keluaran | Gambar depth berwarna, jarak per piksel, titik 3D (RViz) |
| Kegunaan | Tampilan, pengukuran jarak, peta 3D |

## Format data USB dan cara membacanya

### Satu baris = satu payload, 802 byte

| Byte | Isi |
|---|---|
| 0 | `0x02`: panjang kepala payload |
| 1 | `0x80 \| akhir_frame << 1 \| bit_frame` (bit_frame berganti tiap frame; akhir_frame = 1 di baris 147) |
| 2 sampai 401 | gambar kiri, 200 piksel x 2 byte: `luma, 0x80` |
| 402 sampai 801 | disparitas, 200 piksel x 2 byte: `d >> 2, 0x80 \| (d & 3)`, d dalam 1/16 piksel, 0 = tidak ada |

Satu frame = 148 payload; di USB tiap payload menjadi paket 512 + 290 byte. Tanpa kepala, satu
baris adalah 800 byte YUY2, jadi program melihat gambar 400 x 148: kiri abu-abu, kanan depth
(makin terang makin dekat).

### Data dummy

`stereo uvc_format` membuat satu baris dummy persis seperti yang dikirim logika, lalu membacanya
kembali. Baris dummy: gradasi abu-abu, 30 piksel pertama tanpa disparitas, latar 7,5 px, benda
dekat di piksel 80 sampai 119 dengan 21,5625 px:

```
row 10 as one payload: 802 bytes = 2 header + 400 left + 400 disparity
over USB in 2 bulk packets: 512 + 290 bytes

start of the payload (header, then the left picture):
  0000: 02 81 28 80 28 80 29 80 2a 80 2b 80 2c 80 2c 80
  0010: 2d 80 2e 80 2f 80 30 80 30 80 31 80 32 80 33 80

the disparity part, pixels 78 to 85 (byte 558):
  022e: 1e 80 1e 80 56 81 56 81 56 81 56 81 56 81 56 81

read back: {'end_of_frame': False, 'frame_bit': 1}
  x=  0  luma  40  disparity    0/16 =  0.000 px  no disparity
  x= 29  luma  63  disparity    0/16 =  0.000 px  no disparity
  x= 30  luma  64  disparity  120/16 =  7.500 px  distance 1.91 m
  x= 79  luma 103  disparity  120/16 =  7.500 px  distance 1.91 m
  x= 80  luma 104  disparity  345/16 = 21.562 px  distance 0.66 m
  x=100  luma 120  disparity  345/16 = 21.562 px  distance 0.66 m
  x=119  luma 135  disparity  345/16 = 21.562 px  distance 0.66 m
  x=120  luma 136  disparity  120/16 =  7.500 px  distance 1.91 m
```

Contoh membaca dua byte disparitas: `56 81` berarti d = (0x56 << 2) | (0x81 & 3) = 344 + 1 =
345, yaitu 345 / 16 = 21,5625 piksel, dan jarak = 262,5 x 54,45 / 21,5625 = 663 mm.
`1e 80` berarti d = 120 = 7,5 piksel = 1,91 m. `00 80` berarti tidak ada disparitas.

`stereo uvc_format --frame` menyusun satu frame dummy penuh dan membacanya lewat pembaca yang sama
dengan `stereo stream`; hasilnya harus identik dengan yang dikirim.

### Membaca dari program sendiri

```python
import cv2, numpy as np

cap = cv2.VideoCapture(0, cv2.CAP_MSMF)          # MSMF: frame dikirim apa adanya
cap.set(cv2.CAP_PROP_FRAME_WIDTH, 400)
cap.set(cv2.CAP_PROP_FRAME_HEIGHT, 148)
cap.set(cv2.CAP_PROP_CONVERT_RGB, 0)             # jangan diubah ke RGB: byte disparitas akan rusak
ok, frame = cap.read()
raw = np.asarray(frame, np.uint8).reshape(148, 400, 2)
left = raw[:, :200, 0]                                            # luma kiri, 200 x 148
d16 = (raw[:, 200:, 0].astype(np.uint16) << 2) | (raw[:, 200:, 1] & 3)   # disparitas, 1/16 px
dist_mm = np.where(d16 > 0, 262.5 * 54.45 * 16 / np.maximum(d16, 1), 0)
```

Indeks kamera (`0` di atas) bergantung pada laptop; `host/webcam.py` mencarinya sendiri. Jangan
memakai backend DirectShow: ia mengonversi warna dan merusak byte disparitas. Program lain yang
membaca kamera ini (aplikasi kamera Windows, OBS) melihat gambar yang benar secara visual, tetapi
hanya pembacaan mentah seperti di atas yang memberi disparitas tepat.

## Anggaran tapeout

Perkiraan biaya membuat chip irisan di shuttle Tiny Tapeout SKY26d (tutup 30 November 2026), sampai
diterima di Indonesia. Rincian, rumus, dan semua asumsi ada di
[`docs/anggaran_tapeout.xlsx`](docs/anggaran_tapeout.xlsx); ubah sel biru berlatar kuning di lembar
Asumsi (misalnya kurs saat membayar) dan seluruh anggaran ikut berubah.

| Pos | 1 IC | 2 IC |
|---|---|---|
| Desain 4x2, 8 petak x €70 (dibayar sekali) | €560 | €560 |
| Devkit (demo board + breakout berisi 1 chip), €300 | €300 | €600 |
| Ongkir Worldwide Economy, €15 per devkit | €15 | €30 |
| **Dibayar ke Tiny Tapeout** | **Rp 18.834.375** | **Rp 25.614.750** |
| Pajak impor (bea masuk 7,5%, PPN 11%, PPh 10% dengan NPWP) | Rp 2.039.198 | Rp 4.078.396 |
| Biaya kartu / selisih kurs (3%) | Rp 565.031 | Rp 768.443 |
| Papan interface ke EBAZ4205 | Rp 460.000 | Rp 660.000 |
| **Total dengan NPWP** | **Rp 21.898.604** | **Rp 31.121.588** |
| Total tanpa NPWP (PPh 20%) | Rp 22.627.494 | Rp 32.579.369 |
| di dalamnya: cadangan margin kenaikan kurs | Rp 1.020.886 | Rp 1.450.552 |

Kurs dasar Rp 20.500 per euro, ditambah margin kenaikan kurs 5%: semua konversi memakai
Rp 21.525 per euro. Margin ini cadangan bila rupiah melemah sebelum dibayar; devkit dibayar saat
memesan, sedangkan pajak impor baru dibayar saat chip tiba (sekitar Juni 2027). Besarnya bisa
diubah di lembar Asumsi. Tanpa margin, totalnya Rp 20.877.718 (1 IC) dan Rp 29.671.036 (2 IC).

Biaya desain hanya sekali: setiap devkit berisi satu chip bersama yang memuat irisan kita, dan
karena di chip itu hanya satu proyek aktif pada satu waktu, rantai 2 irisan butuh 2 chip fisik,
yaitu 2 devkit.

Yang perlu dicek sebelum memesan: harga dan ketersediaan 4x2 di kalkulator saat itu, harga early
bird (tidak dihitung), ongkir bila 2 devkit dikirim satu paket, tarif pajak terhadap PMK 50/2026,
dan pin EBAZ4205 untuk hub (17 + N pin; header DATA1 sampai DATA3 sudah terpakai, cek J3/J5).

Sumber:
[kalkulator Tiny Tapeout](https://app.tinytapeout.com/calculator?tiles=1&pcbs=1),
[jadwal shuttle](https://tinytapeout.com/chips/),
[FAQ Tiny Tapeout](https://tinytapeout.com/faq/),
[eeNews Europe](https://www.eenewseurope.com/en/tiny-tapeout-sees-industrial-boost-as-it-recovers-from-efabless-closure/),
[DDTC News: bea masuk barang kiriman](https://news.ddtc.co.id/berita/nasional/1808844/tarif-bea-masuk-produk-tertentu-disederhanakan-pelayanan-lebih-cepat),
[PMK 50/2026](https://jdih.kemenkeu.go.id/dok/pmk-50-tahun-2026/overview),
[DHL: de minimis 2026](https://www.dhl.com/discover/en-id/logistics-advice/import-export-advice/2026-de-minimis-shipping-rules),
[Janio: pajak impor Indonesia](https://www.janio.asia/resources/articles/tackling-indonesian-customs-clearance-procedures-for-ecommerce-merchants),
[kurs EUR/IDR](https://id.tradingeconomics.com/euridr:cur),
[JLCPCB](https://jlcpcb.com/). Diakses 14 Oktober 2026.

## Chip mandiri (die bebas, wire bonding)

Selain versi Tiny Tapeout, irisan yang sama disiapkan sebagai chip sendiri di `asic/chip`: kelima
modul irisan masing-masing menjadi satu makro persegi panjang, dikelilingi 32 pad IO sky130 untuk
wire bonding ke paket QFN-32 (5 x 5 mm, pitch 0,5 mm). Ukuran die tidak lagi mengikuti petak Tiny
Tapeout.

![Layout chip mandiri](asic/chip/out/layout_small.png)

### Logika lebih kecil, fungsi dan spesifikasi sama

| Modul | Awal (um2) | Akhir (um2) | Selisih |
|---|---|---|---|
| ctrl | 6.391 | 6.287 | -2% |
| cost | 37.013 | 27.180 | -27% |
| path | 7.498 | 6.539 | -13% |
| pick | 10.566 | 8.785 | -17% |
| up | 11.144 | 8.212 | -26% |
| **Total** | **72.613** | **57.003** | **-21,5%** |

Luas sel standar hasil sintesis (yosys + abc, sky130_fd_sc_hd), dihitung dengan
`asic/area/synth_stat.sh` dan `asic/chip/synth.sh`. Dua cara:

1. Clock gating otomatis (`clockgate` di yosys, sel `sky130_fd_sc_hd__dlclkp_1`): flip-flop yang
   berbagi enable mendapat satu clock gate bersama, bukan multiplexer per bit. RTL tidak berubah.
2. Offset sub-piksel di `rtl/mini/ms_up.v`: 17 pembanding diganti pembagian pendek (3 bit hasil
   ditambah batas jenuh). Versi lama dan baru dibandingkan untuk semua 2.097.152 masukan dan
   hasilnya identik (`rtl/tb/tb_subpixel_equiv.v`; versi lama di `asic/area/ms_up_orig.v`).
   Hasilnya disimpan satu clock lebih awal (`f_off_r`), sehingga pembagian punya satu clock penuh
   sebelum register output tepi turun; tanpa itu setup di corner lambat kurang 5,4 ns. Berkas
   ini juga dipakai FPGA; simulasi rantai penuh (`tb_depth_mini`) tetap identik dengan golden,
   29.600 piksel.

### Susunan dan rencana pin

Luas tiap makro = luas sintesis x 1,25 / 0,5; cost diberi 0,4 (lebih lebar, tinggi sama) karena
dengan buffer kawat dan diode antena routing-nya tidak konvergen pada 0,5. Susunan kolom
cost / path+ctrl / up+pick (`plan.py`). Die 1151 x 1151 um (1,32 mm2), ditentukan pad:

- antara dua pad gpio minimal 7 um (deep n-well menonjol 0,3 um, jarak antar deep n-well 6,3 um);
- di kiri setiap pad clamp 1,8 V ada 12 um kosong (overlay-nya menjorok 11,3 um);
- core mulai 40 um dari pad (met1 pad clamp 10,5 um ke dalam, cincin daya bebas dari bus pad).

Posisi setiap pin makro dihitung sebelum hardening (`pins.py`, dari sambungan bit demi bit di
`out/conn.txt`): pin yang tersambung ke makro sebelahnya diletakkan berhadapan dalam urutan
yang sama, sehingga kawatnya lurus melintasi kanal (`out/pins.png`); pin lain ke sisi yang
menghadap pasangannya, semuanya di track. Hasilnya diberikan ke OpenLane sebagai DEF template.
Panjang kawat rencana antarmakro dan pad turun dari 40,4 mm ke 17,7 mm, kawat hasil routing
tingkat chip dari 166 mm ke 79 mm, dan slack setup di corner lambat naik dari +0,39 ke +2,24 ns.

### Suplai cincin pad

Setiap bus cincin pad punya sumber, tanpa pad tambahan (QFN-32 tetap):

- VDDIO_Q dan VSSIO_Q diikat ke VDDIO dan VSSIO di dalam pad VDDIO / VSSIO (model PDK);
- VCCHIB ke VCCD dan VSWITCH ke VDDIO lewat slice PDK `connect_vcchib_vccd_and_vswitch_vddio`;
- VDDA ke VDDIO dan VSSA ke VSSIO lewat jumper met3 di bawah bus cincin (via3 hanya di dua bus
  yang disambung, seperti slice PDK), di celah antara pad clk dan rst_n;
- pad VCCD / VSSD tersambung ke cincin daya core lewat strap met3 dan via bertumpuk di cincin.

### Hasil

| Pemeriksaan | Hasil |
|---|---|
| 5 makro (OpenLane 2.3.10) | LVS cocok, Magic DRC 0, routing 0, antena 0, slew terburuk 1,37 ns (batas library 1,5 ns) |
| Routing chip (OpenROAD) | 0 pelanggaran |
| STA chip, 25 MHz, parasitik ekstraksi OpenRCX | setup +14,08 / +2,24 / +16,29 ns, hold +0,15 / +0,33 / +0,10 ns (tt / ss / ff) |
| LVS chip (Magic + netgen, makro dan sel IO sebagai abstrak) | Circuits match uniquely |
| DRC KLayout seluruh chip | core 0, pad ring 0; 4 `npc.2` di dalam makro cost dan up, yang bersih di Magic |
| DRC Magic seluruh chip | 0 di makro dan logika core; semua penanda ada di sel IO PDK |

Penanda Magic di sel IO berasal dari GDS sel IO PDK sendiri: satu `sky130_ef_io__gpiov2_pad`
yang diperiksa terpisah dengan aturan yang sama sudah memberi 2979 penanda (Magic juga
melaporkan boundary yang tidak tertutup dan layer yang tidak dikenal saat membacanya).

### Pinout dan wire bonding

| Pin QFN | Sinyal | Sisi die |
|---|---|---|
| 1-8 | `ui_in[0]` sampai `ui_in[7]` | kiri, atas ke bawah |
| 9-16 | VSSD, VCCD, `clk`, `rst_n`, VSSIO, VDDIO, VCCD2, VSSD2 | bawah, kiri ke kanan |
| 17-24 | `uo_out[0]` sampai `uo_out[7]` | kanan, bawah ke atas |
| 25-32 | `uio_in[0]` sampai `uio_in[7]` | atas, kanan ke kiri |

Koordinat bond pad dan lead serta panjang kawat (terpanjang 2165 um) ada di
[`asic/chip/out/bonding.md`](asic/chip/out/bonding.md) dan `bonding.csv`; gambarnya
`bonding.png`. Simbol xschem chip berpaket dan skematik pemakaian dengan dekopling 100 nF ada di
`asic/chip/out/xschem`; buka dari folder itu dengan `xschem -r xschemrc stereo_slice_chip_tb.sch`.

### Power-on reset dan urutan catu daya

Sinyal kontrol 3,3 V setiap pad (ENABLE_H, HLD_H_N dan lainnya) diikat ke TIE_HI_ESD / TIE_LO_ESD
pad itu sendiri: pad selalu aktif, tanpa rangkaian power-on reset (sky130 tidak punya sel POR
digital). Akibatnya papan harus:

- menaikkan VCCD (1,8 V) bersamaan dengan atau sebelum VDDIO (3,3 V), dan mematikannya sesudah;
- menahan `rst_n` rendah sampai kedua catu stabil dan beberapa siklus `clk` berjalan (misalnya
  dengan IC supervisor reset); reset masuk ke core lewat synchroniser dua flip-flop.

### Yang masih di luar alur ini

- LVS chip membandingkan sambungan tingkat atas; isi makro diperiksa LVS-nya sendiri, isi sel IO
  dan sel standar adalah milik PDK (PDK ini tidak menyertakan netlist SPICE sel IO).
- Bus mux analog (AMUXBUS_A / B) tidak dipakai dan dibiarkan mengambang.

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
| `docs/` | Protokol rantai irisan, anggaran tapeout |
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
| `tb_subpixel_equiv.v` | Offset sub-piksel lama (17 pembanding) dan baru (pembagian pendek) untuk semua 2.097.152 masukan |

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
| `uvc_format.py` | Format payload USB: data dummy, cara membacanya (`stereo uvc_format`) | tidak ada |
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
| `area/` | Luas per modul: `synth_stat.sh` (sintesis awal dan dengan clock gating), `breakdown.py` (rincian per jenis sel), `ms_up_orig.v` (sub-piksel versi lama) |
| `chip/plan.py` | Rencana chip mandiri: ukuran makro, susunan kolom, pad dan jaraknya, slice dan jumper suplai, ukuran die (`out/plan.*`) |
| `chip/pins.py` | Rencana pin makro dari sambungan chip (`out/conn.txt`): DEF template `out/pins/`, `out/pins.png`, `out/pins.json` |
| `chip/synth.sh` | Netlist gerbang kelima modul dengan clock gating (di WSL) |
| `chip/flow.py`, `chip/wsl_flow.sh` | Hardening kelima makro dengan OpenLane (di WSL) |
| `chip/padring.py` | Chip penuh: netlist pad, P&R, ekstraksi OpenRCX dan STA, LVS (Magic + netgen), GDS, DRC KLayout dan Magic, gambar (di WSL) |
| `chip/bonding.py` | Tabel dan gambar wire bonding QFN-32, simbol dan skematik xschem |
| `chip/out/stereo_slice_chip.gds.gz` | Layout chip penuh (gzip; `gunzip -k` untuk membukanya) |
| `chip/out/gds/` | Layout kelima makro |
| `chip/out/layout*.png`, `plan.png` | Gambar layout dan rencana susunan |
| `chip/out/bonding.*`, `xschem/` | Pinout dan wire bonding, simbol dan skematik xschem |
| `chip/out/sta.txt`, `lvs.txt`, `drc.md`, `mdrc.md`, `synth_area.txt` | Ringkasan timing, LVS, DRC KLayout dan Magic, luas sintesis |

### `calib/`, `sensor/`, `docs/`, `constraints/`, `scripts/`

| Berkas | Fungsi |
|---|---|
| `calib/stereo_cif.npz`, `.json` | Kalibrasi pada 400 x 296 |
| `calib/stereo_mini.npz`, `.json` | Turunannya untuk 200 x 148 |
| `calib/align_ref.json` | Acuan posisi kamera untuk cek pergeseran |
| `calib/*.pdf` | Pola papan catur dan ChArUco untuk dicetak |
| `sensor/ov2640_tables.tcl`, `gen_tables.py` | Tabel register OV2640 dan pembuatnya |
| `docs/matcher_mini_chain.md` | Protokol rantai irisan |
| `docs/anggaran_tapeout.xlsx` | Anggaran tapeout Tiny Tapeout 1 dan 2 IC: asumsi (bisa diubah), rincian, ringkasan, dan link sumber harga |
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
| Chip mandiri | `python asic/chip/plan.py`, lalu di WSL: `bash /mnt/d/stereo-depth-cam/asic/chip/synth.sh`, `python3 /mnt/d/stereo-depth-cam/asic/chip/pins.py`, `bash /mnt/d/stereo-depth-cam/asic/chip/wsl_flow.sh blocks`, `python3 /mnt/d/stereo-depth-cam/asic/chip/padring.py`; terakhir `python asic/chip/bonding.py` |
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
