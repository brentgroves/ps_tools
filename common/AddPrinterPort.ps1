# http://10.1.2.216:3910/

$portName = "IP_10.1.2.216"
$checkPortExists = Get-PrinterPort -Name $portName -ErrorAction SilentlyContinue 
if(-not $checkPortExists)
{
    Add-PrinterPort -Name $portName -PrinterHostAddress "10.1.2.216"
}
# This is not complete the https://www.action1.com/how-to-install-and-remove-printer-with-powershell-on-windows/
[Execute SQL Task] Error: Executing the query "select ? = AlbionLastSuccess from mgdw.MSC.Import ..." failed with the following error: 
"Error HRESULT E_FAIL has been returned from a call to a COM component.". Possible failure reasons: Problems with the query,
 "ResultSet" property not set correctly, parameters not set correctly, or connection not established correctly.

