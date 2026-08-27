SELECT * FROM umkm.umkm_jabar;

DESCRIBE umkm.umkm_jabar;

# CASE 1
SELECT COUNT(*) AS jumlah_baris FROM umkm.umkm_jabar;

# CASE 2
SELECT SUM(proyeksi_jumlah_umkm) AS jumlah_umkm FROM umkm.umkm_jabar
WHERE nama_kabupaten_kota = "KABUPATEN BEKASI" AND tahun = 2020;

# CASE 3
SELECT tahun, SUM(proyeksi_jumlah_umkm) AS jumlah_umkm 
FROM umkm.umkm_jabar
WHERE nama_kabupaten_kota = "KABUPATEN KARAWANG" GROUP BY tahun ORDER BY jumlah_umkm DESC;

# CASE 4
SELECT kategori_usaha, tahun, AVG(proyeksi_jumlah_umkm) AS rerata_jumlah_umkm
FROM umkm.umkm_jabar
WHERE tahun = 2021 GROUP BY kategori_usaha;

# CASE 5
SELECT MIN(proyeksi_jumlah_umkm) AS nilai_min_jumlah_umkm, MAX(proyeksi_jumlah_umkm) AS nilai_maksimum_jumlah_umkm
FROM umkm.umkm_jabar;

# CASE 6
SELECT nama_kabupaten_kota, SUM(proyeksi_jumlah_umkm) AS jumlah_umkm 
FROM umkm.umkm_jabar
WHERE tahun = 2020 GROUP BY nama_kabupaten_kota HAVING jumlah_umkm < 100000;