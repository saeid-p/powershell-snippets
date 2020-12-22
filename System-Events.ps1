Get-EventLog -LogName System | Get-Member

Get-EventLog -LogName system -newest 1000 |
Where-Object EventID -eq '1074' |
Format-Table machinename, username, timegenerated -autosize