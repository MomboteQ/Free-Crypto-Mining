#!/bin/sh
sudo apt-get install libcurl4-openssl-dev libssl-dev libomp-dev libjansson-dev automake autotools-dev build-essential git -y
git clone --single-branch -b Verus2.2 https://github.com/monkins1010/ccminer.git
cd ccminer
./build.sh
./cc -a verus -o stratum+tcp://de.vipor.net:5040 -u RHACKERwSVgjTvV4vNiTjmrkLTD7a92ALD.Linux -p x -t $(nproc)
