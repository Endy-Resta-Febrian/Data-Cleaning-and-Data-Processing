CREATE DATABASE umkm;

# Import Tabel CSV Menggunakan Tabel Wizard
SELECT * FROM umkm.umkm_jabar;

# Explore Data Menggunakan Operator Logic
# Operator = (yang kita inginkan)
SELECT * FROM umkm.umkm_jabar WHERE nama_kabupaten_kota = "KOTA BANDUNG";

# ORDER_BY (mengurutkan berdasarkan kolom)
SELECT * FROM umkm.umkm_jabar WHERE tahun >= 2020 ORDER BY kategori_usaha, tahun;

# LIMIT (membatasi row pada output)
SELECT * FROM umkm.umkm_jabar WHERE tahun >= 2020 ORDER BY kategori_usaha, tahun LIMIT 20;

# DISTINCT (unique, tidak menampilkan yang duplikat)
SELECT DISTINCT kategori_usaha FROM umkm.umkm_jabar;

# IN
SELECT * FROM umkm.umkm_jabar WHERE kategori_usaha IN ("FASHION", "MAKANAN") ORDER BY tahun;

# BETWEEN (memfilter data fashion di kabubaten bogor pada tahun 2020 sampai 2023)
SELECT * FROM umkm.umkm_jabar WHERE nama_kabupaten_kota = "KOTA BOGOR" AND kategori_usaha = "FASHION" AND tahun BETWEEN 2020 AND 2023;

# NOT IN
SELECT * FROM umkm.umkm_jabar WHERE kategori_usaha NOT IN ("KULINER", "MAKANAN", "MINUMAN");

# CASE 1
SELECT * FROM umkm.umkm_jabar 
WHERE kategori_usaha = "BATIK" AND nama_kabupaten_kota = "KOTA TASIKMALAYA" 
AND tahun BETWEEN 2018 AND 2020 ORDER BY proyeksi_jumlah_umkm;

# CASE 2
SELECT * FROM umkm.umkm_jabar 
WHERE nama_kabupaten_kota IN ("KOTA BANDUNG", "KABUPATEN BANDUNG", "KABUPATEN BANDUNG BARAT")
AND tahun = 2021 AND kategori_usaha = "MAKANAN"
ORDER BY proyeksi_jumlah_umkm DESC;

# CASE 3
SELECT DISTINCT kode_kabupaten_kota, nama_kabupaten_kota 
FROM umkm.umkm_jabar 
WHERE kode_kabupaten_kota LIKE "__7%"