# Usage: .\Function.ps1 -ProcessNames 'notepad', 'code' -Extension 'ps1'
param (
    [Parameter(Mandatory=$True)]
    [string[]]$ProcessNames,
    [string]$Extension = "txt"
)

 $CurrentFolderFiles = Get-ChildItem -Path ".\" | 
 Where-Object Name -Like "*.${Extension}"

foreach ($ProcessName in $ProcessNames) {    
    foreach ($File in $CurrentFolderFiles) {
        Start-Process $ProcessName $File
        Write-Host $File.FullName
    }    
}