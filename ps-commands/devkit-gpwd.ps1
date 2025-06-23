# Get the path to the devkit

$devkitPath = (Get-Item $PSScriptRoot).Parent

Write-Output $devkitPath
