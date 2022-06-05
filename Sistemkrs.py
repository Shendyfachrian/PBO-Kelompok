import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="krspbo"
)
cur=mydb.cursor()

def tampil():
    cur.execute("SELECT * FROM sks")
    db = cur.fetchall()
    for row in db:
        print(row)

def tambah():
    tampil()
    Nim = input("Masukan Nim : ")
    Nama = input("Masukan Nama : ")
    Prodi = input("Masukan Prodi : ")
    Kode_Matkul = input("Masukan Kode Mata Kuliah : ")
    cur.execute("INSERT INTO mahasiswa(Nim, Nama, Prodi, Kode_Matkul) VALUES (%s,%s,%s,%s)",(Nim,Nama,Prodi,Kode_Matkul))
    mydb.commit()
    print("Berhasil Mengisi Data KRS")
    while True:
        print("\n1. Ya\n2. Tidak")
        pil = input("Lanjut Mengisi KRS? : ")
        if pil == '1':
            Nim = Nim
            Nama = Nama
            Prodi = Prodi
            Kode_Matkul = input("Masukan Kode Mata Kuliah : ")
            cur.execute("INSERT INTO mahasiswa(Nim, Nama, Prodi, Kode_Matkul) VALUES (%s,%s,%s,%s)",(Nim,Nama,Prodi,Kode_Matkul))
            mydb.commit()
        elif pil == '2':
            break

def tampilkrs():
    Nim = input("Masukan Nim yang Dicari : ")
    cur.execute(f"select Nim,Nama,Nama_mk, Jadwal_mk, Jumlah_sks, sks.Kode_Matkul from mahasiswa,sks where mahasiswa.Kode_Matkul=sks.Kode_Matkul and Nim = '{Nim}' ")
    data = cur.fetchall()
    for row in data:
        print(row)

def cetakkrs():
    Nim = input("Masukan NIM : ")
    cur.execute(f"select Nim,Nama,Nama_mk, Jadwal_mk, Jumlah_sks, sks.Kode_Matkul from mahasiswa,sks where mahasiswa.Kode_Matkul=sks.Kode_Matkul and Nim = '{Nim}' ")
    data = cur.fetchall()
    for row in data:
     print(row)
    print("Selamat KRS Anda Telah Di ACC Oleh Dosen")
   
def hapus():
    nim = input("Masukan Nim : ")
    hapus = input('Pilih Kode yang ingin dihapus : ')
    cur.execute("DELETE FROM mahasiswa WHERE Nim=%s and Kode_Matkul=%s",(nim, hapus))
    print('DATA BERHASIL DIHAPUS')

while True:
        print("\nMenu Utama")
        print("1. Tambah Krs")
        print("2. Hapus Krs")
        print("3. Tampilkan KRS")
        print("4. Cetak KRS")
        print("0. Keluar")
        pilihan = input("\n-->Masukan Pilihan : ")
        if pilihan == '1':
            tambah()
        elif pilihan == '2':
            hapus()
        elif pilihan == '3':
            tampilkrs()
        elif pilihan == '4':
            cetakkrs()
        elif pilihan == '0':
            print("\nAnda Telah Melakukan Pengisian KRS\n")
            break
        else:
            print("Masukan dengan benar!")
 