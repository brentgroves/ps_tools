@REM param 1 = start number, param 2 = increment by, param 3 = end number, -a give host name, -n number of pings to try.
@REM FOR /L %i in (80,1,81) do ping -a -n 1 10.1.3.%i | find /i "MSC"
