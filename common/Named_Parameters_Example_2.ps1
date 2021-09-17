#https://www.red-gate.com/simple-talk/sysadmin/powershell/how-to-use-parameters-in-powershell/
param ($servername, $envname)
write-host "If this script were really going to do something, it would do it on $servername in the $envname environment" 

# .\Named_Parameters_Example_2.ps1 HAL Odyssey 
# .\Named_Parameters_Example_2.ps1 -envname Odyssey -servername HAL 