Clear-Host # Clears the terminal screen.

# Returns a list of available verbs.
Get-Verb -Verb Set
Get-Verb -Group Common

Get-Command -Name "Get-*Fire*" # Search command by name and wildcard query.

Get-Noun # Returns available nouns.
Get-Alias # Returns available alias list.

Get-Help Get-Service # Get help about a command.
Get-Help Get-Command

# Measure-Object returns some statistics about the result set.
Get-Service | Measure-Object
Get-Service -Name "*Print*" # Search services by name and wildcard query.

# Returns a list of properties, methods, and other members in an object.
Get-service | Get-Member

# Select-Object filters the result set from the prvious command.
Get-service | Select-Object Name,MachineName,Status

# You can chain commands to pass the result to other commands.
# Remember that results are always sent as a list, but are evaluated individually.
Get-Service | Select-Object Name,MachineName,Status | Get-Member

# A multiline command to filter .
Get-Service |
Where-Object Status -EQ "Stopped" |
Select-Object Name,MachineName |
Sort-Object -Property MachineName

# === Variables ===
$ServiceList = Get-Service | Where-Object Status -EQ 'Stopped' | Select-Object DisplayName, Status

$ServiceList # Prints the content of the variable.
$ServiceList | Out-File .\Services.txt # Writes the results of a variable into a file.
$ServiceList | Export-Csv .\MyFile.csv # Writes the results of a variable into a file in CSV format.

$ServiceList | Format-Table # Prints the result in table format. Alias: FT

# -WhatIf shows the expected results of performing Start-Service on every items inside the varilable without executing it. 
$ServiceList | Start-Service -WhatIf

$MyVariable = "Test"
Write-Output "This is a test output. Parameter: $MyVariable" # Write an output to the console.
Write-Output 'With single quotes, we can print the name of a variable: $MyVariable'