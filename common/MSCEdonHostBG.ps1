# Invoke-Command -ComputerName ALB-60409WJ-IT -ScriptBlock { Test-Connection -ComputerName MSCEDONHOSTBG } -credential bgroves?
# Invoke-Command -ComputerName ALB-60409WJ-IT -ScriptBlock { Get-DnsClientServerAddress } -credential bgroves | Select-Object ServerAddress
Invoke-Command -ComputerName ALB-60409WJ-IT -ScriptBlock { Get-NetIPAddress } -credential bgroves