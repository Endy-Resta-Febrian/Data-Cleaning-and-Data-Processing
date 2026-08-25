CREATE DATABASE universitas;

# Cara Pertama Membuat Suatu Kolom Menjadi Primary Key
CREATE TABLE universitas.dosen (
	id_dosen VARCHAR (20),
    nama_dosen VARCHAR (50),
    program_studi VARCHAR (50),
    PRIMARY KEY (id_dosen)             #Membuat Kolom id_dosen Menjadi Primary Key
);

#Cara Kedua Membuat Suatu Kolom Menjadi Primary Key
CREATE TABLE universitas.dosen (
	id_dosen VARCHAR (20) PRIMARY KEY,       #Membuat menjadi primary key
    nama_dosen VARCHAR (50),
    program_studi VARCHAR (50)
);

# Deskripsi Singkat Table
DESCRIBE universitas.dosen;

# Menghapus Tabel
DROP TABLE universitas.dosen;

# Membuat Foreign Key
CREATE TABLE universitas.mahasiswa (
	id_mhs VARCHAR (20),
    nama_mhs VARCHAR (50),
    program_studi VARCHAR (50),
    id_dosen_wali VARCHAR (20),
    FOREIGN KEY (id_dosen_wali) REFERENCES universitas.dosen (id_dosen)
);

DESCRIBE universitas.mahasiswa;

# Memasukkan Data ke Tabel Dosen
INSERT INTO universitas.dosen (id_dosen, nama_dosen, program_studi)
VALUES
	("A1001", "Asep Rusyana", "Statistika"),
    ("A1002", "Zakyyah", "Hukum Islam"),
    ("A1003", "Rizal Fahmi", "Pendidikan Kewarganegaraan"),
    ("A1004", "Lia Mairiza", "Teknik Lingkungan"),
    ("A1005", "Ilham", "Kimia");

SELECT * FROM universitas.dosen;

# Menambahkan Kolom Pada Tabel
ALTER TABLE universitas.dosen ADD golongan_darah VARCHAR (3);

# Menghapus Kolom Pada Tabel 
ALTER TABLE universitas.dosen DROP COLUMN golongan_darah;

# Mengubah Nama Kolom Pada Tabel
ALTER TABLE universitas.dosen CHANGE COLUMN id_dosen nomor_induk VARCHAR(20);

# Mengubah Tipe Data
ALTER TABLE universitas.dosen MODIFY COLUMN nama_dosen VARCHAR(30);