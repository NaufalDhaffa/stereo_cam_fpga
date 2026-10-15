#!/usr/bin/env python3
"""The two documents for a DTLST application (Desain Tata Letak Sirkuit Terpadu, UU 32/2000 and
PP 9/2006) for the stereo_slice_chip, built on the applicant's templates:

    python asic/chip/dtlst_docs.py [Uraian template.docx] [Gambar template.docx]

The templates give the page, margins, header and fonts; their content is replaced. Every number
comes from this repository's reports (asic/chip/out, the OpenLane runs, OpenSTA, KLayout, Magic,
netgen) as listed in the documents. Output: docs/dtlst/Uraian DTLST stereo_slice_chip.docx and
docs/dtlst/Gambar DTLST stereo_slice_chip.docx
"""
import copy
import os
import sys

import docx
from docx.enum.table import WD_TABLE_ALIGNMENT
from docx.enum.text import WD_ALIGN_PARAGRAPH, WD_BREAK
from docx.oxml import OxmlElement
from docx.oxml.ns import qn
from docx.shared import Cm, Pt
from PIL import Image, ImageDraw, ImageFont

ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
OUT = os.path.join(ROOT, "asic", "chip", "out")
MOD = os.path.join(OUT, "modules")
DOCS = os.path.join(ROOT, "docs", "dtlst")
FONT = "Courier New"
DOWNLOADS = os.path.join(os.path.expanduser("~"), "Downloads")


# ------------------------------------------------------------------ helpers
def clear_body(d):
    """Remove the template's content, keep the section (page, margins, header, footer)."""
    body = d.element.body
    for el in list(body):
        if el.tag != qn("w:sectPr"):
            body.remove(el)


def run_font(r, size, bold=False, italic=False):
    r.font.name = FONT
    r._element.get_or_add_rPr().get_or_add_rFonts().set(qn("w:eastAsia"), FONT)
    r.font.size = Pt(size)
    r.bold = bold
    r.italic = italic


class Writer:
    def __init__(self, d, size, num_ppr=None):
        self.d, self.size, self.num_ppr = d, size, num_ppr

    def para(self, text="", bold=False, align=WD_ALIGN_PARAGRAPH.JUSTIFY, indent=True, size=None, italic=False,
             space_after=0, keep_next=False):
        p = self.d.add_paragraph()
        pf = p.paragraph_format
        pf.alignment = align
        pf.line_spacing = 1.5
        pf.space_after = Pt(space_after)
        pf.space_before = Pt(0)
        if indent:
            pf.first_line_indent = Cm(1.27)
        if keep_next:
            pf.keep_with_next = True
        if text:
            # **bold** segments inside a paragraph
            parts = text.split("**")
            for k, part in enumerate(parts):
                if part:
                    run_font(p.add_run(part), size or self.size, bold=bold or k % 2 == 1, italic=italic)
        return p

    def head(self, text, size=None, align=WD_ALIGN_PARAGRAPH.JUSTIFY):
        return self.para(text, bold=True, align=align, indent=False, size=size, keep_next=True)

    def bullets(self, items):
        for t in items:
            p = self.para(t, indent=False)
            if self.num_ppr is not None:
                p._p.insert(0, copy.deepcopy(self.num_ppr))
                p.paragraph_format.alignment = WD_ALIGN_PARAGRAPH.JUSTIFY
                p.paragraph_format.line_spacing = 1.5
            else:
                p.paragraph_format.left_indent = Cm(1.27)
                p.paragraph_format.first_line_indent = Cm(-0.63)

    def table(self, rows, widths, size=9.5, header=True):
        t = self.d.add_table(rows=len(rows), cols=len(rows[0]))
        t.alignment = WD_TABLE_ALIGNMENT.CENTER
        borders = OxmlElement("w:tblBorders")
        for edge in ("top", "left", "bottom", "right", "insideH", "insideV"):
            e = OxmlElement(f"w:{edge}")
            e.set(qn("w:val"), "single")
            e.set(qn("w:sz"), "6")
            e.set(qn("w:color"), "000000")
            borders.append(e)
        t._tbl.tblPr.append(borders)
        for i, row in enumerate(rows):
            for j, val in enumerate(row):
                c = t.cell(i, j)
                c.width = Cm(widths[j])
                c.paragraphs[0].text = ""
                p = c.paragraphs[0]
                p.paragraph_format.line_spacing = 1.15
                p.paragraph_format.space_after = Pt(1)
                run_font(p.add_run(str(val)), size, bold=header and i == 0)
                if header and i == 0:
                    sh = OxmlElement("w:shd")
                    sh.set(qn("w:val"), "clear")
                    sh.set(qn("w:color"), "auto")
                    sh.set(qn("w:fill"), "E7E7E7")
                    c._tc.get_or_add_tcPr().append(sh)
        self.para("", indent=False)
        return t

    def figure(self, path, caption, width_cm, caption_size=None, sub=None, bold_caption=True):
        p = self.d.add_paragraph()
        p.paragraph_format.alignment = WD_ALIGN_PARAGRAPH.CENTER
        p.paragraph_format.keep_with_next = True
        p.paragraph_format.line_spacing = 1.0
        p.add_run().add_picture(path, width=Cm(width_cm))
        self.para(caption, bold=bold_caption, align=WD_ALIGN_PARAGRAPH.CENTER, indent=False, size=caption_size)
        if sub:
            self.para(sub, bold=bold_caption, align=WD_ALIGN_PARAGRAPH.CENTER, indent=False, size=caption_size)

    def page_break(self):
        p = self.d.add_paragraph()
        p.add_run().add_break(WD_BREAK.PAGE)


def page_footer(d, size):
    """'Halaman X dari Y' (PP 9/2006 Pasal 3 ayat (1) huruf a: nomor urut gambar dan jumlah halaman)."""
    footer = d.sections[0].footer
    p = footer.paragraphs[0] if footer.paragraphs else footer.add_paragraph()
    p.text = ""
    p.alignment = WD_ALIGN_PARAGRAPH.CENTER

    def field(code):
        r = p.add_run()
        run_font(r, size)
        b = OxmlElement("w:fldChar"); b.set(qn("w:fldCharType"), "begin")
        i = OxmlElement("w:instrText"); i.set(qn("xml:space"), "preserve"); i.text = code
        e = OxmlElement("w:fldChar"); e.set(qn("w:fldCharType"), "end")
        r._r.append(b); r._r.append(i); r._r.append(e)
    run_font(p.add_run("Halaman "), size)
    field("PAGE")
    run_font(p.add_run(" dari "), size)
    field("NUMPAGES")


def montage(paths, labels, out, height=900):
    ims = [Image.open(p).convert("RGB") for p in paths]
    ims = [im.resize((int(im.width * height / im.height), height)) for im in ims]
    pad, top = 40, 70
    W = sum(im.width for im in ims) + pad * (len(ims) + 1)
    canvas = Image.new("RGB", (W, height + top + pad), "white")
    d = ImageDraw.Draw(canvas)
    try:
        f = ImageFont.truetype("DejaVuSans-Bold.ttf", 40)
    except OSError:
        try:
            f = ImageFont.truetype("arialbd.ttf", 40)
        except OSError:
            f = ImageFont.load_default()
    x = pad
    for im, lab in zip(ims, labels):
        canvas.paste(im, (x, top))
        d.text((x + im.width / 2, top / 2), lab, fill="black", font=f, anchor="mm")
        x += im.width + pad
    canvas.save(out)
    return out


# ------------------------------------------------------------------ facts (from the reports)
F = dict(
    die="1.151 × 1.151 µm", die_mm2="1,3248 mm²", core="635,07 × 635,07 µm (0,4033 mm²)",
    block="458,14 × 414,00 µm (0,1897 mm²)",
)
MACROS = [  # name, function, size um, synth cells, FF, ICG, synth area um2, instances, fill, wire um, power mW, IR mV, setup ws, hold ws
    ("slice_ctrl", "penerima down-link, register pengaturan, pencacah slot dan bendera", "86,02 × 182,24", 549, 174, 10, "6.287,3", 869, "67,2", "21.662", "0,356", "0,052", "+23,74", "+0,117"),
    ("slice_cost", "riwayat 16 tanda tangan kanan, biaya Hamming, rata-rata tiga piksel", "218,50 × 388,96", 1984, 957, 17, "27.179,8", 4558, "52,0", "101.416", "4,465", "0,648", "−0,27*", "+0,142"),
    ("slice_path", "biaya jalur SGM kiri-ke-kanan, minimum, jumlah terkecil", "86,02 × 190,40", 642, 138, 18, "6.538,8", 1075, "69,8", "31.404", "0,842", "0,154", "+1,00", "+0,134"),
    ("slice_pick", "runner-up, jumlah di samping pemenang, pemenang berjalan citra kanan", "114,08 × 193,12", 759, 279, 16, "8.784,7", 1336, "61,9", "31.843", "0,265", "0,031", "+26,45", "+0,085"),
    ("slice_up", "rantai naik, offset sub-piksel, uji keunikan, register keluaran", "113,62 × 179,52", 1077, 102, 9, "8.211,6", 1676, "66,4", "35.408", "1,337", "0,200", "+2,40", "+0,160"),
]


# ------------------------------------------------------------------ Uraian
def uraian(template, out):
    d = docx.Document(template)
    num_ppr = None
    for p in d.paragraphs:
        if p._p.pPr is not None and p._p.pPr.numPr is not None:
            num_ppr = copy.deepcopy(p._p.pPr)
            break
    clear_body(d)
    page_footer(d, 10)
    w = Writer(d, 12, num_ppr)
    C = WD_ALIGN_PARAGRAPH.CENTER

    w.para("", indent=False)
    w.head("DESAIN TATA LETAK SIRKUIT TERPADU", align=C)
    w.head("IRISAN PENCOCOK STEREO (STEREO MATCHER SLICE) BERBASIS TANDA TANGAN CENSUS DAN SEMI-GLOBAL MATCHING UNTUK KAMERA KEDALAMAN: stereo_slice_chip", align=C)
    w.para("", indent=False)

    # 1 -------------------------------------------------------------
    w.head("Uraian Desain Tata Letak Sirkuit Terpadu")
    w.para("Desain tata letak sirkuit terpadu ini adalah stereo_slice_chip, yaitu satu irisan (slice) dari mesin pencocok "
           "stereo yang dapat dirangkai. Satu irisan menghitung 16 disparitas berurutan untuk setiap piksel dengan metode "
           "pencocokan tanda tangan census dan semi-global matching (SGM) satu arah. Beberapa irisan identik yang dirangkai "
           "di belakang satu hub berperilaku persis seperti satu pencocok dengan 16 × N disparitas, sehingga rentang "
           "kedalaman yang dapat diukur bertambah dengan menambah chip, tanpa mengubah desain.")
    w.para("Sirkuit terpadu ini dirancang untuk sistem kamera kedalaman stereo yang telah berjalan pada papan EBAZ4205 "
           "(Zynq XC7Z010): dua kamera OV2640, ujung depan pengolahan citra di FPGA, dan keluaran ke komputer sebagai kamera "
           "USB. Rantai irisan yang sama telah berjalan di FPGA, dan hasilnya identik bit demi bit dengan model perangkat lunak "
           "(29.600 piksel per gambar, simulasi rantai penuh tb_depth_mini). Desain tata letak ini memindahkan irisan tersebut "
           "ke silikon sebagai chip mandiri dengan cincin pad untuk wire bonding ke paket QFN-32.")
    w.para("Desain menggunakan teknologi SkyWater sky130A (130 nm, tegangan inti 1,8 V, tegangan IO 3,3 V) dengan pustaka "
           "sel standar sky130_fd_sc_hd dan sel IO sky130_ef_io. Die berukuran " + F["die"] + " (" + F["die_mm2"] + "), "
           "dengan 32 pad: 26 pad sinyal dan 6 pad suplai.")

    # 2 -------------------------------------------------------------
    w.head("Kedudukan dalam Sistem dan Jalur Data")
    w.para("Jalur data dari kamera sampai keluaran kedalaman (Gambar 1) terbagi antara FPGA dan chip:")
    w.bullets([
        "Pengambilan (cam_capture, 200 MHz): setiap pin DVP kamera dicuplik 200 MHz; byte RGB565 diambil selama HREF tinggi, "
        "dan awal frame dicatat untuk menyelaraskan kedua kamera (genlock).",
        "Luma dan binning (luma_tap, luma_bin2): Y = (77R + 150G + 29B) >> 8, lalu rata-rata 2 × 2 menjadi citra 200 × 148 "
        "piksel per kamera.",
        "Line memory buffer (rect_linebuf): setiap kamera memiliki cincin 16 baris terakhir di block RAM dua-clock (tulis "
        "200 MHz, baca 25 MHz). Jumlah baris yang sudah lengkap dikirim ke domain 25 MHz dalam kode Gray, sehingga penjadwal "
        "hanya memulai baris keluaran bila semua baris sumber yang dibutuhkan rektifikasi sudah tersedia di kedua cincin.",
        "Rektifikasi (rectify): koordinat sumber dalam 1/16 piksel dari tabel simpul setiap 16 piksel, interpolasi bilinear; "
        "setelahnya titik yang sama di dunia berada pada baris yang sama di kedua citra.",
        "Census (census): penghalusan 3 × 3, lalu jendela 9 baris × 17 kolom dengan tetangga setiap 2 piksel, menghasilkan "
        "tanda tangan 44 bit (satu bit per tetangga: 1 bila tetangga lebih gelap dari pusat) dan satu bit valid.",
        "FIFO dan hub (chain_hub): satu baris tanda tangan ditampung di FIFO 256 entri; untuk setiap piksel hub mengirim "
        "bingkai bus turun 7 bit per clock ke semua irisan, termasuk tanda tangan kanan yang ditunda sesuai jendela tiap "
        "irisan, dan menerima hasil dari irisan teratas untuk uji kiri-kanan.",
        "Rantai irisan (chip ini): menghitung biaya, agregasi SGM, pemenang, runner-up, dan offset sub-piksel, lalu "
        "meneruskan catatan melalui rantai naik ke irisan di atasnya.",
    ])
    w.para("Pembagian ini menentukan pengelolaan memori: chip sama sekali tidak menyimpan citra maupun baris citra. Seluruh "
           "line memory berada di FPGA (cincin 16 baris per kamera), dan hub yang menunda tanda tangan kanan untuk jendela "
           "disparitas setiap irisan. Di dalam chip hanya terdapat larik kecil 16 entri yang disusun dari flip-flop, yaitu "
           "tanda tangan kanan yang sedang dicocokkan, riwayat biaya, biaya jalur, dan catatan pemenang. Dengan demikian luas "
           "chip ditentukan oleh logika pencocokan, bukan oleh memori, dan seluruh rancangan bekerja pada satu domain clock "
           "25 MHz.")

    # 3 -------------------------------------------------------------
    w.head("Modul dan Submodul")
    w.para("Irisan (rtl/mini/mini_slice.v) terdiri atas lima blok. Setiap blok adalah modul tersendiri yang dikeraskan "
           "menjadi satu makro persegi panjang (Gambar 2 dan Gambar 3). Bilangan di bawah ini berasal dari laporan sintesis "
           "Yosys 0.46 (sel, flip-flop, integrated clock gate) dan dari metrik OpenLane 2.3.10 setelah routing.")
    w.para("**slice_ctrl (penerima down-link dan kendali).** Mencuplik bus turun 7 bit dan bit sinkron frame pada tepi naik "
           "clock, mengurai bingkai per slot piksel (kepala, nilai balik piksel sebelumnya gmin dan kstar, biaya tepi jendela, "
           "tanda tangan kiri, dan tanda tangan kanan untuk irisan ini), menyimpan pengaturan P1, P2, ambang keunikan, dan "
           "jumlah irisan N dari bingkai pengaturan, lalu membangkitkan pencacah slot, sinyal load, scan (16 clock, satu "
           "disparitas per clock), indeks j, dan bendera piksel. Saat belum ada bingkai piksel, setiap irisan menampilkan "
           "nilai irisan di bawahnya ditambah satu, sehingga rantai menomori dirinya sendiri. Sintesis: 549 sel, 174 flip-flop, "
           "10 clock gate.")
    w.para("**slice_cost (biaya Hamming).** Menyimpan 16 tanda tangan kanan terakhir (rs[j] adalah kandidat disparitas awal "
           "jendela + j, 16 × 44 bit) beserta bit validnya, menghitung jarak Hamming tanda tangan kiri terhadap rs[j] (XOR 44 "
           "bit lalu penjumlahan bit, Gambar 9), dan merata-ratakan biaya atas tiga piksel berurutan pada baris yang sama "
           "(riwayat 16 × 12 bit). Biaya 6 bit dikirim ke slice_path. Blok ini adalah blok terbesar: 1.984 sel, 957 flip-flop, "
           "17 clock gate.")
    w.para("**slice_path (biaya jalur SGM).** Menghitung biaya jalur kiri-ke-kanan L(x, d) = C(x, d) + min(L(x−1, d), "
           "L(x−1, d±1) + P1, gmin + P2) − gmin, dibatasi 127, dengan nilai tepi jendela yang datang dari irisan tetangga. "
           "Blok ini juga mencari biaya jalur terkecil, jumlah terkecil beserta indeksnya, serta biaya di kedua ujung jendela "
           "untuk irisan di atas dan di bawahnya. Sintesis: 642 sel, 138 flip-flop, 18 clock gate.")
    w.para("**slice_pick (pemenang dan runner-up).** Untuk piksel sebelumnya mencatat runner-up di luar pemenang ±1 dan jumlah "
           "di samping pemenang (untuk interpolasi sub-piksel), serta memelihara rantai pemenang berjalan citra kanan yang "
           "bergeser satu disparitas per piksel (untuk uji kiri-kanan di hub). Sintesis: 759 sel, 279 flip-flop, 16 clock gate.")
    w.para("**slice_up (rantai naik dan sub-piksel).** Menggabungkan nilai irisan ke catatan rantai naik (satu clock per "
           "irisan), menyimpan catatan dari irisan di bawahnya, dan pada irisan teratas menyelesaikan piksel sebelumnya: uji "
           "keunikan (runner-up − terbaik) × 16 ≥ runner-up × ambang, serta offset sub-piksel melalui parabola lewat dua "
           "tetangga pemenang dengan resolusi 1/16 piksel. Keluaran uo diregister pada tepi turun clock. Sintesis: 1.077 sel, "
           "102 flip-flop, 9 clock gate.")
    w.para("**Logika di tingkat atas.** Synchroniser reset dua flip-flop dari pad rst_n, pohon clock (12 buffer clkbuf_16 dan "
           "1 inverter), 71 buffer hold pada kawat antarmakro, 27 sel tie untuk sinyal kendali pad, serta 21.363 sel fill, decap, "
           "dan tap yang menutup baris sel.")
    w.para("**Cincin pad.** 26 pad gpiov2 (8 ui_in, 8 uio_in, 8 uo_out, clk, rst_n), 6 pad suplai (dua VCCD, dua VSSD, VDDIO, "
           "VSSIO), 4 sel pojok, 113 sel pengisi cincin, satu slice penghubung PDK yang mengikat VCCHIB ke VCCD dan VSWITCH ke "
           "VDDIO, serta dua jumper met3 yang mengikat VDDA ke VDDIO dan VSSA ke VSSIO. Masukan dicuplik pada tepi naik dan "
           "keluaran berubah pada tepi turun, sehingga setiap sambungan antarchip memiliki setengah periode clock, berapa pun "
           "panjang kawatnya.")
    w.table([["Makro", "Fungsi", "Ukuran (µm)", "Sel", "FF", "ICG", "Luas sintesis (µm²)", "Isi (%)"]] +
            [[m[0], m[1], m[2], f"{m[3]:,}".replace(",", "."), m[4], m[5], m[6], m[8]] for m in MACROS] +
            [["Total", "", "", "5.011", "1.650", "70", "57.002,2", ""]],
            [2.3, 5.0, 2.6, 1.1, 1.1, 1.0, 2.0, 1.2], size=8)

    # 4 -------------------------------------------------------------
    w.head("Fungsi, Kebaruan, dan Keunikan Tata Letak")
    w.para("Strategi tata letak disusun dari skrip fisik proyek (asic/chip/plan.py, pins.py, flow.py, padring.py) dan "
           "diverifikasi dengan laporan OpenROAD, OpenSTA, KLayout, Magic, dan netgen. Ciri yang membedakannya adalah sebagai "
           "berikut.")
    w.para("**Satu modul, satu makro persegi panjang.** Setiap blok fungsional dikeraskan sebagai makro sendiri dengan ukuran "
           "yang dihitung dari luas sintesisnya (luas × 1,25 cadangan untuk buffer dan pohon clock, dibagi target isi 50 %; "
           "40 % untuk slice_cost). Susunan kolom cost | path di atas ctrl | up di atas pick dipilih oleh pencarian yang "
           "menilai panjang kawat antarmakro, jarak ke pad, dan kedekatan bentuk blok ke persegi. Hasilnya, batas setiap "
           "fungsi terlihat jelas pada layout (Gambar 4 dan Gambar 6), dan setiap makro dapat diperiksa (DRC, LVS, STA) secara "
           "terpisah.")
    w.para("**Posisi pin yang direncanakan dari konektivitas.** Posisi setiap pin makro dihitung sebelum hardening dari "
           "sambungan chip bit demi bit: pin yang tersambung ke makro tetangga diletakkan berhadapan dalam urutan yang sama, "
           "sehingga setiap sambungan menjadi kawat lurus melintasi kanal antarmakro (Gambar 5). Rencana ini diberikan ke "
           "OpenLane sebagai DEF template. Panjang kawat rencana (half-perimeter) antarmakro dan pad turun dari 40,4 mm "
           "menjadi 17,7 mm; kawat hasil routing tingkat atas turun dari 166 mm menjadi 80,2 mm; dan slack setup pada corner "
           "lambat naik dari +0,39 ns menjadi +2,24 ns.")
    w.para("**Pengurangan logika dengan fungsi yang sama.** Clock gating otomatis (70 integrated clock gate menggantikan "
           "multiplexer per bit) dan pembagian pendek untuk offset sub-piksel menggantikan 17 pembanding. Kesamaan fungsi "
           "diperiksa secara menyeluruh untuk 2.097.152 kombinasi masukan, dan simulasi rantai penuh tetap identik dengan "
           "acuan. Luas sel standar turun 21,5 % dari 72.613 µm² menjadi 57.002 µm².")
    w.para("**Aturan cincin pad dari analisis DRC.** Jarak antar pad gpio minimal 7 µm (deep n-well pad menonjol 0,3 µm dan "
           "jarak deep n-well minimal 6,3 µm), ruang 12 µm di kiri setiap pad clamp 1,8 V (overlay-nya menjorok 11,3 µm), dan "
           "core dimulai 40 µm dari pad sehingga logam met1 pad clamp dan cincin daya core tidak saling menyentuh. Dengan "
           "aturan ini DRC KLayout pada core dan cincin pad bernilai nol.")
    w.para("**Distribusi daya.** Cincin daya core VCCD/VSSD pada met4 dan met5 (lebar 10 µm, jarak 3 µm), strap met4 tegak "
           "dan met5 mendatar setiap 60 µm, rail met1 pada setiap baris sel, dan PDN makro berupa strap met4 setiap 40 µm "
           "yang disambung ke strap met5 tingkat atas. Pad VCCD dan VSSD disambung ke cincin dengan strap met3 dan via "
           "bertumpuk via3/via4 yang diletakkan di dalam cincin, jauh dari pad. Setiap bus cincin pad memiliki sumber: "
           "VDDIO_Q dan VSSIO_Q di dalam pad VDDIO/VSSIO, VCCHIB dan VSWITCH melalui slice penghubung PDK, serta VDDA dan VSSA "
           "melalui jumper met3 yang meniru pola slice PDK.")
    w.para("**Pemanfaatan area (faktual).** Isi sel pada makro 52,0 % sampai 69,8 % (Tabel di atas). Luas instance sel standar "
           "seluruh makro 83.130 µm², yaitu 43,8 % dari blok makro (" + F["block"] + "), 20,6 % dari area di dalam cincin pad "
           "(" + F["core"] + "), dan 6,3 % dari die. Die ditentukan oleh 32 pad (sisi yang memuat 8 pad gpio dengan jarak 7 µm "
           "dan 2 sel pojok), bukan oleh logika, sehingga isi makro dapat dibuat longgar untuk routing yang bersih tanpa "
           "menambah luas die.")
    w.para("Unsur-unsur yang berasal dari PDK sky130 terbuka (sel standar dan sel IO) tidak diklaim sebagai kreasi. Yang "
           "dimohonkan perlindungan adalah peletakan tiga dimensi keseluruhan: susunan dan bentuk kelima makro, penempatan dan "
           "interkoneksi sel di dalamnya, rencana pin, cincin pad dengan aturan jaraknya, distribusi daya, serta interkoneksi "
           "tingkat atas (UU No. 32 Tahun 2000 Pasal 1 angka 2 dan Pasal 2).")

    # 5 -------------------------------------------------------------
    w.head("Spesifikasi")
    spec = [
        ["Parameter", "Nilai", "Sumber"],
        ["Ukuran layout (die)", F["die"] + " = " + F["die_mm2"], "plan.json, DEF chip"],
        ["Area di dalam cincin pad", F["core"], "padring.py"],
        ["Blok makro", F["block"], "plan.json"],
        ["Teknologi", "SkyWater sky130A 130 nm; inti 1,8 V, IO 3,3 V; sky130_fd_sc_hd, sky130_ef_io", "PDK"],
        ["Paket", "QFN-32 5 × 5 mm, pitch 0,5 mm; 26 sinyal + 6 suplai; kawat bond terpanjang 2.165 µm", "bonding.md"],
        ["Jumlah sel (sintesis)", "5.011 sel standar; 1.650 flip-flop; 70 integrated clock gate; 57.002 µm²", "Yosys 0.46"],
        ["Jumlah instance tingkat atas", "5 makro, 32 pad, 4 pojok, 113 pengisi cincin, 114 sel logika, 21.363 fill/decap/tap", "DEF chip"],
        ["Frekuensi kerja", "25 MHz (periode 40 ns), satu domain clock", "chip.sdc"],
        ["Slack setup / hold", "tt +14,08 / +0,15 ns; ss +2,24 / +0,33 ns; ff +16,29 / +0,10 ns", "OpenSTA + OpenRCX"],
        ["Throughput", "1 disparitas per clock; 16 disparitas per irisan per slot piksel (31 clock untuk 1 irisan, 34 untuk 2 irisan)", "RTL, README"],
        ["Daya dinamis (estimasi)", "7,36 mW pada 25 MHz, corner tt (makro 7,27 mW + tingkat atas 0,09 mW)", "OpenSTA, aktivitas bawaan"],
        ["Daya bocor", "≈ 0,09 µW", "OpenSTA"],
        ["IR drop makro terburuk", "0,648 mV (0,036 % dari 1,8 V), slice_cost", "OpenROAD PSM"],
        ["Jumlah layer interkoneksi", "6 (li1, met1, met2, met3, met4, met5); makro sampai met4, tingkat atas met1–met5", "konfigurasi alur"],
        ["Panjang kawat", "makro 221,7 mm + tingkat atas 80,2 mm ≈ 301,9 mm; via tingkat atas 2.813", "OpenROAD"],
        ["DRC", "KLayout: core 0, cincin pad 0; Magic: 0 pada setiap makro", "sky130A_mr.drc, Magic 8.3"],
        ["LVS", "chip: Circuits match uniquely; setiap makro: 0 kesalahan", "netgen"],
        ["Antena", "0 net melanggar pada kelima makro", "OpenROAD"],
    ]
    w.table(spec, [4.3, 7.8, 3.3], size=8.5)

    w.head("Ukuran Layout")
    w.para("Die berukuran " + F["die"] + " (" + F["die_mm2"] + "). Di dalamnya terdapat cincin pad selebar 217,965 µm dari "
           "tepi die (20 µm seal ditambah tinggi pad 197,965 µm), ruang 40 µm, lalu area core " + F["core"] + " yang memuat blok "
           "makro " + F["block"] + " di tengahnya.")
    w.head("Teknologi")
    w.para("SkyWater sky130A (130 nm) dengan pustaka sel standar sky130_fd_sc_hd dan sel IO sky130_ef_io; tegangan inti "
           "VCCD 1,8 V dan tegangan IO VDDIO 3,3 V.")
    w.head("Konsumsi Daya / Power Consumption")
    w.para("Estimasi OpenSTA pada corner tt (25 °C, 1,8 V) dan 25 MHz adalah 7,36 mW: slice_cost 4,47 mW, slice_up 1,34 mW, "
           "slice_path 0,84 mW, slice_ctrl 0,36 mW, slice_pick 0,26 mW, dan pohon clock tingkat atas 0,09 mW. Estimasi ini "
           "bersifat vectorless (aktivitas masukan bawaan dirambatkan ke seluruh rangkaian), sehingga merupakan perkiraan "
           "batas atas yang wajar, bukan hasil pengukuran. Nilai yang lebih tepat memerlukan aktivitas dari simulasi tingkat "
           "gerbang (VCD/SAIF). Daya bocor sekitar 0,09 µW. Daya pad IO tidak termasuk.")
    w.head("Kecepatan dan Efisiensi")
    w.para("Setiap irisan mengevaluasi satu disparitas per clock: 16 disparitas per piksel dalam slot 31 clock (satu irisan) "
           "atau 34 clock (dua irisan). Pada rantai dua irisan, satu gambar 200 × 148 piksel selesai dalam 52,2 ms, lebih cepat "
           "dari periode frame kamera 66,7 ms (15 fps), menurut simulasi rantai penuh. Seluruh 1.650 flip-flop dikendalikan "
           "70 clock gate, sehingga register hanya diclock saat nilainya berubah.")
    w.head("Jumlah Layer")
    w.para("Enam layer interkoneksi sky130 dipakai: li1 (di dalam sel), met1, met2, met3, met4, dan met5. Routing di dalam "
           "makro dibatasi sampai met4 karena met5 dipakai tingkat atas; routing tingkat atas memakai met1 sampai met5. "
           "Distribusi daya: rail met1 per baris sel, strap met4 makro setiap 40 µm, cincin core met4/met5 selebar 10 µm, dan "
           "strap met4/met5 tingkat atas setiap 60 µm.")
    w.head("Kinerja")
    w.para("Dari 1.650 flip-flop, 957 (58 %) berada di slice_cost untuk riwayat tanda tangan dan biaya; sisanya untuk biaya "
           "jalur, catatan pemenang, kendali, dan rantai naik. Aritmetika pencocokan, yaitu XOR dan penjumlahan bit untuk jarak "
           "Hamming, rata-rata tiga piksel, dan agregasi SGM, menempati sebagian besar dari 5.011 sel.")
    w.head("Frekuensi")
    w.para("Analisis waktu statis OpenSTA dengan parasitik hasil ekstraksi OpenRCX dan model waktu setiap makro (pasca-"
           "routing) memenuhi 25 MHz pada ketiga corner: setup +14,08 ns (tt), +2,24 ns (ss, 100 °C, 1,60 V), dan +16,29 ns (ff), "
           "serta hold +0,15 ns, +0,33 ns, dan +0,10 ns. Dengan slack terburuk tingkat chip, periode minimum diperkirakan "
           "sekitar 37,8 ns pada corner ss (≈ 26,5 MHz) dan 25,9 ns pada corner tt (≈ 38,6 MHz); angka ini hanya indikasi. "
           "*Slack −0,27 ns pada slice_cost diukur dengan anggaran waktu masukan dan keluaran 20 % yang diasumsikan OpenLane "
           "di sekitar makro; jalur yang sebenarnya diperiksa utuh pada STA tingkat chip dan memenuhi waktu.")
    w.head("Routing")
    w.para("Routing detail kelima makro dan tingkat chip selesai dengan 0 pelanggaran. Panjang kawat: slice_ctrl 21,7 mm, "
           "slice_cost 101,4 mm, slice_path 31,4 mm, slice_pick 31,8 mm, slice_up 35,4 mm, dan tingkat atas 80,2 mm "
           "(2.813 via). Router tingkat atas dijauhkan dari badan pad dengan blokade routing di cincin pad dan abstraksi tepi pad "
           "gpio, sehingga sambungan ke pad terjadi di tepi sisi core.")

    # 6 -------------------------------------------------------------
    w.head("Analisis Integritas dan Validasi Pasca-Layout")
    w.para("Bagian ini melengkapi hal-hal yang lazim dibutuhkan untuk menilai sebuah desain tata letak namun tidak terdapat "
           "pada kerangka dokumen awal.")
    w.para("**IR drop dan integritas daya.** Analisis IR drop OpenROAD (PSM) pada setiap makro memberi penurunan tegangan "
           "terburuk 0,648 mV pada slice_cost (rata-rata 0,024 mV), 0,200 mV pada slice_up, 0,154 mV pada slice_path, 0,052 mV "
           "pada slice_ctrl, dan 0,031 mV pada slice_pick, seluruhnya di bawah 0,04 % dari 1,8 V. Analisis di tingkat chip "
           "tidak dapat dijalankan karena sambungan bond pad ke bus suplai berada di dalam sel pad PDK yang dimodelkan sebagai "
           "kotak hitam; arus total yang kecil (sekitar 4,1 mA pada 1,8 V, dibagi dua pad VCCD) dan cincin met4/met5 selebar "
           "10 µm memberikan margin yang besar.")
    w.para("**Crosstalk.** Alur ini tidak mencakup analisis integritas sinyal (OpenSTA tidak menghitung derau kopling). "
           "Desainnya mengurangi risiko kopling: kawat antarmakro pendek dan lurus berkat rencana pin, pin makro ditempatkan "
           "pada setiap track kedua sehingga ada satu track kosong di antara tetangga, dan antarmuka antarchip memiliki margin "
           "setengah periode clock. Analisis derau kopling dengan alat SI disarankan sebelum produksi.")
    w.para("**Batasan termal.** Kerapatan daya 7,36 mW / 1,3248 mm² ≈ 5,6 mW/mm² (0,56 W/cm²). Dengan asumsi resistansi termal "
           "khas paket QFN-32 5 × 5 mm berpad terbuka sebesar 35–40 °C/W, kenaikan suhu sambungan diperkirakan sekitar 0,3 °C "
           "di atas suhu lingkungan, sehingga tidak diperlukan pendinginan khusus.")
    w.para("**Elektromigrasi.** Arus suplai total sekitar 4,1 mA dibagi dua pad VCCD dan disebarkan melalui cincin 10 µm "
           "serta strap 60 µm, sehingga kerapatan arus jauh di bawah batas logam sky130.")
    w.para("**Antena.** Kelima makro bernilai 0 net melanggar setelah perbaikan antena global router dengan margin 50 %, "
           "buffer setiap 100–150 µm pada kawat panjang, dan dioda pada setiap masukan makro.")
    w.para("**Validasi pasca-layout.** STA multi-corner (tt, ss, ff) dengan parasitik OpenRCX; LVS hierarkis tingkat chip "
           "dengan netgen (Circuits match uniquely) dan LVS setiap makro; DRC KLayout (deck sky130A_mr) dan Magic; serta "
           "simulasi fungsional rantai penuh yang identik bit demi bit dengan acuan. Penanda DRC Magic seluruhnya berada di "
           "dalam sel IO PDK: satu sel gpiov2_pad yang diperiksa tersendiri dengan aturan yang sama sudah memberikan 2.979 "
           "penanda. Empat penanda npc.2 KLayout di dalam slice_cost (3) dan slice_up (1) terdapat pada sel standar yang "
           "bersebelahan dan bersih pada DRC Magic.")
    w.para("**Urutan catu daya dan reset.** Sinyal kendali 3,3 V setiap pad diikat ke TIE_HI_ESD/TIE_LO_ESD pad itu sendiri, "
           "sehingga pad selalu aktif dan tidak terdapat rangkaian power-on reset (sky130 tidak menyediakan sel POR digital). "
           "Papan harus menaikkan VCCD bersamaan dengan atau sebelum VDDIO, dan menahan rst_n rendah sampai kedua catu stabil; "
           "reset masuk ke core melalui synchroniser dua flip-flop.")

    # 7 -------------------------------------------------------------
    w.head("Dasar Penyusunan dan Kelengkapan Permohonan")
    w.para("Dokumen ini disusun mengacu pada UU No. 32 Tahun 2000 tentang Desain Tata Letak Sirkuit Terpadu, PP No. 9 Tahun 2006 "
           "tentang Tata Cara Permohonan Pendaftaran DTLST, serta Persetujuan TRIPS Pasal 35–38 yang memberlakukan Traktat "
           "Washington (IPIC, 1989). Hak DTLST diberikan untuk desain yang orisinal, yaitu hasil karya mandiri pendesain yang "
           "tidak umum bagi para pendesain pada saat dibuat (UU 32/2000 Pasal 2), dengan jangka perlindungan 10 tahun sejak "
           "eksploitasi komersial pertama atau Tanggal Penerimaan (Pasal 4). Satu permohonan hanya untuk satu desain (Pasal 11).")
    w.table([
        ["Kelengkapan (PP 9/2006)", "Status"],
        ["Formulir permohonan rangkap tiga (Pasal 2)", "Diisi pemohon"],
        ["Salinan gambar dengan nomor urut, jumlah halaman, dan keterangan (Pasal 3 ayat (1) huruf a)", "Dokumen Gambar DTLST"],
        ["Uraian yang menjelaskan desain (Pasal 3 ayat (1) huruf a)", "Dokumen ini"],
        ["Surat pernyataan orisinalitas (Pasal 3 ayat (1) huruf c)", "Disiapkan pemohon"],
        ["Surat kuasa khusus, bila melalui konsultan KI (huruf b)", "Bila ada"],
        ["Keterangan eksploitasi komersial pertama (huruf d)", "Belum dieksploitasi"],
        ["Bukti pembayaran biaya (huruf e)", "Disiapkan pemohon"],
    ], [11.0, 4.4], size=8.5)

    # 8 -------------------------------------------------------------
    w.head("Uraian Singkat Gambar")
    figs = [
        (os.path.join(OUT, "system_diagram.png"), 15.0,
         "Gambar 1 memperlihatkan diagram blok tingkat sistem. Dua kamera mengirim data ke FPGA, yang menjalankan pengambilan, "
         "luma dan binning, line buffer 16 baris, rektifikasi, dan census untuk setiap kamera, lalu hub yang mengirim bus turun "
         "ke rantai chip dan menerima hasilnya untuk uji kiri-kanan serta keluaran USB.",
         "Gambar 1. Diagram Blok Tingkat Sistem Kamera Kedalaman Stereo"),
        (os.path.join(OUT, "block_diagram.png"), 15.0,
         "Gambar 2 memperlihatkan diagram blok fungsional chip dengan pin QFN-32, kelima blok irisan beserta fungsinya, buffer pad, "
         "pohon clock, synchroniser reset, dan suplai. Angka pada setiap panah adalah lebar bus yang dihitung dari netlist chip.",
         "Gambar 2. Diagram Blok Fungsional stereo_slice_chip"),
        (os.path.join(OUT, "plan.png"), 13.0,
         "Gambar 3 memperlihatkan floorplan: batas die, 32 pad pada keempat sisi dalam urutan pin QFN-32, serta posisi dan ukuran "
         "kelima makro di tengah core.",
         "Gambar 3. Floorplan stereo_slice_chip"),
        (os.path.join(MOD, "chip_annotated.png"), 15.0,
         "Gambar 4 memperlihatkan tata letak GDSII die utuh hasil penggabungan, dengan nama setiap makro, nomor pin pad, cincin daya "
         "core, slice penghubung, dan jumper suplai.",
         "Gambar 4. Tata Letak GDSII Die Utuh (1.151 × 1.151 µm)"),
        (os.path.join(OUT, "pins.png"), 13.0,
         "Gambar 5 memperlihatkan rencana pin makro: titik merah adalah pin, garis biru adalah sambungan antarmakro. Kelompok "
         "sambungan terbesar (ctrl–cost 99 bit, pick–up 54 bit, path–up 40 bit) menjadi kawat lurus melintasi kanal.",
         "Gambar 5. Rencana Pin Makro dan Sambungan Antarmakro"),
        (None, 15.0,
         "Gambar 6 memperlihatkan tata letak kelima makro secara terpisah dengan warna layer sky130; pin tampak sebagai garis di "
         "tepi setiap makro.",
         "Gambar 6. Tata Letak Kelima Makro: ctrl, cost, path, pick, up"),
        (os.path.join(MOD, "chip_channels.png"), 12.0,
         "Gambar 7 memperlihatkan perbesaran 120 × 120 µm pada persimpangan kanal antarmakro, tempat kawat antarmakro berjalan lurus "
         "di antara keempat makro.",
         "Gambar 7. Perbesaran Tata Letak pada Persimpangan Kanal (120 × 120 µm)"),
        (os.path.join(MOD, "chip_zoom.png"), 11.0,
         "Gambar 8 memperlihatkan perbesaran 12 × 12 µm pada skala sel standar: baris sel dengan rail daya met1, difusi, gate "
         "polisilikon, kontak, kawat met1 dan met2, serta via.",
         "Gambar 8. Perbesaran Tata Letak pada Skala Sel Standar (12 × 12 µm)"),
        (os.path.join(OUT, "gate_level.png"), 15.0,
         "Gambar 9 memperlihatkan desain logika tingkat gerbang dari inti biaya Hamming slice_cost: enam bit tanda tangan kiri di-XOR "
         "dengan enam bit tanda tangan kanan lalu dijumlahkan, dipetakan ke 18 sel standar sky130 (166,4 µm²). Jarak Hamming 44 bit "
         "tersusun dari delapan rangkaian seperti ini.",
         "Gambar 9. Desain Logika Tingkat Gerbang Inti Biaya Hamming"),
        (os.path.join(MOD, "chip_3d_klayout.png"), 14.0,
         "Gambar 10 memperlihatkan model tiga dimensi chip dari tampilan 2,5D KLayout: lapisan logam bertumpuk di atas sel, dengan "
         "strap daya dan kawat tingkat atas di lapisan teratas.",
         "Gambar 10. Model Tiga Dimensi Tata Letak Chip"),
        (os.path.join(MOD, "chip_3d_cells.png"), 14.0,
         "Gambar 11 memperlihatkan topologi routing tiga dimensi dari GDS pada jendela 30 × 30 µm di dalam makro, dari difusi dan "
         "polisilikon, li1, met1 sampai met5, beserta via, pada ketinggian sebenarnya tumpukan sky130 (skala vertikal ×2).",
         "Gambar 11. Topologi Routing Tiga Dimensi li1 sampai met5"),
    ]
    mont = montage([os.path.join(MOD, f"{b}.png") for b in ("ctrl", "cost", "path", "pick", "up")],
                   ["ctrl", "cost", "path", "pick", "up"], os.path.join(MOD, "macros_montage.png"))
    for path, width, text, cap in figs:
        w.para(text)
        w.figure(path or mont, cap, width)
        w.para("", indent=False)

    w.head("Alur dan Alat Perancangan")
    w.para("RTL Verilog (rtl/mini) disintesis dengan Yosys 0.46 dan ABC ke sky130_fd_sc_hd dengan clock gating; setiap makro "
           "dikeraskan dengan OpenLane 2.3.10 (OpenROAD untuk floorplan, placement, clock tree, dan routing; Magic dan KLayout "
           "untuk GDSII dan DRC; netgen untuk LVS); chip disusun di OpenROAD (padring.py) dengan cincin pad sky130_ef_io, lalu "
           "diekstraksi dengan OpenRCX, dianalisis dengan OpenSTA, digabung dan diperiksa dengan KLayout 0.29.4 dan Magic 8.3. "
           "Gambar dibuat dari GDSII dengan skrip asic/chip/render_modules.py, render_3d.py, render_3d_view.py, gate_level.py, "
           "block_diagram.py, dan system_diagram.py, sehingga dapat dibuat ulang dari berkas desain.")
    os.makedirs(os.path.dirname(out), exist_ok=True)
    d.save(out)
    return out


# ------------------------------------------------------------------ Gambar
def gambar(template, out):
    d = docx.Document(template)
    clear_body(d)
    page_footer(d, 11)
    w = Writer(d, 14)
    C = WD_ALIGN_PARAGRAPH.CENTER
    w.para("Gambar yang wajib ada", indent=False, align=WD_ALIGN_PARAGRAPH.LEFT)
    w.figure(os.path.join(MOD, "chip.png"), "GAMBAR 1: DESAIN TATA LETAK", 14.5, sub="(LAYOUT DESIGN)")
    w.para("Die utuh stereo_slice_chip, 1.151 × 1.151 µm, sky130A", indent=False, align=C, size=11)
    w.page_break()
    w.figure(os.path.join(MOD, "chip_annotated.png"), "GAMBAR 1A: DESAIN TATA LETAK BERKETERANGAN", 14.5, sub="(ANNOTATED LAYOUT)")
    w.page_break()
    w.figure(os.path.join(MOD, "chip_channels.png"), "GAMBAR 1B: PERBESARAN 120 × 120 µm", 12.5, sub="(LAYOUT ZOOM, PERSIMPANGAN KANAL)")
    w.figure(os.path.join(MOD, "chip_zoom.png"), "GAMBAR 1C: PERBESARAN 12 × 12 µm", 9.5, sub="(LAYOUT ZOOM, SEL STANDAR)")
    w.page_break()
    w.para("Gambar lainnya dapat berupa", indent=False, align=WD_ALIGN_PARAGRAPH.LEFT)
    w.figure(os.path.join(OUT, "plan.png"), "GAMBAR 2: FLOORPLAN", 14.0)
    w.page_break()
    w.figure(os.path.join(OUT, "module_diagram.png"), "GAMBAR 3: DIAGRAM BLOK", 16.0, sub="(BLOCK DIAGRAM/MODUL LEVEL)")
    w.page_break()
    w.figure(os.path.join(OUT, "gate_level.png"), "GAMBAR 4: DESAIN LOGIKA", 16.5, sub="(LOGIC DESIGN/GATE LEVEL)")
    w.para("Inti biaya Hamming slice_cost: 18 sel sky130_fd_sc_hd, 166,4 µm²", indent=False, align=C, size=11)
    w.page_break()
    w.figure(os.path.join(OUT, "block_diagram.png"), "GAMBAR 5: DIAGRAM BLOK FUNGSIONAL", 16.5, sub="(FUNCTIONAL BLOCK DIAGRAM)")
    w.page_break()
    w.figure(os.path.join(MOD, "chip_3d_klayout.png"), "GAMBAR 6: MODEL TIGA DIMENSI", 15.5, sub="(3D LAYOUT VIEW)")
    w.figure(os.path.join(MOD, "chip_3d_cells.png"), "GAMBAR 7: TOPOLOGI ROUTING li1–met5", 15.5, sub="(3D INTERCONNECT, 30 × 30 µm)")
    os.makedirs(os.path.dirname(out), exist_ok=True)
    d.save(out)
    return out


def main():
    ura = sys.argv[1] if len(sys.argv) > 1 else os.path.join(DOWNLOADS, "Uraian DTLST.docx")
    gam = sys.argv[2] if len(sys.argv) > 2 else os.path.join(DOWNLOADS, "Gambar DTLST.docx")
    print(uraian(ura, os.path.join(DOCS, "Uraian DTLST stereo_slice_chip.docx")))
    print(gambar(gam, os.path.join(DOCS, "Gambar DTLST stereo_slice_chip.docx")))


if __name__ == "__main__":
    main()
