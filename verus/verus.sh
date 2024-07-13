#!/bin/sh
sudo apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential -y
cd ccminer
chmod +x *.sh
./build.sh
clear
./ccminer -a verus -o stratum+tcp://us.vipor.net:5040 -u RHACKERwSVgjTvV4vNiTjmrkLTD7a92ALD.Miner1 -p x -t $(nproc)
