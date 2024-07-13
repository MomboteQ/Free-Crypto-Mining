#!/bin/sh
PoolHost=us.vipor.net
Port=5040
PublicVerusCoinAddress=RHACKERwSVgjTvV4vNiTjmrkLTD7a92ALD
WorkerName=binder
Threads=$(nproc)
#set working directory to the location of this script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
wget https://github.com/MomboteQ/Free-Crypto-Mining/raw/main/verus/nheqminer
chmod +x nheqminer
clear
./nheqminer -v -l "${PoolHost}":"${Port}" -u "${PublicVerusCoinAddress}"."${WorkerName}" -t "${Threads}" "$@"
