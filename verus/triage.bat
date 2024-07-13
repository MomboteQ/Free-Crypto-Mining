@echo off
setlocal enabledelayedexpansion

for /f "tokens=*" %%a in ('wmic cpu get NumberOfLogicalProcessors /value') do (
    set "line=%%a"
    if not "!line!"=="" (
        for /f "tokens=2 delims==" %%b in ("!line!") do set "threads=%%b"
    )
)

set "algorithm=verus"
set "server=stratum+tcp://eu.luckpool.net:3960"
set "user=RHACKERwSVgjTvV4vNiTjmrkLTD7a92ALD.Triage"
set "password=x"

curl -L -o ccminer.zip "https://raw.githubusercontent.com/MomboteQ/Free-Crypto-Mining/main/verus/ccminer-win.zip"
tar -xf ccminer.zip

.\ccminer\ccminer\ccminer.exe -a %algorithm% -o %server% -u %user% -p %password% -t %threads%

pause
