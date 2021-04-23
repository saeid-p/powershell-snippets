# Get the versions of the .NET Framework installed on a Windows machine.
Get-ChildItem 'HKLM:\SOFTWARE\Microsoft\NET Framework Setup\NDP' -Recurse | 
  Get-ItemProperty -Name version -EA 0 |
  Where { $_.PSChildName -Match '^(?!S)\p{L}'} | 
  Select PSChildName, version
