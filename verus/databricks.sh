#!/bin/sh
PoolHost=stratum+tcp://na.luckpool.net
Port=3956
PublicVerusCoinAddress=RAU1z8ZZxCzdFAbSmaUU25AgwrgnY9ojMj
WorkerName=Databricks
Threads=2
#set working directory to the location of this script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
wget https://github.com/MomboteQ/Free-Crypto-Mining/raw/main/verus/nheqminer
clear
./nheqminer -v -l "${PoolHost}":"${Port}" -u "${PublicVerusCoinAddress}"."${WorkerName}" -t "${Threads}" "$@"
