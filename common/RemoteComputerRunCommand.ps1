Invoke-Command -ComputerName alb-utl4 -ScriptBlock { Get-ChildItem C:\ } -credential bgroves
Invoke-Command -ComputerName alb-utl4 -ScriptBlock { Test-Connection -ComputerName desktop-moto } -credential bgroves
Invoke-Command -ComputerName ALB-60409WJ-IT -ScriptBlock { Test-Connection -ComputerName MSCEDONHOSTBG } -credential bgroves
ALB-60409WJ-IT
Invoke-Command -ComputerName 10.0.0.22 -ScriptBlock { Get-ChildItem C:\ } -credential wjgle
Test-Connection -ComputerName alb-utl4