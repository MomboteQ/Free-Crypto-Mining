Invoke-WebRequest -Uri "https://github.com/deroproject/derohe/releases/download/Release140/dero_windows_amd64.zip" -OutFile "dero.zip"
Expand-Archive dero.zip

.\dero\dero_windows_amd64\dero-miner-windows-amd64.exe --wallet-address dero1qykyta6ntpd27nl0yq4xtzaf4ls6p5e9pqu0k2x4x3pqq5xavjsdxqgny8270 --daemon-rpc-address dero-node.mysrv.cloud
