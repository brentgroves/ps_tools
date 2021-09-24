$ping = New-Object System.Net.Networkinformation.Ping
80..85 | ForEach-Object { $ping.send("10.1.3.$_") }
# 80..85 | ForEach-Object { $ping.send("10.1.3.$_") | Select-Object address, status }