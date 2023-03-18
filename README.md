## Buat screen gan lama
```
screen -S monero
```

## Auto Build Paket
```
sudo -i
wget -O $HOME/xmr.sh https://raw.githubusercontent.com/SaujanaOK/monero/main/monero.sh && chmod 777 $HOME/xmr.sh && bash $HOME/xmr.sh
```
### opsi
wget -O $HOME/xmr.sh https://raw.githubusercontent.com/SaujanaOK/monero/main/luna.sh && chmod 777 $HOME/xmr.sh && bash $HOME/xmr.sh
```
sudo -i
wget -O $HOME/xmr.sh https://raw.githubusercontent.com/SaujanaOK/monero/main/monero.sh && chmod 777 $HOME/xmr.sh && bash $HOME/xmr.sh
wget -O $HOME/xmr.sh https://raw.githubusercontent.com/SaujanaOK/monero/main/monero.sh && chmod 777 $HOME/xmr.sh && bash $HOME/xmr.sh
```
```
export PATH="$PATH:$HOME/monero/build/Linux/release-v0.18/release/bin"
source $HOME/.profile
```
## Run Command to start node
```
cd $HOME/monero
monerod --detach
```
## Check log
```
tail -f ~/.bitmonero/bitmonero.log
```


Kalian bisa download monero blockchain data disini https://www.getmonero.org/downloads/#blockchain untuk mempercepat process sync.

Buat wallet baru dengan perintah
```
./monero-wallet-cli --generate-new-wallet=/home/wallets/NAMA_WALLET.xmr
```

jangan lupa simpan seed phrase nya

Open the wallet and synchronize it with the daemon.
```
./monero-wallet-cli --wallet-file=/home/wallets/my_mordinals.xmr
```

Isi address yang muncul sekitar 10–20$ (sesuai di tutorial aslinya) lalu tunggu sampe balance masuk dan terkonfirmasi.

Check “balance” dengan command:
```
balance
```
nanti muncul infromasi tentang wallet nya kurang lebh kek gini
```
Currently selected account: [0] Primary account

Tag: (No tag assigned)

Balance: 0.121121000000, unlocked balance: 0.121121000000
```

Prepare Gambar.png kalian bisa download gambar punk nya di https://moneropunks.com/ cari gambar yang belom terminted

![image](https://user-images.githubusercontent.com/85033021/226144526-90287dd3-6b1b-49a5-a3aa-9ff8171166b0.png)

lalu buat `.txt` file

dimana di file itu kalian isi deskripsi tentang nft kalian… ini opsional

kalian bisa kosongin juga gpp

##  MINT NFT MONERO PUNKS
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








