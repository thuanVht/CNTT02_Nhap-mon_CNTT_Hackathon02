# Script :tong_hop.ps1
# Tac gia : Vo_Hoang_Thuan
# Ngay tao : 11_11_2026
Write-Host "Dang tao bao cao..."
New-item logs/tong_hop.txt
Get-Content logs/studio.log | Select-String "status=404" >> logs/tong_hop.txt
Get-Content logs/studio.log | Select-String "status=500" | Measure-Object >> logs/tong_hop.txt
Write-Host "Hoan thanh"!