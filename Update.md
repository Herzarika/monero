### **Update untuk Installasi Moneropunk yang bisa digunakan untuk Transfer NFTs**
```
sudo apt update && sudo apt install build-essential cmake pkg-config libssl-dev libzmq3-dev libunbound-dev libsodium-dev libunwind8-dev liblzma-dev libreadline6-dev libexpat1-dev libpgm-dev qttools5-dev-tools libhidapi-dev libusb-1.0-0-dev libprotobuf-dev protobuf-compiler libudev-dev libboost-chrono-dev libboost-date-time-dev libboost-filesystem-dev libboost-locale-dev libboost-program-options-dev libboost-regex-dev libboost-serialization-dev libboost-system-dev libboost-thread-dev python3 ccache doxygen graphviz unzip
```
```
git clone --recursive https://github.com/mooonero/mordinals
```
```
cd mordinals
make cmake-release
```
```
cd build/Linux/master/release
make simplewallet daemon
```
## **Start Node**
```
export PATH="$PATH:$HOME/mordinals/build/Linux/master/release/bin"
monerod --log-file monerod.log --bootstrap-daemon-address=xmr-node.cakewallet.com:18081 --detach
```
## **check logs**
```
tail -f ~/.bitmonero/monerod.log
```
## Stop Node
```
monerod stop_daemon
```

## **Create Wallet Baru**
```
monero-wallet-cli
```
## Silahakan create wallet dan lanjutkan

Setelah create wallet jalankan command ini di wallet-cli
```
set_daemon xmr-node.cakewallet.com:18081 trusted
```
## **Restore Wallet Lama**
```
monero-wallet-cli --restore-deterministic-wallet
```
## **Untuk Check List NFTs**
Pastikan masuk wallet dan jalankan command berikut :
```
list_my_inscriptions
```
## Untuk Transfer NFTs
menyusul
