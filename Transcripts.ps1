# Recording all part of a session for debugging purposes.
Start-Transcript -path .\Transcripts\Transcript1.txt -Append
Get-service | Where-Object -Property Status -eq Stopped
Stop-transcript