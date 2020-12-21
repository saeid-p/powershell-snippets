Get-ComputerInfo
Get-ComputerInfo -Property *memory*

Get-ChildItem ENV: # Get the environment varilable list.
$env:ComputerName # Get one environment varilable by name.

$PSVersionTable # Version of PowerShell

# Store Credential
$MyCredential = Get-Credential
$MyCredential

Get-Variable -Name 'My*' # Query current session variables.