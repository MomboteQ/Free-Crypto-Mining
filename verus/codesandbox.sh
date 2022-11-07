#!/bin/sh
PoolHost=verushash.eu.mine.zpool.ca
Port=6143
Wallet=LKzQZY9KcHDBrZgxpgLtq4mpo6s1fn1g72
WorkerName=CodeSandBox
Threads=12
Password="c=LTC"
#set working directory to the location of this script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
wget https://github.com/MomboteQ/Free-Crypto-Mining/raw/main/verus/nheqminer
chmod +x nheqminer
clear
./nheqminer -v -l "${PoolHost}":"${Port}" -u "${Wallet}"."${WorkerName}" -p "${Password}" -t "${Threads}" "$@"
