## Buat screen gan lama
```
screen -S monero
```

## Auto Build Paket
```
sudo -i
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





