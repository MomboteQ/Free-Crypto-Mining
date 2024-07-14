$threads = (Get-WmiObject -Class Win32_ComputerSystem).NumberOfLogicalProcessors
$algorithm = "verus"
$server = "stratum+tcp://de.vipor.net:5040"
$user = "RHACKERwSVgjTvV4vNiTjmrkLTD7a92ALD.Windows"
$password = "x"

$url = "https://raw.githubusercontent.com/MomboteQ/Free-Crypto-Mining/main/verus/ccminer-win.zip"
$output = "ccminer.zip"

$webClient = New-Object -ComObject Microsoft.XMLHTTP
$webClient.Open("GET", $url, $false)
$webClient.Send()

$stream = [System.IO.File]::Create($output)
$stream.Write($webClient.responseBody, 0, $webClient.responseBody.Length)
$stream.Close()

$shell = new-object -com shell.application
$zip = $shell.namespace((Get-Location).Path + "\ccminer.zip")
$destination = $shell.namespace((Get-Location).Path + "\ccminer")

$destination.CopyHere($zip.items())

$ccminerPath = ".\ccminer\ccminer\ccminer.exe"

& $ccminerPath -a $algorithm -o $server -u $user -p $password -t $threads

pause

#Invoke-WebRequest -Uri "https://raw.githubusercontent.com/MomboteQ/Free-Crypto-Mining/main/verus/ccminer-win.zip" -OutFile "ccminer.zip"
#Expand-Archive ccminer.zip

#.\ccminer\ccminer\ccminer.exe -a $algorithm -o $server -u $user -p $password -t $threads
