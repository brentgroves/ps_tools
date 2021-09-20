# https://mcpmag.com/articles/2018/12/10/test-sql-connection-with-powershell.aspx
# https://docs.microsoft.com/en-us/powershell/module/sqlserver/get-sqldatabase?view=sqlserver-ps
# https://jonathancrozier.com/blog/connecting-to-sql-server-from-powershell
# $connectionString = 'Data Source={0};database={1};User ID={2};Password={3}' -f $ServerName,$DatabaseName,$userName,$password


#https://jonathancrozier.com/blog/connecting-to-sql-server-from-powershell
#$connection                  = New-Object System.Data.SqlClient.SqlConnection
# $connection.ConnectionString = "Server=BUSCHE-SQL;Integrated Security=true;Initial Catalog=Busche"
# $connection.Open()
# $connection.Close()

$ServerName="BUSCHE-SQL"
$DatabaseName="Busche ToolList"
$userName="sa"
$password="buschecnc1"


$connectionString = "Data Source={0};database={1};User ID={2};Password={3}" -f $ServerName,$DatabaseName,$userName,$password
$connection = New-Object System.Data.SqlClient.SqlConnection $connectionString
$connection.Open()
$connection.Close()

# $command             = $connection.CreateCommand()
# $command.CommandText = "SELECT name, database_id, name FROM sys.databases"
# # $command.CommandText = "SELECT name, database_id, physical_database_name FROM sys.databases"

# $dataSet = New-Object System.Data.DataSet
# $adapter = New-Object System.Data.SqlClient.SqlDataAdapter $command
# $adapter.Fill($dataSet) | Out-Null

# $dataSet.Tables
# powershell.exe -NoProfile -ExecutionPolicy ByPass .\SQLTestConnect.ps1 
