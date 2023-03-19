Untuk mengimpor blockchain Monero di VPS SSH Ubuntu 20, ikuti langkah-langkah berikut:

Unduh berkas blockchain:
```
wget -c https://downloads.getmonero.org/blockchain.raw
```

Unduh berkas SHA256 checksum:
```
wget -c https://downloads.getmonero.org/blockchain.raw.sha256
```

Verifikasi berkas blockchain dengan membandingkan checksum:
```
sha256sum --check blockchain.raw.sha256
```

Output yang diharapkan adalah:

makefile
Copy code
blockchain.raw: OK
Hentikan daemon Monero dengan menjalankan command berikut:
vbnet
Copy code
monerod stop
Salin berkas blockchain.raw ke direktori data Monero. Jika direktori data Monero berada di dalam direktori /home/user/.bitmonero, maka jalankan command berikut:
bash
Copy code
cp blockchain.raw /home/user/.bitmonero/
Pastikan untuk mengganti "user" dengan nama pengguna Anda.

Hapus berkas .p2p.* di direktori data Monero:
bash
Copy code
cd /home/user/.bitmonero/
rm .p2p.*
Jalankan daemon Monero kembali dengan flag --block-file:
bash
Copy code
monerod --block-file /home/user/.bitmonero/blockchain.raw
Pastikan untuk mengganti "user" dengan nama pengguna Anda.

Proses impor blockchain dapat memakan waktu yang cukup lama, tergantung pada kecepatan CPU dan disk pada VPS Anda. Setelah proses selesai, Anda dapat memeriksa status blockchain dengan menjalankan command berikut:

lua
Copy code
monerod status
Jika status menunjukkan "Synchronized", maka impor blockchain telah berhasil dan daemon Monero dapat dijalankan kembali seperti biasa dengan menjalankan command:

Copy code
monerod



Muslihun Al Lampani
bagaimana agar cepat proses downloadnya : wget https://downloads.getmonero.org/blockchain.raw

Untuk mempercepat proses download dengan menggunakan wget, Anda dapat melakukan beberapa hal berikut:

Gunakan flag -c (continue) untuk melanjutkan proses download yang terputus atau dihentikan sebelumnya, sehingga tidak perlu mengunduh ulang dari awal.

Contoh: wget -c https://downloads.getmonero.org/blockchain.raw

Tambahkan flag -N (timestamping) untuk hanya mengunduh file yang lebih baru dari yang sudah ada di direktori tujuan. Dengan kata lain, flag ini akan memeriksa apakah ver
