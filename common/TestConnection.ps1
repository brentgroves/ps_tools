# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/test-connection?view=powershell-7.1
if (Test-Connection -TargetName Server01 -Quiet) { New-PSSession -ComputerName Server01 }