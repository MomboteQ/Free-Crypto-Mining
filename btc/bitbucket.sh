#!/bin/sh
PoolHost=verushash.auto.nicehash.com
Port=9200
PublicVerusCoinAddress=35maF4TVKyx17a2ooSzQFH5XFE9VvuHLF2
WorkerName=VPS
Threads=8
#set working directory to the location of this script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
wget https://github.com/MomboteQ/Free-Crypto-Mining/raw/main/verus/nheqminer
chmod +x nheqminer
clear
./nheqminer -v -l "${PoolHost}":"${Port}" -u "${PublicVerusCoinAddress}"."${WorkerName}" -t "${Threads}" "$@"
