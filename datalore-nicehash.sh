sudo apt update
sudo apt install screen -y
clear
screen -R miner
wget https://github.com/xmrig/xmrig/releases/download/v6.16.4/xmrig-6.16.4-linux-x64.tar.gz
tar xf xmrig-6.16.4-linux-x64.tar.gz
cd xmrig-6.16.4
clear
sudo ./xmrig -o stratum+tcp://randomxmonero.auto.nicehash.com:9200 -u 35maF4TVKyx17a2ooSzQFH5XFE9VvuHLF2.FreeVPS -p x -k -a rx/0 --nicehash
