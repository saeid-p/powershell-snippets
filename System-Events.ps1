Get-EventLog -LogName System | Get-Member

Get-EventLog -LogName system -newest 1000 |
Where-Object {$_.eventid -eq '1074'} |
Format-Table machinename, username, timegenerated -autosize