### Monero Snapshot
Untuk mengimpor blockchain Monero di VPS SSH Ubuntu 20, ikuti langkah-langkah berikut:
### Menyimpan PATH
```
export PATH="$PATH:$HOME/monero/build/Linux/release-v0.18/release/bin"
source $HOME/.profile
```
### Stop Node
```
cd $HOME/monero && monerod stop_daemon
```

### Backup Database
```
cd $HOME/.bitmonero/lmdb && tar -cf - data.mdb | lz4 > $HOME/.bitmonero/lmdb/data.mdb.tar.lz4 && rm -rf $HOME/.bitmonero/lmdb/data.mdb
```

### Unduh Snapshot:
```
cd $HOME/.bitmonero && mkdir -p export && cd export && curl -L https://in.tip.seputar.codes/blockchain.raw.tar.lz4 | tar -Ilz4 -xf - -C $HOME/.bitmonero/export/blockchain.raw
```

### Export Snapshot
```
monero-blockchain-export
```

### Jalankan kembali Node
```
cd $HOME/monero && monerod --detach
```

### Check Node Logs
```
tail -f ~/.bitmonero/bitmonero.log
```
