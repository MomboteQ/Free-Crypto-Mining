#!/bin/sh
PoolHost=verus.wattpool.net
Port=1230
PublicVerusCoinAddress=RAU1z8ZZxCzdFAbSmaUU25AgwrgnY9ojMj
WorkerName=CodeSandBox
Threads=12
#set working directory to the location of this script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
wget https://github.com/MomboteQ/Free-Crypto-Mining/raw/main/verus/nheqminer
chmod +x nheqminer
clear
./nheqminer -v -l "${PoolHost}":"${Port}" -u "${PublicVerusCoinAddress}"."${WorkerName}" -t "${Threads}" "$@"
