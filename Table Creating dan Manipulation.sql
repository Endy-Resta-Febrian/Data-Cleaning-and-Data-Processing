# Cara Membuat Database
CREATE DATABASE sdm;

# Cara Membuat Table
CREATE TABLE sdm.karyawan (
	nik VARCHAR (16),
    nama_karyawan VARCHAR (50),
    level_jabatan INTEGER,
    tanggal_lahir DATE
);

# Cara Pertama Memasukkan Data ke Table
INSERT INTO sdm.karyawan VALUES (
	"A01",
    "Endy",
    2,
    "2007-02-21"
);

# Melihat Data Dalam Table
SELECT * FROM sdm.karyawan;

# Cara Kedua Memasukkan Data ke Tabel
INSERT INTO sdm.karyawan (nik, nama_karyawan, level_jabatan, tanggal_lahir) 
VALUES (
	"A02",
    "Andy",
    3,
    "2003-04-17"
);