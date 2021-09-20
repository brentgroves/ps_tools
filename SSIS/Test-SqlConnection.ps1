# https://mcpmag.com/articles/2018/12/10/test-sql-connection-with-powershell.aspx

param ($ServerName, $DatabaseName,$userName,$psw)

function Test-SqlConnection {
    param(
        [Parameter(Mandatory)]
        [string]$ServerName,

        [Parameter(Mandatory)]
        [string]$DatabaseName,

        [Parameter(Mandatory)]
        [string]$userName,

        [Parameter(Mandatory)]
        [string]$psw
    )

    $ErrorActionPreference = 'Stop'

    try {
        # write-host "Start"

        $connectionString = 'Data Source={0};database={1};User ID={2};Password={3}' -f $ServerName,$DatabaseName,$userName,$psw
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
$retcode = Test-SqlConnection -ServerName $ServerName -DatabaseName $DatabaseName -userName $userName -psw $psw
if ($retcode -eq $true) 
{
    exit 0
}else {
    exit 999
}
# Write-Host $retcode
# powershell.exe -NoProfile -ExecutionPolicy ByPass C:\SSIS\Test-SqlConnection.ps1 -ServerName 'busche-sql' -DatabaseName 'Busche ToolList' -userName 'sa' -psw 'buschecnc1'