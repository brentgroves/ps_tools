# https://mcpmag.com/articles/2018/12/10/test-sql-connection-with-powershell.aspx
# powershell.one
param ($server, $database,$user,$password,$port) 

function Test-SqlConnection {
    param(
        [Parameter(Mandatory)]
        [string]$server,

        [Parameter(Mandatory)]
        [string]$database,

        [Parameter(Mandatory)]
        [string]$user,

        [Parameter(Mandatory)]
        [string]$password,

        [string]$port
    )
# Causes error to throw exception
    $ErrorActionPreference = 'Stop'

    try {
        # write-host "Start"
        $serverPort = $server
        if($port -ne $null)
        {
            $serverPort += ',' + $port
        }
        $connectionString = 'Data Source={0};database={1};User ID={2};Password={3}' -f $serverPort,$database,$user,$password
        $sqlConnection = New-Object System.Data.SqlClient.SqlConnection $ConnectionString
        $sqlConnection.Open()
        ## This will run if the Open() method does not throw an exception
        # write-host "Success"
        # $true
        return $true
    } catch {
        # write-host "Fail"
        # $false
        return $false
    } finally {
        ## Close the connection when we're done
        $sqlConnection.Close()
    }
}
#  "if (Test-Path '" + @[User::TestFilePath] + "') {exit 0} else {exit 999}\
# Test-SqlConnection -ServerName 'busche-sql' -DatabaseName 'Busche ToolList' -userName 'sa' -psw 'buschecnc1'
if($null -ne $port)
{
    $retcode = Test-SqlConnection -server $server -database $database -user $user -password $password -port $port
} else {
    $retcode = Test-SqlConnection -server $server -database $database -user $user -password $password 
}

if ($retcode -eq $true) 
{
    exit 0
}else {
    exit 999
}
# Write-Host $retcode
# powershell.exe -NoProfile -ExecutionPolicy ByPass C:\SSIS\Test-SqlConnection.ps1 -ServerName 'busche-sql' -DatabaseName 'Busche ToolList' -userName 'sa' -psw 'buschecnc1'
# mgsqlmi.public.48d444e7f69b.database.windows.net 
# . 'c:\Users\bgroves\source\repos\ps_tools\SSIS\Test-SqlConnection.ps1' -ServerName 'mgsqlmi.public.48d444e7f69b.database.windows.net,3342' -DatabaseName 'mgdw' -userName 'mgadmin' -psw 'WeDontSharePasswords1!'