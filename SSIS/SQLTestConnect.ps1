# https://mcpmag.com/articles/2018/12/10/test-sql-connection-with-powershell.aspx
#https://jonathancrozier.com/blog/connecting-to-sql-server-from-powershell
# $connection                  = New-Object System.Data.SqlClient.SqlConnection
# $connection.ConnectionString = "Server=BUSCHE-SQL;Integrated Security=true;Initial Catalog=Busche"
# $connection.Open()
# $connection.Close()

$ServerName="BUSCHE-SQL"
$DatabaseName="Busche ToolList"
$userName="sa"
$password="buschecnc1"


$connectionString = "Data Source={0};database={1};User ID={2};Password={3}" -f $ServerName,$DatabaseName,$userName,$password
#$connectionString = "Server=BUSCHE-SQL;Integrated Security=true;Initial Catalog=Busche"
$connection = New-Object System.Data.SqlClient.SqlConnection $connectionString
$connection.Open()
$connection.Close()

