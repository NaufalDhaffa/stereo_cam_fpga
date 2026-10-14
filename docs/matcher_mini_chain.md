# Matcher mini berantai untuk Tiny Tapeout (SkyWater 130 nm)

Status: RTL irisan dan hub sudah ada (`rtl/mini/`) dan di simulasi identik bit
demi bit dengan model Python untuk rantai 1, 2 dan 4 irisan. Belum disintesis
ke sel SkyWater dan belum diuji di papan.

## 1. Gagasan

Satu chip = satu **irisan** matcher: 16 disparitas berurutan, SGM satu arah
(kiri ke kanan), tanpa memori baris. N chip yang sama dirangkai menjadi satu
matcher dengan 16 x N disparitas. Sebuah **hub** (FPGA) menghitung census,
membagikan tanda tangan, dan mengembalikan beberapa nilai ke semua chip.

| Jumlah chip | Disparitas | Jangkauan pada 200 x 148 (perkiraan) | Jangkauan pada 400 x 296 (perkiraan) |
|---|---|---|---|
| 1 | 16 | 0,65 - 2 m | 1 - 2 m |
| 2 | 32 | 0,37 - 2 m | 0,63 - 2 m |
| 4 | 64 | 0,2 - 2 m | 0,37 - 2 m |

Chip tidak menyimpan apa pun sepanjang lebar gambar, jadi lebar gambar adalah
register, bukan ukuran chip.

## 2. Apa yang dikerjakan siapa

| Tempat | Pekerjaan |
|---|---|
| Hub (FPGA) | census kedua gambar; menunda tanda tangan kanan untuk tiap chip; meneruskan nilai balik (lihat 4); uji kiri-kanan (butuh memori 128 kata) |
| Setiap chip | biaya Hamming 16 disparitas, rata-rata 3 piksel, biaya jalur SGM, pemenang lokal, runner-up lokal, catatan pemenang gambar kanan |
| Chip teratas | menggabungkan hasil rantai: sub-piksel, uji keunikan, kode disparitas |

Semua chip identik. Posisi dalam rantai ditemukan sendiri (lihat 6).

## 3. Pin (24 pin Tiny Tapeout, semuanya terpakai)

| Pin | Arah | Isi |
|---|---|---|
| `clk` | masuk | clock bersama dari hub |
| `rst_n` | masuk | reset |
| `ui_in[6:0]` | masuk | bus turun dari hub, 7 bit data per clock (dipakai bersama semua chip) |
| `ui_in[7]` | masuk | `sync`: clock pertama sebuah bingkai |
| `uio[7:0]` | masuk | rantai naik, dari `uo_out` chip di bawahnya (chip terbawah: 0) |
| `uo_out[7:0]` | keluar | rantai naik, ke chip di atasnya (chip teratas: ke hub) |

Hub butuh 8 + 8 + 1 reset + N clock = 17 + N pin.

## 4. Nilai yang ditukar setiap piksel

Daftar ini lengkap: model yang hanya menukar nilai-nilai ini menghasilkan
keluaran yang identik dengan satu matcher utuh (lihat 8).

| Nilai | Bit | Jalur | Cara digabung |
|---|---|---|---|
| tanda tangan kiri | 45 | hub -> semua chip | - |
| tanda tangan kanan, ditunda untuk chip k | 45 | hub -> chip k | - |
| `gmin`: biaya jalur terendah piksel lalu, seluruh rantai | 7 | naik (minimum), lalu hub -> semua | minimum |
| biaya jalur di tepi atas jendela | 7 | naik, chip k -> chip k+1 | diganti tiap chip |
| biaya jalur di tepi bawah jendela | 7 x N | naik ke hub, lalu hub -> chip k-1 | daftar |
| pemenang: jumlah dan indeks | 8 + 7 | naik | yang lebih kecil; seri: indeks rendah |
| `kstar`: indeks pemenang piksel lalu | 7 | hub -> semua | - |
| runner-up di luar `kstar` +-1 | 9 | naik | minimum |
| jumlah di `kstar` - 1 dan `kstar` + 1 | 8 + 8 | naik | hanya satu chip yang mengisi |
| catatan pemenang gambar kanan | 9 + 7 | naik, chip k -> chip k+1 | diganti tiap chip |
| kode disparitas (dari chip teratas) | 12 | ke hub | - |

## 5. Bingkai dan waktu

Bus turun, satu bingkai per piksel, 7 bit per clock:

| Isi | Clock |
|---|---|
| kepala (jenis bingkai, awal baris) dengan `sync` = 1 | 1 |
| tanda tangan kiri piksel x | 7 |
| tanda tangan kanan untuk chip 0 .. N-1 | 7 x N |
| `gmin` dan `kstar` piksel x-1 | 2 |
| tepi atas tetangga untuk chip 0 .. N-1 | N |
| **jumlah** | **10 + 8 N** |

Rantai naik: sekitar 11 + N byte per piksel, lebih pendek daripada bingkai turun.
Chip menghitung satu disparitas per clock (16 clock per piksel), jadi logikanya
hanya satu unit biaya dan satu unit jalur; lambatnya bus membuat ini gratis.

Nilai balik (gmin, kstar, tepi) dikirim di awal bingkai berikutnya, sehingga
tanda tangan piksel berikutnya mengalir sementara chip masih menghitung. Satu
slot piksel = maks(10 + 8 N, 28 + 3 N) clock: suku pertama panjang bingkai
turun, suku kedua lamanya putaran balik (hitung 16 clock, rantai naik, hub).

| Chip | Clock per piksel | 200 x 148 pada 5 MHz | 200 x 148 pada 10 MHz |
|---|---|---|---|
| 1 | 31 | 5,4 fps | 11 fps |
| 2 | 34 | 5,0 fps | 10 fps |
| 4 | 42 | 4,0 fps | 8 fps |

Clock per slot adalah yang dipakai RTL di simulasi; fps dihitung darinya
(tanpa slot pembilas di akhir baris, yang menambah sekitar 16 N + 2 slot per baris).

## 6. Clock dan sinkronisasi

Satu clock lambat dari hub, bukan osilator di tiap chip. Osilator cincin di
dalam chip bisa dibuat, tetapi frekuensinya berbeda jauh antar-chip dan
berubah dengan suhu dan tegangan, sehingga setiap sambungan harus memakai
jabat tangan asinkron: lebih lambat, lebih rumit, dan sulit dibuktikan.

Empat hal yang membuat clock bersama aman lewat kabel jumper:

1. **Keluaran berubah di tepi turun, masukan dicuplik di tepi naik.** Setiap
   sambungan punya waktu setengah periode: 100 ns pada 5 MHz. Data Tiny
   Tapeout: keterlambatan bolak-balik paling buruk 20 ns, selisih antar-pin di
   bawah 2 ns, keterlambatan clock di dalam chip sampai 10 ns. Panjang kabel
   tidak perlu sama.
2. **Tidak ada frekuensi minimum.** Rancangannya statis; kalau ragu, clock
   diturunkan sampai bekerja, lalu dinaikkan.
3. **Penghitung waktu di tiap chip.** Setiap chip menghitung clock di dalam
   bingkai sendiri dan disetel ulang oleh `sync` pada setiap piksel, jadi tidak
   ada selisih yang menumpuk.
4. **Posisi rantai ditemukan sendiri.** Saat diam, tiap chip mengeluarkan
   `uio + 1`. Chip terbawah (masukan 0) menjadi posisi 0, berikutnya 1, dan
   seterusnya; hub membaca N di ujung atas. Dari posisinya chip tahu jendela
   disparitasnya (16 x posisi) dan berapa clock data dari bawah terlambat.

Yang tetap harus dijaga di kabel: satu kabel clock per papan langsung dari hub
(bukan disambung berantai), kabel ground di sebelahnya, dan resistor seri
sekitar 33 ohm di sisi hub agar tepi clock tidak memantul.

## 7. Register (lewat bingkai jenis "pengaturan", ke semua chip)

Disparitas terkecil (6 bit), P1 dan P2 (7 bit), ambang keunikan (4 bit),
lebar gambar (10 bit), jumlah chip (3 bit).

## 8. Bukti dan yang belum terbukti

| Hal | Status |
|---|---|
| Rantai 1 x 64, 2 x 32, 4 x 16, 8 x 8 identik dengan satu matcher 64 disparitas satu arah | Terbukti di model: 0 piksel berbeda dari 118.400, tiga adegan (`python -m stereo.chain data/scene_1013_b 1`) |
| Angka pin dan waktu Tiny Tapeout | Dari halaman spesifikasi mereka (pengukuran pada silikon TT 3.5) |
| Ukuran satu irisan | Sintesis FPGA: 656 flip-flop + 1.388 LUT, dengan larik kecil sebagai RAM/geser LUT. Di chip larik itu menjadi flip-flop: sekitar 1.900 flip-flop. Jumlah petak belum diketahui (belum disintesis ke sel SkyWater) |
| RTL irisan (`mini_slice.v`), puncak Tiny Tapeout (`tt_um_stereo_slice.v`), hub (`mini_hub.v`) | Simulasi `tb_mini` lewat puncak Tiny Tapeout, tanpa nilai awal: satu frame 400 x 296 identik dengan model untuk 4 x 16 dan 1 x 16 (adegan b) dan 2 x 16 (adegan c), 118.400 piksel masing-masing |
| Clock dari luar ke papan demo Tiny Tapeout | Belum dipastikan; papan demo biasanya memakai RP2040-nya sendiri |
| Pin bebas di EBAZ4205 | Kurang: 40 sinyal sudah terpakai (2 kamera, FX2); hub butuh 17 + N |
| Tegangan inti dan batas ukuran proyek di shuttle yang dituju | Belum dipastikan |

## 9. Urutan kerja

1. RTL irisan dan hub; empat irisan di dalam FPGA harus identik bit demi bit
   dengan model.
2. Sintesis irisan ke sel SkyWater: jumlah petak. Kalau lebih dari 16,
   tanda tangan census diperpendek atau irisan menjadi 8 disparitas.
3. Uji protokol pin di FPGA dengan clock lambat dan kabel jumper sungguhan
   antara dua papan FPGA atau lewat pin yang dilingkarkan.
4. Daftar ke shuttle Tiny Tapeout SkyWater.

## 10. Yang tidak berubah dari matcher mini

Satu arah SGM: hasilnya lebih kasar daripada rancangan penuh (dua arah).
Rantai memperbaiki jangkauan dan jarak palsu, bukan kekasaran itu.
