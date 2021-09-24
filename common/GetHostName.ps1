## Create the pscredential object to pass to Invoke-Command
$credential = Get-Credential

## Run the command on the remote computer
Invoke-Command -ComputerName desktop-moto -ScriptBlock { [System.Net.Dns]::GetHostName() } -Credential $credential
Invoke-Command -ComputerName alb-utl4 -ScriptBlock { [System.Net.Dns]::GetHostName() } -Credential $credential