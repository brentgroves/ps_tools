$filename = '*FindMe*.*'#you can use wildcards here for name and for extension
$searchinfolder = 'c:\Users\brent\Documents*'
# $filename = '*payroll*.*'#you can use wildcards here for name and for extension
# $searchinfolder = '\\pdc\Shared\Accounting*'
Get-ChildItem -Path $searchinfolder -Filter $filename -Recurse | %{$_.FullName}