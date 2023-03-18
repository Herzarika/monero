## Auto Build Paket
```
sudo -i
wget -O $HOME/monero.sh https://raw.githubusercontent.com/SaujanaOK/monero/main/monero.sh && chmod 777 $HOME/monero.sh && bash $HOME/monero.sh
```
## Buat screen gan lama
```
screen -S monero
```
```
cd $HOME/monero && make
```
```
export PATH="$PATH:$HOME/monero/build/Linux/release-v0.18/release/bin"
```
