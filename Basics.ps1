# Booleans and if statement:
$MyTest = $true
If ($MyTest) {
    Write-Host "True"
}
ElseIf ($MyTest -eq $false) {
    Write-Host "True"
}
Else {
    Write-Host "False"
}

$MyList = 1,'Test',2 # List Definition
$MyList # You can print lists directly.
$MyList[0] # Access list elements by index.
$EmptyArray = @() # Empty list.
$EmptyArray += 1 # Add element to list.
$EmptyArray += 2
$EmptyArray # Output: 1, 2

# Define a hash object.
$HashObject = @{ Id = 1; Name = "Item 1"; }

$HashObject.Id = 5 # Modify property.

# Add new property.
$HashObject.Add("Test", 5)

# Add multiple properties.
$HashObject += @{ 
    Test1 = 1
    Test2 = 2
}

$OrderedList = [ordered]@{
    Item2 = 2
    Item1 = 1
}
$OrderedList.Add("Item0", 0)

try {
    Write-Host "Try section"
}
Catch {
    Write-Host $_.Exception.Message
}