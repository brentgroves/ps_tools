## Create the PSCredential object
$credential = Get-Credential

## Connect to the remote computer passing the creds and creating a remote session
$cimSession = New-CimSession -ComputerName 10.1.2.148 -Credential $credential

## Use the session to query WMI and reference the Name property
(Get-CimInstance -Session $cimSession -ClassName Win32_ComputerSystem).Name