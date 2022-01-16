$servers= Get-Content c:\temp\servers.txt
$number=0
while ($number -lt 61)
{
$server1 = $number 
$server2 = $number + 1
Restart-Computer -ComputerName $servers[$server1], $servers[$server2] -Force
write-host "rebootingservers" $servers[$server1], $servers[$server2]
Start-Sleep -Seconds 180
$number = $number +2
}
