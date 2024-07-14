Invoke-WebRequest -Uri "https://github.com/cpu-pool/cpuminer-opt-yespowersugar-sugarchain/releases/download/1.4/cpuminer-opt-yespowersugar-sugarchain-win64.zip" -OutFile "cpuminer.zip"
Expand-Archive cpuminer.zip

.\cpuminer\Cpuminer-opt-cpu-pool-win64\cpuminer.exe -a yespowersugar -o stratum+tcp://yespowerSUGAR.eu.mine.zpool.ca:6241 -u sugar1qnw8fvx7qa67v78qwpwp6yerk67quv7k6vhm9us -t 2 --cpu-affinity=0x5
