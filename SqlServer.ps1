# Learn more: https://docs.microsoft.com/en-us/powershell/module/sqlserver/invoke-sqlcmd

$ConnectionString = "Data Source=.;Initial Catalog=Master;Integrated Security=True"
$Query1 = "SELECT * FROM sys.databases"
Invoke-Sqlcmd -Query $Query1 -ConnectionString $ConnectionString

$Query2 = "SELECT GETDATE() AS [TimeOfQuery]"
Invoke-Sqlcmd -ServerInstance "." -Database "Master" -Username ="Test" -Password "Test" -Query $Query2