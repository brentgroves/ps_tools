# https://riptutorial.com/powershell/example/25305/exit-codes
#https://www.softpost.org/windows-powershell-scripting/exit-status-of-the-script-in-windows-powershell/
#https://www.red-gate.com/simple-talk/sysadmin/powershell/how-to-use-parameters-in-powershell/
param ($hostname)
write-host "host name is $hostname" 
exit 0
# powershell.exe -NoProfile -ExecutionPolicy ByPass .\ExitValue.ps1 