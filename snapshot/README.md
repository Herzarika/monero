_______________________________
# Monero Snapshot
Untuk mengimpor blockchain Monero di VPS SSH Ubuntu 20, ikuti langkah-langkah berikut:
### 1. Menyimpan PATH
```
export PATH="$PATH:$HOME/monero/build/Linux/release-v0.18/release/bin"
source $HOME/.profile
```
### 2. Stop Node
```
cd $HOME/monero && monerod stop_daemon
```

### 3. Backup Database
```
mv -i $HOME/.bitmonero/lmdb/data.mdb $HOME/databackup.mdb
```

### 4. Unduh Snapshot:
```
cd $HOME/.bitmonero && mkdir -p export && cd export && curl -L https://in.tip.seputar.codes/blockchain.raw.tar.lz4 | tar -Ilz4 -xf - -C $HOME/.bitmonero/export/blockchain.raw
```

### 5. Export Snapshot
```
monero-blockchain-export
```

### 6. Jalankan kembali Node
```
cd $HOME/monero && monerod --detach
```

### 7. Check Node Logs
```
tail -f ~/.bitmonero/bitmonero.log
```
_______________________________

# Mengembalikan Backup
Jika gagal mengambil snapshot, karna biasanya terjadi kegagalan, dikarenakan besarnya file, sehingga terjadinya ketidaksempurnaan saat mendowload. mengingat File backup data blockchain Monero saat ini lebih dari 150 GB besarnya. maka sebagaimana di atas, sebelum menggunakan snapshot kami, kami berikan step backup database. maka berikut cara mengembalikan backup, jika terjadi kerusakan file snapshot.

### 1. Stop Node
```
cd $HOME/monero && monerod stop_daemon
```
### 2. Kembalikan Backup
```
rm -rf $HOME/.bitmonero/lmdb/data.mdb && mv -i $HOME/databackup.mdb $HOME/.bitmonero/lmdb/data.mdb
```
### 3. Jalankan kembali Node
```
cd $HOME/monero && monerod --detach
```

### 4. Check Node Logs
```
tail -f ~/.bitmonero/bitmonero.log
```
_______________________________

