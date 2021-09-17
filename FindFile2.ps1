$filename = '*te*.*'#you can use wildcards here for name and for extension
#$searchinfolder = 'c:\Users\brent\Documents*'
$searchinfolder = 'c:\SSIS\Data'
# $filename = '*payroll*.*'#you can use wildcards here for name and for extension
# $searchinfolder = '\\pdc\Shared\Accounting*'
Get-ChildItem -Path $searchinfolder -Filter $filename -Recurse | ForEach-Object{$_.FullName}