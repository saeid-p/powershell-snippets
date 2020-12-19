Clear-Host

# Get-Service |
# Where-Object Status -EQ 'Stopped' |
# Select-Object DisplayName, Status

# $ServiceList = Get-Service |
# Where-Object Status -EQ 'Stopped' |
# Select-Object DisplayName, Status

# $ServiceList

# $ServiceList | Out-File .\Services.txt
# Notepad .\MyFile.txt
# $ServiceList | Export-Csv .\MyFile.csv
# Get-Content .\Services.csv | more

# Get-Service -Name "*Print*"