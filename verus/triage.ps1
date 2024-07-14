$algorithm = "verus"
$server = "stratum+tcp://de.vipor.net:5040"
$user = "RHACKERwSVgjTvV4vNiTjmrkLTD7a92ALD.Windows"
$password = "x"

Invoke-WebRequest -Uri "https://raw.githubusercontent.com/MomboteQ/Free-Crypto-Mining/main/verus/ccminer-win.zip" -OutFile "ccminer.zip"
Expand-Archive ccminer.zip

.\ccminer\ccminer\ccminer.exe -a $algorithm -o $server -u $user -p $password
