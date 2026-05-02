Write-Host "Uruchamianie naprawy systemu..." -ForegroundColor Cyan

Write-Host "[1/4] CheckHealth"
DISM /Online /Cleanup-Image /CheckHealth

Write-Host "[2/4] ScanHealth"
DISM /Online /Cleanup-Image /ScanHealth

Write-Host "[3/4] RestoreHealth"
DISM /Online /Cleanup-Image /RestoreHealth

Write-Host "[4/4] SFC Scan"
sfc /scannow

Write-Host "Gotowe!" -ForegroundColor Green
Pause