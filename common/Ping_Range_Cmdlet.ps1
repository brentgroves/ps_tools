$iprange = 80..85
Foreach ($ip in $iprange)
{
    $computer = "10.1.3.$ip"
    $status = Test-Connection $computer -count 1 -Quiet
    if (!$status)
    {
        $computer + " - available" 
    }
}