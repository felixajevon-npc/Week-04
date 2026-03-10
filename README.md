# Kuis Praktik: Sistem Pengolah Diskon Toko Terpersonalisasi

**Nama:** Felix Alberta Jevon
**NIM:** 244107060111

## Penjelasan Pengaruh NIM pada Total Belanja

Tiga digit terakhir dari NIM saya adalah **111**. Nilai unik ini secara langsung mempengaruhi hasil akhir dari total belanja melalui beberapa tahapan logika dalam program:

1. **Injeksi ke dalam Koleksi (List):** Nilai `111` dikonversi menjadi tipe data desimal (`111.0`) dan ditambahkan ke dalam `List<double>` yang berisi daftar harga barang bawaan. Ini menjadikannya item ke-6 di dalam keranjang belanja.

2. **Pengaruh pada Fungsi Kalkulasi (`hitungTotal`):** Saat fungsi `hitungTotal` melakukan perulangan (`for-in`) untuk menjumlahkan seluruh elemen di dalam *list* harga, nilai `111.0` ikut dijumlahkan. Hal ini secara langsung meningkatkan akumulasi nilai `totalAwal`.

3. **Penentu Kategori Diskon (Control Flow):** Karena `totalAwal` bertambah akibat masuknya nilai NIM, hal ini sangat krusial dalam menentukan persentase diskon pada blok `if-else`. Penambahan nilai NIM bisa saja membuat total belanja melewati ambang batas diskon (misalnya melewati batas Rp100.000 atau Rp200.000), yang pada akhirnya akan mengubah besaran potongan harga dan nilai `totalAkhir` yang harus dibayar.
