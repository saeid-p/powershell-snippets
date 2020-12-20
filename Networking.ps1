# Shows all the firewall rules related to Remote Desktop.
$FirewallRules = Get-NetFirewallRule -Name *RemoteDesktop* | Format-Table

# Enables all firewall rules.
$FirewallRules | Set-NetFirewallRule -Enabled 'True' -WhatIf

Get-NetIPAddress # Get all network cards IP addresses
Get-NetIPConfiguration # Get all network devices

Get-DnsClient # Get network interfaces information.
Get-DnsClientCache # Local DNS cache content.
Get-DnsClientServerAddress

# Map a Network Drive
New-SMBmapping -localPath W: -RemotePath "\\DC01\Share"
Get-SmbMapping
Set-Location "w:\"
Get-ChildItem
Set-Location "c:\scripts\m3"

# Ping
Test-NetConnection -TraceRoute 4.2.2.1
Test-NetConnection -CommonTCPPort 80 -ComputerName 4.2.2.1
Test-NetConnection -CommonTCPPort HTTP -ComputerName 4.2.2.1
Test-NetConnection -CommonTCPPort HTTP -ComputerName "Google.Com"