# Get the versions of the .NET Framework installed on a Windows machine.
Get-ChildItem 'HKLM:\SOFTWARE\Microsoft\NET Framework Setup\NDP' -Recurse | 
  Get-ItemProperty -Name version -EA 0 |
  Where { $_.PSChildName -Match '^(?!S)\p{L}'} | 
  Select PSChildName, version

# .NET Core: https://docs.microsoft.com/en-us/dotnet/core/install/how-to-detect-installed-versions

# Get .NET Core version.
dotnet --version

# Get .NET Core installed sdks.
dotnet --list-sdks

# Get .NET Core runtimes.
dotnet --list-runtimes
