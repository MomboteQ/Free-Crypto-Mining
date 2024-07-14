$gpuInfo = Get-CimInstance -Namespace root\cimv2 -ClassName Win32_VideoController

Write-host "Wszystko: $($gpuInfo)"

foreach ($gpu in $gpuInfo) {
    Write-Host "Nazwa GPU: $($gpu.Name)"
    Write-Host "Procesor Wideo: $($gpu.VideoProcessor)"
    Write-Host "Pamięć Wideo (MB): $([math]::round($gpu.AdapterRAM / 1MB))"
    Write-Host "Sterownik GPU: $($gpu.DriverVersion)"
    Write-Host "Status GPU: $($gpu.Status)"
    Write-Host "---------------------------------------"
}

pause
