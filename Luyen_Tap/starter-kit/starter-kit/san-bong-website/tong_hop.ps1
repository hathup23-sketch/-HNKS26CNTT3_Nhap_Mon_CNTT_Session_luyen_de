# Script: tong_hop.ps1
# Tac gia: Pham Thi Thu Ha
# Ngay tao: 3/11/2026
Write-Host "Dang tao bao cao..."
"=== BAO CAO SU CO WEBSITE ===" > logs/tong_hop.txt
Get-Content logs/tong_hop.txt  | Select-String "404" >> logs/tong_hop.txt
Get-Content logs/tong_hop.txt | Select-String "500" | Measure-Object >> logs/tong_hop.txt
Write-Host "Hoan thanh!"
