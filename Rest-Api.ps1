Invoke-RestMethod "http://numbersapi.com/4" # Simple Api Call

# Complete Api Call:

$token = "#Token#"
$Header = @{
    "authorization" = "Bearer $token"
}

$Body = @{
    Prop1 = "Barbara"
    Prop2 = "Pizza"
}
 
$Parameters = @{
    Method = "POST"
    Uri =  "https://test.com/api/resource"
    Body = ($Body | ConvertTo-Json)
    ContentType = "application/json"    
}
Invoke-RestMethod @Parameters -Headers $Header