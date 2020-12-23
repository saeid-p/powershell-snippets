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
Get-service | Select-Object Name,MachineName,Status -Unique

# You can chain commands to pass the result to other commands.
# Remember that results are always sent as a list, but are evaluated individually.
Get-Service | Select-Object Name,MachineName,Status | Get-Member

# A multiline command to filter.
Get-Service |
Where-Object Status -EQ "Stopped" |
Select-Object Name,MachineName |
Sort-Object -Property MachineName

# List commands.
Get-Service | 
Where-Object Status -EQ "Stopped" |
Select-Object -First 5
# Select-Object -Unique -Skip 5 -Last 5 -ExpandProperty Name

# Group Objects.
Get-Service | 
Group-Object Status |
Sort-Object Count -Descending

# === Variables ===
$ServiceList = Get-Service | Where-Object Status -EQ 'Stopped'

$ServiceList # Prints the content of the variable.
$ServiceList | Out-File .\Services.txt # Writes the results of a variable into a file.
$ServiceList | Export-Csv .\MyFile.csv # Writes the results of a variable into a file in CSV format.

$ServiceList | Format-Table # Prints the result in table format. Alias: FT

# -WhatIf shows the expected results of performing Start-Service on every items inside the varilable without executing it. 
$ServiceList | Start-Service -WhatIf

# Loop on object elements.
$ServiceList | ForEach-Object {
    Write-Output $_.Name # $_ refers to the current element.
}

# Loop on a list.
$MyNums = 1..20 # Creates a list of numbers from 1 to 20.
foreach ($MyNum in $MyNums) {
    Write-Output $MyNum
}

$MyVariable = "Test"
Write-Output "Parameter Value: $MyVariable" # Writes an output to the console.
Write-Output 'With single quotes, we can print the name of a variable: $MyVariable'

# Interacti with .NET objects
[System.Math]::Sqrt(36)

$Now = [System.DateTime]::Now
$Now.AddDays(5)