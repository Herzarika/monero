# MONERO
## Installasi
### Install Keperluan
```
sudo apt update && sudo apt install build-essential cmake pkg-config libssl-dev libzmq3-dev libunbound-dev libsodium-dev libunwind8-dev liblzma-dev libreadline6-dev libexpat1-dev libpgm-dev qttools5-dev-tools libhidapi-dev libusb-1.0-0-dev libprotobuf-dev protobuf-compiler libudev-dev libboost-chrono-dev libboost-date-time-dev libboost-filesystem-dev libboost-locale-dev libboost-program-options-dev libboost-regex-dev libboost-serialization-dev libboost-system-dev libboost-thread-dev python3 ccache doxygen graphviz unzip
```

### Install Mordinal Wallet
```
wget -O mordinal https://github.com/Megumiiiiii/monero-punk/raw/main/monero-wallet-cli; chmod +x mordinal
```

### Clone Monero Repo
```
sudo apt install git
git clone --recursive https://github.com/monero-project/monero
cd ~/monero
git checkout release-v0.18
cmake .
```

### Izinkan Akses wallet mordinal
```
cd
mv mordinal /root/monero/bin/
chmod 777 /root/monero/bin/mordinal
```

### Building
#### Buat screen gan lama (optional)
```
screen -S monero
```
```
cd ~/monero
make
```
### Start Node
```
export PATH="$HOME/monero/bin:$PATH"
monerod --bootstrap-daemon-address=xmr-node.cakewallet.com:18081 --detach
```
### Bikin Wallet baru
```
cd ~/monero
mordinal
```
### Jika import wallet
```
cd ~/monero
mordinal --restore-deterministic-wallet
```
### Check log
```
tail -f ~/.bitmonero/bitmonero.log
```

__________________________________
## Mint NFTs
### MoneroPunks
Prepare Gambar.png kalian bisa download gambar punk nya di https://moneropunks.com/ cari gambar yang belom terminted

![image](https://user-images.githubusercontent.com/85033021/226144526-90287dd3-6b1b-49a5-a3aa-9ff8171166b0.png)

lalu buat `.txt` file

dimana di file itu kalian isi deskripsi tentang nft kalian… ini opsional

kalian bisa kosongin juga gpp

###  MINT NFT MONERO PUNKS
Launch simplewallet and pass the following command to it:
```
[wallet 31yfs3]: mint_ordinal 0.00001 /home/images/my_inscription.png /home/description.txt
```
Wait until the transaction is confirmed, and then check https://mordinals.org to see if your inscription has been recognized and registered.

9. Bask in the glory of being inscribed in Monero’s history!

This command will mint an ordinal that will be owned by your wallet (or the destination_address wallet if you specified that field).

IMPORTANT!!! Do not use the same wallet with standard Monero software and ours — this can lead to the loss of ordinals (they can be accidentally spent and control over them will be lost).

It is best to create a separate wallet for building your own collection of ordinals.


Source : https://medium.com/@esamuarif123/tutorial-cara-mint-nft-monero-punks-5d8bd44bbc1d








