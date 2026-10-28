# EduMind AI - Asisten Belajar Mandiri Offline (Rule-Based AI)

Aplikasi web (*HTML, CSS, JavaScript*) yang beroperasi 100% lokal di browser tanpa server, tanpa koneksi internet, dan tanpa dependensi eksternal. EduMind AI dirancang untuk membantu pengguna mempelajari modul materi melalui penalaran berbasis aturan (*Rule-Based Reasoning*) dan evaluasi pemahaman mandiri lewat kuis interaktif.

---

## 🌟 Fitur Utama

1. **Rule-Based AI Inference Engine**:
   - Beroperasi langsung di browser client-side.
   - **Intent Recognition**: Mengenali jenis pertanyaan secara otomatis:
     - **Definisi & Konsep** (`Apa itu...`, `Pengertian dari...`, `Jelaskan...`)
     - **Cara Kerja & Prosedur** (`Bagaimana cara...`, `Langkah-langkah...`, `Proses...`)
     - **Alasan & Sebab** (`Mengapa...`, `Kenapa...`, `Alasan...`)
     - **Perbandingan** (`Apa beda X dan Y`, `Perbedaan antara...`)
     - **Klasifikasi & Daftar** (`Sebutkan jenis-jenis...`, `Apa saja...`)
     - **Fungsi & Manfaat** (`Fungsi...`, `Kegunaan...`, `Manfaat...`)
     - **Rangkuman** (`Rangkum modul...`, `Kesimpulan...`)
   - **Pattern Matching & Scoring Heuristic**: Mengekstrak definisi berformat `[Konsep] adalah/merupakan [Penjelasan]`, memetakan bobot relevansi kata kunci, subjudul bab, dan struktur teks.
   - **Sitasi & Bukti Materi**: Menyajikan nama modul asal, judul bab/bagian materi, serta skor kecocokan aturan (*Rule Confidence Score*).

2. **Latihan Kuis Interaktif (Skor & Kunci Jawaban Langsung)**:
   - **Pembuat Soal Otomatis**: Menghasilkan soal pilihan ganda A, B, C, D dari materi modul aktif (definisi istilah, poin karakteristik bab, dan fakta kunci).
   - **Pilihan Kuis Fleksibel**: Pilih sumber dari semua modul aktif atau modul spesifik tertentu dengan pilihan jumlah soal (3, 5, atau 10 soal).
   - **Sesi Pengerjaan Interaktif**: Dilengkapi bilah progres (*progress bar*), nomor butir soal (*dots navigator*), serta navigasi bolak-balik.
   - **Perhitungan Skor Instan**: Skor 0–100 dihitung secara instan bersama catatan benar/salah dan waktu pengerjaan.
   - **Kunci Jawaban & Pembahasan Lengkap Tanpa Reload**: Langsung menampilkan evaluasi jawaban Anda vs kunci jawaban yang benar beserta kutipan penjelasan modul terkait di layar yang sama tanpa memuat ulang (*reload*) halaman.

3. **Manajemen Modul di Sisi Kiri (Sidebar)**:
   - **Tanpa Modul Default**: Dimulai dalam kondisi bersih agar pengguna bebas menambahkan materi pembelajarannya sendiri.
   - **Tambah & Edit Modul**: Input judul, kategori/tag, serta isi materi lengkap dengan penghitung kata (*live word counter*).
   - **Hapus Modul**: Konfirmasi dan pembersihan modul yang tidak lagi diperlukan.
   - **Toggle Aktif/Nonaktif**: Pilih modul mana saja yang ingin disertakan dalam penelusuran materi dan kuis.
   - **Impor & Ekspor Berkas**:
     - Impor file teks langsung (`.txt` atau `.md` atau `.json`).
     - Cadangkan (ekspor) seluruh modul ke berkas `.json`.
   - **Pencarian Modul**: Filter modul berdasarkan nama, kategori, atau tag.

4. **Antarmuka Interaktif & Responsif**:
   - Desain modern dengan tipografi *Plus Jakarta Sans*, aksen gradien, dan tata letak *glassmorphism*.
   - **Mode Gelap / Terang**: Tersedia tombol beralih tema yang tersimpan di LocalStorage.
   - **Saran Pertanyaan Dinamis**: Chip pertanyaan otomatis digenerasi dari topik materi yang sedang aktif.
   - **Penyimpanan Lokal**: Tersimpan aman di `localStorage` peramban Anda.

---

## 🚀 Cara Menjalankan Aplikasi

Aplikasi ini tidak memerlukan instalasi software backend (Node.js/Python). Cukup buka file:

1. Buka berkas `index.html` menggunakan peramban apa pun (Google Chrome, Microsoft Edge, Mozilla Firefox, Brave, Safari, dll.):
   - Klik ganda pada berkas `index.html`, **atau**
   - Klik kanan > **Open with** > Pilih browser favorit Anda.
2. Tambahkan modul materi pertama Anda melalui tombol **"+ Tambah Modul"** di sebelah kiri.
3. Mulai ajukan pertanyaan di kolom chat, atau klik tombol **"Latihan Kuis"** di bagian atas untuk menguji pemahaman materi Anda!

---

## 📁 Struktur Direktori

```
Asisten-AI-Belajar/
├── index.html            # Antarmuka pengguna (Sidebar, Topbar, Chat Area, Modals, Kuis)
├── css/
│   └── style.css         # Desain sistem Vanilla CSS (Modern, Dark/Light, Kuis, Responsif)
├── js/
│   ├── module-store.js   # Pengelola penyimpanan modul LocalStorage (CRUD, Impor/Ekspor)
│   ├── rule-engine.js    # Mesin AI Rule-Based (Intent classification, text segmentation, scoring)
│   ├── quiz-engine.js    # Mesin Kuis Otomatis (Generator soal, penilai skor, kunci jawaban)
│   └── app.js            # Controller antarmuka (Event listeners, rendering, chat & kuis flow)
└── README.md             # Dokumentasi proyek
```