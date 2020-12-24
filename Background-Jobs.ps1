# Read More: https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/get-job
$Job = Start-Job -ScriptBlock { Write-Host "This is test..." }
Get-Job # Returns all executed jobs in the currenet session
Get-Job -Id $Job.Id # Gets a job status by job id.
Get-Job -State "Completed" # Filter by state.

# Start a job from a file
Start-Job -FilePath "C:\Scripts\MyScript.ps1"

