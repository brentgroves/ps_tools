# https://www.andersrodland.com/working-with-odbc-connections-in-powershell/
param ($dsn, $user,$password) 

Function Test-ODBCConnection {
    # [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$dsn,

        [Parameter(Mandatory)]
        [string]$user,

        [Parameter(Mandatory)]
        [string]$password
    )
    $conn = new-object system.data.odbc.odbcconnection
    # $conn.connectionstring = "(DSN=$DSN)"
    $conn.connectionstring = 'DSN={0};UID={1};Password={2}' -f $dsn,$user,$password
    # $conn.connectionstring = "DSN=$dsn;Uid=$user;Password=$password;"  Works
    # $conn.connectionstring = "DSN=Plex;UID=mg.odbcalbion;PWD=Mob3xalbion;"  Works
    # Causes error to throw exception
    $ErrorActionPreference = 'Stop'
    # Write-Host "Message: " $ds.Tables[0];

    try {
        $ret = $conn.Open() # plex returns $null when success and "" when fail
        # If you want to do a query:
        # $cmd = New-object System.Data.Odbc.OdbcCommand('select top 10 * from part_v_part',$conn)
        # $ds = New-Object System.Data.DataSet
        # (New-Object System.Data.Odbc.OdbcDataAdapter($cmd)).fill($ds)|out-null
        $conn.close()
        # Write-Host "Statistic: " $ds.Tables[0].Rows[0].ItemArray[0];
        $true
    } catch {
        Write-Host $_.Exception.Message
        $false
    }
}

$retcode = Test-ODBCConnection -dsn $dsn -user $user -password $password 

if ($retcode -eq $true) 
{
    exit 0
}else {
    exit 999
}
# Write-Host $retcode
# powershell.exe -NoProfile -ExecutionPolicy ByPass C:\SSIS\Test-ODBCConnection.ps1 -dsn 'Plex' -user 'mg.odbcalbion' -password 'Mob3xalbion'
